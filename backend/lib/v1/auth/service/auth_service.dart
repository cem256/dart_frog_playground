import 'package:models/models.dart';

abstract class AuthService {
  Future<LoginResponseModel> login(LoginRequestModel request);
  Future<void> register(RegisterRequestModel request);
}
