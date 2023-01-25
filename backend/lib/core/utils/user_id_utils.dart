import 'package:uuid/uuid.dart';

class UserIDUtils {
  UserIDUtils._();

  static String generateUserID() {
    return const Uuid().v4();
  }
}
