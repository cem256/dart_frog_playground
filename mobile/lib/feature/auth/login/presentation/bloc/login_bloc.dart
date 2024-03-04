import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:form_inputs/form_inputs.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mobile/feature/auth/login/service/login_service.dart';
import 'package:models/models.dart';

part 'login_bloc.freezed.dart';
part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc({required LoginService loginService})
      : _loginService = loginService,
        super(const LoginState()) {
    on<_EmailChanged>(_onEmailChanged);
    on<_PasswordChanged>(_onPasswordChanged);
    on<_PasswordVisibilityChanged>(_onPasswordVisibilityChanged);
    on<_FormSubmitted>(_onFormSubmitted);
  }

  final LoginService _loginService;

  void _onEmailChanged(_EmailChanged event, Emitter<LoginState> emit) {
    final email = Email.dirty(event.email);
    emit(state.copyWith(email: email, status: Formz.validate([email, state.password])));
  }

  void _onPasswordChanged(_PasswordChanged event, Emitter<LoginState> emit) {
    final password = Password.dirty(event.password);
    emit(state.copyWith(password: password, status: Formz.validate([password, state.email])));
  }

  void _onPasswordVisibilityChanged(_PasswordVisibilityChanged event, Emitter<LoginState> emit) {
    emit(state.copyWith(isPasswordObscured: !state.isPasswordObscured));
  }

  Future<void> _onFormSubmitted(_FormSubmitted event, Emitter<LoginState> emit) async {
    if (!state.status.isValidated) return;
    emit(state.copyWith(status: FormzStatus.submissionInProgress));
    final request = LoginRequestModel(email: state.email.value, password: state.password.value);
    final response = await _loginService.login(request: request);

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
