import 'package:formz/formz.dart';

enum PasswordInputError {
  weakPassword,
}

class Password extends FormzInput<String, PasswordInputError> {
  const Password.pure() : super.pure('');

  const Password.dirty([super.value = '']) : super.dirty();
  @override
  PasswordInputError? validator(String value) {
    if (value.trim().length < 8) {
      return PasswordInputError.weakPassword;
    }
    return null;
  }
}
