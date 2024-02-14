import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_settings_failure.freezed.dart';

@freezed
class AppSettingsFailure with _$AppSettingsFailure {
  const AppSettingsFailure._();

  factory AppSettingsFailure.unexpected() = _Unexpected;
}
