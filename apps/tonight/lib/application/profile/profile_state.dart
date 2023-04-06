part of 'profile_cubit.dart';

@freezed
class ProfileState with _$ProfileState {
  const ProfileState._();

  factory ProfileState({
    required UserAccount user,
    required bool isFromOauth,
    required CubitStatus initialStatus,
    required CubitStatus deletingAccountStatus,
    required Option<String> snackbarMessage,
  }) = _ProfileState;

  factory ProfileState.initial() => ProfileState(
        user: const UserAccount(
          id: '',
          email: '',
        ),
        isFromOauth: false,
        initialStatus: CubitStatus.initial,
        deletingAccountStatus: CubitStatus.initial,
        snackbarMessage: none(),
      );
}
