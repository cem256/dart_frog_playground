import 'package:backend/core/constants/jwt_constants.dart';
import 'package:dart_jsonwebtoken/dart_jsonwebtoken.dart';

class JWTUtils {
  JWTUtils._();

  static String generateAccessToken(Map<String, dynamic> payload) {
    final jwt = JWT(
      payload,
    );
    return jwt.sign(
      SecretKey(JWTConstants.accesssTokenSecretKey),
      expiresIn: const Duration(minutes: 1),
    );
  }

  static bool verifyAccessToken(String accessToken) {
    try {
      JWT.verify(accessToken, SecretKey(JWTConstants.accesssTokenSecretKey));
      return true;
    } catch (_) {
      return false;
    }
  }

  static String generateRefreshToken(Map<String, dynamic> payload) {
    final jwt = JWT(
      payload,
    );
    return jwt.sign(
      SecretKey(JWTConstants.refreshTokenSecretKey),
      expiresIn: const Duration(hours: 1),
    );
  }

  static bool verifyRefreshToken(String refreshToken) {
    try {
      JWT.verify(refreshToken, SecretKey(JWTConstants.refreshTokenSecretKey));
      return true;
    } catch (_) {
      return false;
    }
  }
}
