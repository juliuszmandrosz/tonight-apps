import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

import 'app_settings.dart';

part 'app_settings_cubit.freezed.dart';

part 'app_settings_state.dart';

class AppSettingsCubit extends HydratedCubit<AppSettingsState> {
  AppSettingsCubit() : super(AppSettingsState.initial());

  void changeTheme(bool isDarkTheme) {
    emit(state.copyWith(
        appSettings: state.appSettings.copyWith(isDarkTheme: isDarkTheme)));
  }

  void changeLocale(String locale) {
    emit(state.copyWith(
        appSettings: state.appSettings.copyWith(locale: locale)));
  }

  @override
  AppSettingsState? fromJson(Map<String, dynamic> json) {
    try {
      final appSettings = AppSettings.fromJson(json);
      return AppSettingsState(appSettings: appSettings);
    } catch (_) {
      //This is only possible when user intentionally change data in shared preferences so we don't care
      return AppSettingsState(appSettings: AppSettings.initial());
    }
  }

  @override
  Map<String, dynamic>? toJson(AppSettingsState state) {
    return state.appSettings.toJson();
  }
}
