part of 'remote_config_cubit.dart';

@freezed
abstract class RemoteConfigState with _$RemoteConfigState {
  const factory RemoteConfigState.initial() = _Initial;

  const factory RemoteConfigState.loading() = _Loading;

  const factory RemoteConfigState.configLoaded() = _ConfigLoaded;

  const factory RemoteConfigState.configFailure() = _ConfigFailure;
}
