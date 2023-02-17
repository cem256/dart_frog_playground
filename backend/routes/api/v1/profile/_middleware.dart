import 'package:backend/api/v1/profile/repository/profile_repository.dart';
import 'package:backend/api/v1/profile/service/profile_service.dart';
import 'package:backend/core/database/database.dart';
import 'package:dart_frog/dart_frog.dart';

Handler middleware(Handler handler) {
  return handler.use(profileServiceProvider()).use(profileRepositoryProvider());
}

Middleware profileRepositoryProvider() {
  return provider<ProfileRepository>(
    (context) => ProfileRepository(
      databaseClient: context.read<DatabaseClient>(),
    ),
  );
}

Middleware profileServiceProvider() {
  return provider<ProfileService>(
    (context) => ProfileService(
      profileRepository: context.read<ProfileRepository>(),
    ),
  );
}
