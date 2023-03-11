part of 'app_info_cubit.dart';

@freezed
abstract class AppInfoState with _$AppInfoState {
  factory AppInfoState.initial() = _Initial;

  factory AppInfoState.loaded(PackageInfo packageInfo) = _Loaded;
}
