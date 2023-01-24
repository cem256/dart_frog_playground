import 'package:backend/core/failures/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:models/models.dart';

abstract class AuthService {
  Future<LoginResponseModel> login(LoginRequestModel request);
  Future<Either<Failure, UserModel>> register(RegisterRequestModel request);
}
