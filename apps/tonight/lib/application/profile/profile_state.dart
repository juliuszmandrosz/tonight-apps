part of 'profile_bloc.dart';

@freezed
class ProfileState with _$ProfileState {
  const ProfileState._();

  factory ProfileState({
    required Option<UserProfile> userProfile,
    required CubitStatus initialStatus,
    required CubitStatus nextPagePhotosStatus,
    required CubitStatus refreshPhotosStatus,
    required Option<String> snackbarMessage,
    required bool hasPhotosReachedMax,
  }) = _ProfileState;

  factory ProfileState.initial() => ProfileState(
        userProfile: none(),
        initialStatus: CubitStatus.initial,
        nextPagePhotosStatus: CubitStatus.initial,
        refreshPhotosStatus: CubitStatus.initial,
        snackbarMessage: none(),
        hasPhotosReachedMax: false,
      );
}
