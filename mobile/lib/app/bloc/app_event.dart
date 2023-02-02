part of 'app_bloc.dart';

@freezed
class AppEvent with _$AppEvent {
  const factory AppEvent.checkAuthState() = _CheckAuthState;
  const factory AppEvent.logout() = _Logout;
}
