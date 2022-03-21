import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_settings.freezed.dart';

part 'app_settings.g.dart';

@freezed
class AppSettings with _$AppSettings {
  const AppSettings._();

  factory AppSettings({
    required String locale,
    required bool isDarkTheme,
  }) = _AppSettings;

  factory AppSettings.initial() =>
      AppSettings(locale: 'en', isDarkTheme: false);

  factory AppSettings.fromJson(Map<String, dynamic> json) =>
      _$AppSettingsFromJson(json);
}
