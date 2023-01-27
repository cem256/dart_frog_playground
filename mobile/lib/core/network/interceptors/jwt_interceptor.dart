import 'package:dio/dio.dart';
import 'package:mobile/core/cache/cache_client.dart';

import 'package:mobile/locator.dart';

class JwtInterceptor extends Interceptor {
  @override
  Future<void> onRequest(RequestOptions options, RequestInterceptorHandler handler) async {
    final cacheClient = getIt<CacheClient>();
    final accessToken = await cacheClient.getAccessToken();
    if (accessToken != null) {
      options.headers['Authorization'] = 'Bearer $accessToken';
    }

    handler.next(options);
  }
}
