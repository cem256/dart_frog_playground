import 'package:backend/core/constants/database_constants.dart';
import 'package:backend/core/database/database.dart';
import 'package:backend/core/exceptions/exceptions.dart';
import 'package:backend/core/utils/password_utils.dart';
import 'package:backend/core/utils/user_id_utils.dart';
import 'package:models/models.dart';
import 'package:mongo_dart/mongo_dart.dart';

class RegisterRepository {
  RegisterRepository({required this.databaseClient});

  final DatabaseClient databaseClient;

  Future<UserModel> register(RegisterRequestModel request) async {
    try {
      if (databaseClient.db != null && databaseClient.db!.isConnected) {
        final userCollection = databaseClient.db!.collection(DatabaseConstants.usersCollection);
        // check if the user already registered
        final user = await userCollection.findOne(where.eq('email', request.email));
        if (user != null) {
          throw UserExistsException();
        } else {
          // if it is not registered encrypt the password and insert it to the users table
          final userModel = UserModel(
            userId: UserIDUtils.generateUserID(),
            email: request.email,
            password: PasswordUtils.encryptPassword(request.password),
          );

          final response = await userCollection.insertOne(userModel.toJson());
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
