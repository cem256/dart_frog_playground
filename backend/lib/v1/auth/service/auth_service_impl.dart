import 'package:backend/v1/auth/repository/auth_repository.dart';
import 'package:backend/v1/auth/service/auth_service.dart';
import 'package:models/models.dart';

class AuthServiceImpl implements AuthService {
  AuthServiceImpl({required this.authRepository});

  final AuthRepository authRepository;
  @override
  Future<LoginResponseModel> login(LoginRequestModel request) {
    // TODO: implement login
    throw UnimplementedError();
  }

  @override
  Future<void> register(RegisterRequestModel request) {
    // TODO: implement register
    throw UnimplementedError();
  }
}
