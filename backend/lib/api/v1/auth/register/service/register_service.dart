import 'package:backend/api/v1/auth/register/repository/register_repository.dart';
import 'package:backend/core/exceptions/exceptions.dart';
import 'package:backend/core/failures/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:models/models.dart';

class RegisterService {
  RegisterService({required this.registerRepository});

  final RegisterRepository registerRepository;

  Future<Either<Failure, UserModel>> register(RegisterRequestModel request) async {
    try {
      final user = await registerRepository.register(request);
      return right(user);
    } on UserAlreadyRegisteredException catch (_) {
      return left(const Failure.userAlreadyRegisteredFailure());
    } on DataInsertException catch (_) {
      return left(const Failure.dataInsertFailure());
    } on DatabaseConnectionException catch (_) {
      return left(const Failure.databaseConnectionFailure());
    } catch (_) {
      return left(const Failure());
    }
  }
}
