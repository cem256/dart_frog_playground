import 'package:backend/api/v1/auth/register/repository/register_repository.dart';
import 'package:backend/api/v1/auth/register/service/register_service.dart';
import 'package:backend/core/database/database.dart';
import 'package:dart_frog/dart_frog.dart';

Handler middleware(Handler handler) {
  return handler.use(registerServiceProvider()).use(registerRepositoryProvider());
}

Middleware registerRepositoryProvider() {
  return provider<RegisterRepository>(
    (context) => RegisterRepository(
      databaseClient: context.read<DatabaseClient>(),
    ),
  );
}

Middleware registerServiceProvider() {
  return provider<RegisterService>(
    (context) => RegisterService(
      registerRepository: context.read<RegisterRepository>(),
    ),
  );
}
