import 'package:models/models.dart';

abstract class AuthRepository {
  Future<LoginResponseModel> login(LoginRequestModel request);
  Future<void> register(RegisterRequestModel request);
}
