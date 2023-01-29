import 'package:formz/formz.dart';

enum EmailInputError {
  inValidEmail,
}

class Email extends FormzInput<String, EmailInputError> {
  const Email.pure() : super.pure('');

  const Email.dirty([super.value = '']) : super.dirty();
  @override
  EmailInputError? validator(String value) {
    return RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$').hasMatch(value.trim()) ? null : EmailInputError.inValidEmail;
  }
}
