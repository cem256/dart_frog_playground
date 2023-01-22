import 'package:backend/v1/auth/model/login/login_request_model.dart';
import 'package:backend/v1/auth/model/login/login_response_model.dart';
import 'package:backend/v1/auth/model/register/register_request_model.dart';

abstract class AuthService {
  Future<LoginResponseModel> login(LoginRequestModel request);
  Future<void> register(RegisterRequestModel request);
}
