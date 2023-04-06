part of 'user_details_cubit.dart';

@freezed
class UserDetailsState with _$UserDetailsState {
  const factory UserDetailsState({
    required CubitStatus status,
    required Option<UserDetails> user,
  }) = _UserDetailsState;

  factory UserDetailsState.initial() => UserDetailsState(
        user: none(),
        status: CubitStatus.initial,
      );
}
