import 'package:get_it/get_it.dart';
import 'package:mobile/app/bloc/app_bloc.dart';
import 'package:mobile/core/cache/cache_client.dart';
import 'package:mobile/core/network/network_client.dart';

import 'package:mobile/feature/auth/login/presentation/bloc/login_bloc.dart';
import 'package:mobile/feature/auth/login/repository/login_repository.dart';
import 'package:mobile/feature/auth/login/service/login_service.dart';

import 'package:mobile/feature/auth/register/presentation/bloc/bloc/register_bloc.dart';
import 'package:mobile/feature/auth/register/repository/register_repository.dart';
import 'package:mobile/feature/auth/register/service/register_service.dart';
import 'package:mobile/feature/profile/presentation/bloc/bloc/profile_bloc.dart';
import 'package:mobile/feature/profile/repository/profile_repository.dart';
import 'package:mobile/feature/profile/service/profile_service.dart';

// Global service locator
final getIt = GetIt.instance;

void initServices() {
  getIt
    // Auth
    ..registerFactory(
      () => AppBloc(
        cacheClient: getIt(),
      ),
    )
    // Login
    ..registerFactory(
      () => LoginBloc(
        loginService: getIt(),
      ),
    )
    ..registerLazySingleton<LoginService>(
      () => LoginService(
        loginRepository: getIt(),
      ),
    )
    ..registerLazySingleton<LoginRepository>(
      () => LoginRepository(
        networkClient: getIt(),
        cacheClient: getIt(),
      ),
    )
    // Register
    ..registerFactory(
      () => RegisterBloc(
        registerService: getIt(),
      ),
    )
    ..registerLazySingleton<RegisterService>(
      () => RegisterService(
        registerRepository: getIt(),
      ),
    )
    ..registerLazySingleton<RegisterRepository>(
      () => RegisterRepository(
        networkClient: getIt(),
      ),
    )
    // Profile
    ..registerFactory<ProfileBloc>(
      () => ProfileBloc(
        profileService: getIt(),
      ),
    )
    ..registerLazySingleton<ProfileService>(
      () => ProfileService(
        profileRepository: getIt(),
      ),
    )
    ..registerLazySingleton<ProfileRepository>(
      () => ProfileRepository(
        networkClient: getIt(),
      ),
    )
    // Cache
    ..registerLazySingleton<CacheClient>(
      CacheClient.new,
    )
    // Network
    ..registerLazySingleton<NetworkClient>(
      NetworkClient.new,
    );
}
