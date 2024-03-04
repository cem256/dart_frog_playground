import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:form_inputs/form_inputs.dart';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mobile/feature/auth/register/service/register_service.dart';
import 'package:models/models.dart';

part 'register_event.dart';
part 'register_state.dart';
part 'register_bloc.freezed.dart';

class RegisterBloc extends Bloc<RegisterEvent, RegisterState> {
  RegisterBloc({required RegisterService registerService})
      : _registerService = registerService,
        super(const RegisterState()) {
    on<_EmailChanged>(_onEmailChanged);
    on<_PasswordChanged>(_onPasswordChanged);
    on<_ConfirmPasswordChanged>(_onConfirmPasswordChanged);
    on<_PasswordVisibilityChanged>(_onPasswordVisibilityChanged);
    on<_FormSubmitted>(_onFormSubmitted);
  }

  final RegisterService _registerService;

  void _onEmailChanged(_EmailChanged event, Emitter<RegisterState> emit) {
    final email = Email.dirty(event.email);
    emit(state.copyWith(email: email, status: Formz.validate([email, state.password])));
  }

  void _onPasswordChanged(_PasswordChanged event, Emitter<RegisterState> emit) {
    final password = Password.dirty(event.password);
    final confirmPassword = ConfirmPassword.dirty(
      password: password.value,
      value: state.confirmPassword.value,
    );
    emit(
      state.copyWith(
        password: password,
        status: Formz.validate([
          state.email,
          password,
          confirmPassword,
        ]),
      ),
    );
  }

  void _onConfirmPasswordChanged(_ConfirmPasswordChanged event, Emitter<RegisterState> emit) {
    final confirmPassword = ConfirmPassword.dirty(
      password: state.password.value,
      value: event.confirmPassword,
    );

    emit(
      state.copyWith(
        confirmPassword: confirmPassword,
        status: Formz.validate([
          state.email,
          state.password,
          confirmPassword,
        ]),
      ),
    );
  }

  void _onPasswordVisibilityChanged(_PasswordVisibilityChanged event, Emitter<RegisterState> emit) {
    emit(state.copyWith(isPasswordObscured: !state.isPasswordObscured));
  }

  Future<void> _onFormSubmitted(_FormSubmitted event, Emitter<RegisterState> emit) async {
    if (!state.status.isValidated) return;
    emit(state.copyWith(status: FormzStatus.submissionInProgress));
    final request = RegisterRequestModel(email: state.email.value, password: state.password.value);
    final response = await _registerService.register(request: request);

    response.fold(
      (failure) => emit(
        state.copyWith(
          status: FormzStatus.submissionFailure,
          message: failure.message,
        ),
      ),
      (success) => emit(
        state.copyWith(
          status: FormzStatus.submissionSuccess,
        ),
      ),
    );
  }
}
