import 'package:dio/dio.dart';
import 'package:mobile/core/cache/cache_client.dart';

class AuthInterceptor extends Interceptor {
  @override
  Future<void> onRequest(RequestOptions options, RequestInterceptorHandler handler) async {
    final cacheClient = CacheClient.instance;
    final accessToken = await cacheClient.getAccessToken();

    if (accessToken != null) {
      options.headers['Authorization'] = 'Bearer $accessToken';
    }
    super.onRequest(options, handler);
  }
}
