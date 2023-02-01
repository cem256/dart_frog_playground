import 'package:formz/formz.dart';

enum ConfirmPasswordError {
  invalid,
}

class ConfirmPassword extends FormzInput<String, ConfirmPasswordError> {
  const ConfirmPassword.pure({this.password = ''}) : super.pure('');

  const ConfirmPassword.dirty({required this.password, String value = ''}) : super.dirty(value);

  final String password;

  @override
  ConfirmPasswordError? validator(String? value) {
    return password == value ? null : ConfirmPasswordError.invalid;
  }
}
