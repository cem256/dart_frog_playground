import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:mobile/feature/profile/service/profile_service.dart';
import 'package:models/models.dart';

part 'profile_event.dart';
part 'profile_state.dart';
part 'profile_bloc.freezed.dart';

class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  ProfileBloc({required ProfileService profileService})
      : _profileService = profileService,
        super(const ProfileState.initial()) {
    on<_FetchProfile>(_onFetchProfile);
  }

  final ProfileService _profileService;

  Future<void> _onFetchProfile(_FetchProfile event, Emitter<ProfileState> emit) async {
    emit(const ProfileState.loading());
    final response = await _profileService.fetchProfile();

    response.fold(
      (failure) => emit(
        ProfileState.failure(failure.message),
      ),
      (user) => emit(
        ProfileState.success(user: user),
      ),
    );
  }
}
