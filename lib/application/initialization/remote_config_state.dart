part of 'remote_config_cubit.dart';

@freezed
abstract class RemoteConfigState with _$RemoteConfigState {
  const RemoteConfigState._();

  factory RemoteConfigState({
    required CubitStatus cubitStatus,
  }) = _RemoteConfigState;

  factory RemoteConfigState.initial() => RemoteConfigState(
        cubitStatus: CubitStatus.initial,
      );
}
