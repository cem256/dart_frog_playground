import 'package:backend/core/config/database.dart';
import 'package:backend/v1/auth/repository/auth_repository.dart';
import 'package:backend/v1/auth/repository/auth_repository_impl.dart';
import 'package:backend/v1/auth/service/auth_service.dart';
import 'package:backend/v1/auth/service/auth_service_impl.dart';
import 'package:dart_frog/dart_frog.dart';

Handler middleware(Handler handler) {
  return handler.use(authRepositoryProvider()).use(authServiceProvider());
}

Middleware authRepositoryProvider() {
  return provider<AuthRepository>(
    (context) => AuthRepositoryImpl(
      databaseClient: context.read<DatabaseClient>(),
    ),
  );
}

Middleware authServiceProvider() {
  return provider<AuthService>(
    (context) => AuthServiceImpl(
      authRepository: context.read<AuthRepositoryImpl>(),
    ),
  );
}
