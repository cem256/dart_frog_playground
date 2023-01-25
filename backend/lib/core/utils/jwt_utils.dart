import 'package:backend/core/constants/jwt_constants.dart';
import 'package:dart_jsonwebtoken/dart_jsonwebtoken.dart';

class JWTUtils {
  JWTUtils._();

  static String generateAccessToken({required String userId}) {
    final jwt = JWT({
      'userId': userId,
    });
    return jwt.sign(
      SecretKey(JWTConstants.accesssTokenSecretKey),
      expiresIn: const Duration(minutes: 1),
    );
  }

  static bool verifyAccessToken({required String accessToken}) {
    try {
      JWT.verify(accessToken, SecretKey(JWTConstants.accesssTokenSecretKey));
      return true;
    } catch (_) {
      return false;
    }
  }

  static String getUserId({required JWT accessToken}) {
    // ignore: avoid_dynamic_calls
    return accessToken.payload['userId'] as String;
  }
}
