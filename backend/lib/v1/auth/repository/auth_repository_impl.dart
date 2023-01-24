import 'package:backend/core/config/database.dart';
import 'package:backend/core/constants/database_constants.dart';
import 'package:backend/core/exceptions/exceptions.dart';
import 'package:backend/core/utils/jwt_utils.dart';
import 'package:backend/core/utils/password_utils.dart';
import 'package:backend/v1/auth/repository/auth_repository.dart';
import 'package:models/models.dart';
import 'package:mongo_dart/mongo_dart.dart';

class AuthRepositoryImpl implements AuthRepository {
  AuthRepositoryImpl({required this.databaseClient});

  final DatabaseClient databaseClient;

  @override
  Future<LoginResponseModel> login(LoginRequestModel request) async {
    try {
      if (databaseClient.db != null && databaseClient.db!.isConnected) {
        final userCollection = databaseClient.db!.collection(DatabaseConstants.usersCollection);
        final password = PasswordUtils.encryptPassword(request.password);
        // Check if the user credentials are valid or not.
        final userResponse = await userCollection.findOne(
          where.eq('email', request.email).and(where.eq('password', password)),
        );
        if (userResponse == null) {
          throw InvalidCredentialsException();
        } else {
          // If the credentials are correct generate access and refresh token and then return LoginResponseModel
          final accessToken = JWTUtils.generateAccessToken({});
          final refreshToken = JWTUtils.generateRefreshToken({});
          final user = UserModel.fromJson(userResponse);
          final loginResponseModel = LoginResponseModel(
            user: user,
            accessToken: accessToken,
            refreshToken: refreshToken,
          );

          return loginResponseModel;
        }
      } else {
        throw DatabaseConnectionException();
      }
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<UserModel> register(RegisterRequestModel request) async {
    try {
      if (databaseClient.db != null && databaseClient.db!.isConnected) {
        final userCollection = databaseClient.db!.collection(DatabaseConstants.usersCollection);
        // check if the user already registered
        final user = await userCollection.findOne(where.eq('email', request.email));
        if (user != null) {
          throw UserAlreadyRegisteredException();
        } else {
          // if it is not registered encrypt the password and insert it to the users table
          final user = request.copyWith(password: PasswordUtils.encryptPassword(request.password));
          final response = await userCollection.insertOne(user.toJson());
          if (response.isSuccess) {
            return UserModel.fromJson(response.document!);
          } else {
            throw DataInsertException();
          }
        }
      } else {
        throw DatabaseConnectionException();
      }
    } catch (e) {
      rethrow;
    }
  }
}
