import 'package:backend/core/config/database.dart';
import 'package:backend/v1/auth/model/login/login_request_model.dart';
import 'package:backend/v1/auth/model/login/login_response_model.dart';
import 'package:backend/v1/auth/model/register/register_request_model.dart';
import 'package:backend/v1/auth/repository/auth_repository.dart';

class AuthRepositoryImpl implements AuthRepository {
  AuthRepositoryImpl({required this.databaseClient});

  final DatabaseClient databaseClient;

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
