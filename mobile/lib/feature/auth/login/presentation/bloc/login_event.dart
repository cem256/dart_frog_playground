part of 'login_bloc.dart';

@freezed
class LoginEvent with _$LoginEvent {
  const factory LoginEvent.emailChanged(String email) = _EmailChanged;
  const factory LoginEvent.passwordChanged(String password) = _PasswordChanged;
  const factory LoginEvent.passwordVisibilityChanged() = _PasswordVisibilityChanged;
  const factory LoginEvent.formSubmitted() = _FormSubmitted;
}
