import 'package:backend/api/v1/auth/repository/auth_repository_impl.dart';
import 'package:backend/api/v1/auth/service/auth_service_impl.dart';
import 'package:backend/core/config/database/database.dart';
import 'package:dart_frog/dart_frog.dart';

Handler middleware(Handler handler) {
  return handler.use(authServiceProvider()).use(authRepositoryProvider());
}

Middleware authRepositoryProvider() {
  return provider<AuthRepositoryImpl>(
    (context) => AuthRepositoryImpl(
      databaseClient: context.read<DatabaseClient>(),
    ),
  );
}

Middleware authServiceProvider() {
  return provider<AuthServiceImpl>(
    (context) => AuthServiceImpl(
      authRepository: context.read<AuthRepositoryImpl>(),
    ),
  );
}
