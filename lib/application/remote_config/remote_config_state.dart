part of 'remote_config_cubit.dart';

@freezed
abstract class RemoteConfigState with _$RemoteConfigState {
  const RemoteConfigState._();

  factory RemoteConfigState({
    required CubitStatus status,
  }) = _RemoteConfigState;

  factory RemoteConfigState.initial() => RemoteConfigState(
        status: CubitStatus.initial,
      );
}
