// Database:--------------------------------------------------------------------
class DatabaseConnectionException implements Exception {
  static const String message = "We're having trouble connecting to our servers.";
}

class DataInsertException implements Exception {
  static const String message = 'There was a problem saving your information.';
}

// User Account:----------------------------------------------------------------
class UserExistsException implements Exception {
  static const String message = 'Email already taken, try login or password recovery.';
}

class InvalidCredentialsException implements Exception {
  static const String message = 'Sorry, the email or password you entered is incorrect.';
}

// Unkown :---------------------------------------------------------------------
class UnknownException implements Exception {
  static const String message = 'An unknown error occurred, please try again.';
}

class BadRequestException implements Exception {
  static const String message = 'There seems to be a problem with the information provided.';
}

class InternalServerErrorException implements Exception {
  InternalServerErrorException({required this.message});

  final String message;
}
