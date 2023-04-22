import 'dart:async';

import 'package:common/common.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tonight/domain/user_profile/user_profile_aggregator.dart';
import 'package:tonight/domain/user_profile/user_profile_model.dart';

part 'profile_bloc.freezed.dart';
part 'profile_event.dart';
part 'profile_state.dart';

const _photosPageSize = 9;

class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  final UserProfileAggregator _userProfileAggregator;

  ProfileBloc(this._userProfileAggregator) : super(ProfileState.initial()) {
    on<_ProfileLoaded>(_onUserProfileLoaded);
    on<_PhotosRefreshed>(_onPhotosRefreshed);
    on<_NextPhotosPageFetched>(
      _onNextPhotosPageFetched,
      transformer: throttleDroppable(),
    );
  }

  FutureOr<void> _onUserProfileLoaded(
    _ProfileLoaded event,
    Emitter<ProfileState> emit,
  ) async {
    emit(state.copyWith(initialStatus: CubitStatus.loading));
    await emit.forEach(
      _userProfileAggregator.getUserProfile(photosPageSize: _photosPageSize),
      onData: (result) => result.fold(
        (_) => state.copyWith(initialStatus: CubitStatus.failure),
        (profile) => state.copyWith(
          initialStatus: CubitStatus.success,
          userProfile: some(profile),
          hasPhotosReachedMax: profile.userPhotos.length != _photosPageSize,
        ),
      ),
    );
  }

  FutureOr<void> _onPhotosRefreshed(
    _PhotosRefreshed event,
    Emitter<ProfileState> emit,
  ) async {
    emit(state.copyWith(refreshPhotosStatus: CubitStatus.loading));
    final userProfile = state.userProfile.getOrCrash();
    final result = await _userProfileAggregator.refreshUserPhotos(
      pageSize: _photosPageSize,
    );
    result.fold(
      (_) {
        emit(state.copyWith(refreshPhotosStatus: CubitStatus.failure));
        // TODO - add translations
        _showSnackbarMessage(emit, 'Failed to refresh photos');
      },
      (photos) => emit(
        state.copyWith(
          userProfile: some(userProfile.copyWith(userPhotos: photos)),
          hasPhotosReachedMax: photos.length != _photosPageSize,
          refreshPhotosStatus: CubitStatus.success,
        ),
      ),
    );
  }

  FutureOr<void> _onNextPhotosPageFetched(
    _NextPhotosPageFetched event,
    Emitter<ProfileState> emit,
  ) async {
    if (state.hasPhotosReachedMax) return;
    emit(state.copyWith(nextPagePhotosStatus: CubitStatus.loading));
    final userProfile = state.userProfile.getOrCrash();
    final result = await _userProfileAggregator.getNextPageOfUserPhotos(
      lastPhoto: userProfile.userPhotos.last,
      photosPageSize: _photosPageSize,
    );
    result.fold(
      (failure) => emit(
        state.copyWith(nextPagePhotosStatus: CubitStatus.failure),
      ),
      (photos) => emit(
        state.copyWith(
          nextPagePhotosStatus: CubitStatus.success,
          userProfile: some(
            userProfile.copyWith(
              userPhotos: [...userProfile.userPhotos, ...photos],
            ),
          ),
          hasPhotosReachedMax: photos.length != _photosPageSize,
        ),
      ),
    );
  }

  _showSnackbarMessage(Emitter<ProfileState> emit, String message) {
    emit(state.copyWith(snackbarMessage: some(message)));
    emit(state.copyWith(snackbarMessage: none()));
  }
}
