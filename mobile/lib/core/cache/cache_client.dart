import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class CacheClient {
  CacheClient({required FlutterSecureStorage secureStorage}) : _secureStorage = secureStorage;

  final FlutterSecureStorage _secureStorage;
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
