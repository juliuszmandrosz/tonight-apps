part of 'user_location_cubit.dart';

@freezed
class UserLocationState with _$UserLocationState {
  const UserLocationState._();

  factory UserLocationState({
    required Option<Map<String, double>> userLocation,
    required bool isPermissionGranted,
    required bool isLoading,
  }) = _UserLocationState;

  factory UserLocationState.initial() => UserLocationState(
        userLocation: none(),
        isPermissionGranted: false,
        isLoading: false,
      );
}
