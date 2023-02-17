import 'package:uuid/uuid.dart';

abstract class UserIDUtils {
  static String generateUserID() {
    return const Uuid().v4();
  }
}
