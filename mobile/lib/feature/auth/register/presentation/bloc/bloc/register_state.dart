part of 'register_bloc.dart';

@freezed
class RegisterState with _$RegisterState {
  const factory RegisterState({
    @Default(FormzStatus.pure) FormzStatus status,
    @Default(Email.pure()) Email email,
    @Default(Password.pure()) Password password,
    @Default(ConfirmPassword.pure()) ConfirmPassword confirmPassword,
    @Default(true) bool isPasswordObscured,
    String? message,
  }) = _RegisterState;
}
