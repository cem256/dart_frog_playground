part of 'register_bloc.dart';

@freezed
class RegisterEvent with _$RegisterEvent {
  const factory RegisterEvent.emailChanged(String email) = _EmailChanged;
  const factory RegisterEvent.passwordChanged(String password) = _PasswordChanged;
  const factory RegisterEvent.confirmPasswordChanged(String confirmPassword) = _ConfirmPasswordChanged;
  const factory RegisterEvent.passwordVisibilityChanged() = _PasswordVisibilityChanged;
  const factory RegisterEvent.formSubmitted() = _FormSubmitted;
}
