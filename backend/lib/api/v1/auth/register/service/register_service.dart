import 'package:backend/api/v1/auth/register/repository/register_repository.dart';

import 'package:dartz/dartz.dart';
import 'package:exceptions/exceptions.dart';
import 'package:failure/failure.dart';
import 'package:models/models.dart';

class RegisterService {
  RegisterService({required this.registerRepository});

  final RegisterRepository registerRepository;

  Future<Either<Failure, UserModel>> register(RegisterRequestModel request) async {
    try {
      final user = await registerRepository.register(request);
      return right(user);
    } on UserExistsException catch (_) {
      return left(const Failure(message: UserExistsException.message));
    } on DataInsertException catch (_) {
      return left(const Failure(message: DataInsertException.message));
    } on DatabaseConnectionException catch (_) {
      return left(const Failure(message: DatabaseConnectionException.message));
    } catch (_) {
      return left(const Failure(message: UnknownException.message));
    }
  }
}
