part of 'profile_cubit.dart';

@freezed
class ProfileState with _$ProfileState {
  const ProfileState._();

  factory ProfileState({
    required Option<UserProfile> userProfile,
    required CubitStatus initialStatus,
    required CubitStatus nextPagePhotosStatus,
    required CubitStatus deletingAccountStatus,
    required Option<String> snackbarMessage,
    required bool hasPhotosReachedMax,
  }) = _ProfileState;

  factory ProfileState.initial() => ProfileState(
        userProfile: none(),
        initialStatus: CubitStatus.initial,
        nextPagePhotosStatus: CubitStatus.initial,
        deletingAccountStatus: CubitStatus.initial,
        snackbarMessage: none(),
        hasPhotosReachedMax: false,
      );
}
