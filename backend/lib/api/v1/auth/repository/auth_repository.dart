import 'package:models/models.dart';

abstract class AuthRepository {
  Future<LoginResponseModel> login(LoginRequestModel request);
  Future<UserModel> register(RegisterRequestModel request);
}
