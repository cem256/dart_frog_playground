import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class CacheClient {
  CacheClient._init() {
    _secureStorage = const FlutterSecureStorage();
  }

  static final CacheClient _instace = CacheClient._init();
  static CacheClient get instance => _instace;

  late final FlutterSecureStorage _secureStorage;
  final _key = 'accessToken';

  Future<String?> getAccessToken() async {
    final accessToken = await _secureStorage.read(key: _key);
    return accessToken;
  }

  Future<void> setAccessToken({required String accessToken}) async {
    await _secureStorage.write(key: _key, value: accessToken);
  }

  Future<void> deleteAccessToken() async {
    await _secureStorage.delete(key: _key);
  }
}
