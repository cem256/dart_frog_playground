import 'package:uuid/uuid.dart';

abstract final class UserIDUtils {
  UserIDUtils._();

  static String generateUserID() {
    return const Uuid().v4();
  }
}
