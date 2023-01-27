import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get_it/get_it.dart';
import 'package:mobile/core/cache/cache_client.dart';
import 'package:mobile/core/network/network_client.dart';

// Global service locator
final getIt = GetIt.instance;

void initServices() {
  getIt
    ..registerSingleton(
      const FlutterSecureStorage(),
    )
    ..registerSingleton(
      CacheClient(
        secureStorage: getIt<FlutterSecureStorage>(),
      ),
    )
    ..registerSingleton(
      Dio(),
    )
    ..registerSingleton(
      NetworkClient(
        dio: getIt<Dio>(),
      ),
    );
}
