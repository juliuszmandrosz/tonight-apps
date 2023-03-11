import 'package:freezed_annotation/freezed_annotation.dart';

part 'url_launch_failure.freezed.dart';

@freezed
class UrlLaunchFailure with _$UrlLaunchFailure {
  const UrlLaunchFailure._();

  const factory UrlLaunchFailure.launchError() = _LaunchError;
}
