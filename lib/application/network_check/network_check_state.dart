part of 'network_check_cubit.dart';

@freezed
class NetworkCheckState with _$NetworkCheckState {
  const NetworkCheckState._();

  factory NetworkCheckState({required bool isConnected}) = _NetworkCheckState;

  factory NetworkCheckState.initial() => NetworkCheckState(isConnected: true);
}
