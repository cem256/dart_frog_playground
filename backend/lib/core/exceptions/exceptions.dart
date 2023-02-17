// Database:--------------------------------------------------------------------
class DatabaseConnectionException implements Exception {
  final String message = "We're having trouble connecting to our servers.";
}

class DataInsertException implements Exception {
  final String message = 'There was a problem saving your information.';
}

// User Account:----------------------------------------------------------------
class UserExistsException implements Exception {
  final String message = 'Email already taken, try login or password recovery.';
}

class InvalidCredentialsException implements Exception {
  final String message = 'Sorry, the email or password you entered is incorrect.';
}

class NoUserFoundException implements Exception {
  final String message = 'No user found with given credentials.';
}

// Unkown :---------------------------------------------------------------------
class UnknownException implements Exception {
  static const String message = 'An unknown error occurred, please try again.';
}
