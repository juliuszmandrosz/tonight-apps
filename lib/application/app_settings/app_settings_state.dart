part of 'app_settings_cubit.dart';

@freezed
abstract class AppSettingsState with _$AppSettingsState {
  const AppSettingsState._();

  factory AppSettingsState({required AppSettings appSettings}) =
      _AppSettingsState;

  factory AppSettingsState.initial() =>
      AppSettingsState(appSettings: AppSettings.initial());
}
