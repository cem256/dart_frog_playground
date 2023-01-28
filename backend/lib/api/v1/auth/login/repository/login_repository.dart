import 'package:backend/core/constants/database_constants.dart';
import 'package:backend/core/database/database.dart';
import 'package:backend/core/utils/jwt_utils.dart';
import 'package:backend/core/utils/password_utils.dart';
import 'package:exceptions/exceptions.dart';
import 'package:models/models.dart';
import 'package:mongo_dart/mongo_dart.dart';

class LoginRepository {
  LoginRepository({required this.databaseClient});

  final DatabaseClient databaseClient;

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
          // If the credentials are correct generate access and then return LoginResponseModel
          final user = UserModel.fromJson(userResponse);
          final accessToken = JWTUtils.generateAccessToken(userId: user.userId);

          final loginResponseModel = LoginResponseModel(
            accessToken: accessToken,
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
}
