import 'package:freezed_annotation/freezed_annotation.dart';

part 'remote_config_failure.freezed.dart';

@freezed
class RemoteConfigFailure with _$RemoteConfigFailure {
  factory RemoteConfigFailure.unexpected() = _RemoteConfigUnexpected;
}
