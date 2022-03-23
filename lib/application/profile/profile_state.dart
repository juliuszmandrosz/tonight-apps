part of 'profile_cubit.dart';

@freezed
class ProfileState with _$ProfileState {
  const ProfileState._();

  factory ProfileState({
    required UserProfile user,
    required bool isFromOauth,
    required CubitStatus status,
  }) = _ProfileState;

  factory ProfileState.initial() => ProfileState(
    user: const UserProfile(
            id: '',
            username: '',
            email: '',
            favoriteClubIds: [],
            favoriteEventIds: [],
            ticketCount: 0),
        isFromOauth: false,
        status: CubitStatus.initial,
      );
}
