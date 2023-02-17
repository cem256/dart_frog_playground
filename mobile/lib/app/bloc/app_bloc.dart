import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jwt_decode/jwt_decode.dart';
import 'package:mobile/core/cache/cache_client.dart';

part 'app_bloc.freezed.dart';
part 'app_event.dart';
part 'app_state.dart';

class AppBloc extends Bloc<AppEvent, AppState> {
  AppBloc({required CacheClient cacheClient})
      : _cacheClient = cacheClient,
        super(const _Unauthenticated()) {
    on<_CheckAuthState>(_onCheckAuthState);
    on<_Logout>(_onLogout);
  }

  final CacheClient _cacheClient;

  Future<void> _onCheckAuthState(_CheckAuthState event, Emitter<AppState> emit) async {
    final accessToken = await _cacheClient.getAccessToken();
    if (accessToken != null && !Jwt.isExpired(accessToken)) {
      emit(const AppState.authenticated());
    } else {
      emit(const AppState.unauthenticated());
    }
  }

  Future<void> _onLogout(_Logout event, Emitter<AppState> emit) async {
    await _cacheClient.deleteAccessToken();
    emit(const AppState.unauthenticated());
  }
}
