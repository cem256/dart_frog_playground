import 'package:backend/core/constants/database_constants.dart';
import 'package:backend/core/database/database.dart';
import 'package:backend/core/exceptions/exceptions.dart';
import 'package:backend/core/utils/jwt_utils.dart';
import 'package:models/models.dart';
import 'package:mongo_dart/mongo_dart.dart';

class ProfileRepository {
  ProfileRepository({required this.databaseClient});

  final DatabaseClient databaseClient;

  Future<UserModel> getUserProfile(String accessToken) async {
    try {
      final userId = JWTUtils.getUserIdFromToken(accessToken: accessToken);

      if (databaseClient.db != null && databaseClient.db!.isConnected) {
        final userCollection = databaseClient.db!.collection(DatabaseConstants.usersCollection);
        // check if the user exists with given credentials
        final user = await userCollection.findOne(where.eq('userId', userId));
        if (user == null) {
          throw NoUserFoundException();
        } else {
          final userModel = UserModel.fromJson(user);
          return userModel;
        }
      } else {
        throw DatabaseConnectionException();
      }
    } catch (e) {
      rethrow;
    }
  }
}
