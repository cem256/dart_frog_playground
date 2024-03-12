import 'dart:convert';
import 'package:crypto/crypto.dart';

abstract class PasswordUtils {
  PasswordUtils._();

  static String hashPassword(String password) {
    final bytes = utf8.encode(password);
    final hash = sha256.convert(bytes);
    return hash.toString();
  }

  static bool verifyPassword(String password, String hashedPassword) {
    final inputHash = hashPassword(password);
    return inputHash == hashedPassword;
  }
}
