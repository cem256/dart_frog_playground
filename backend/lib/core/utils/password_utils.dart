import 'package:backend/core/constants/password_constants.dart';
import 'package:encrypt/encrypt.dart';

abstract class PasswordUtils {
  static String encryptPassword(String password) {
    final key = Key.fromUtf8(PasswordConstants.secretKey);
    final iv = IV.fromLength(16);

    final encrypter = Encrypter(AES(key));
    final encrypted = encrypter.encrypt(password.trim(), iv: iv);

    return encrypted.base64;
  }

  static String decryptPassword(String password) {
    final key = Key.fromUtf8(PasswordConstants.secretKey);
    final iv = IV.fromLength(16);

    final encrypter = Encrypter(AES(key));
    final decrypted = encrypter.decrypt64(password, iv: iv);

    return decrypted;
  }
}
