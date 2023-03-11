import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_info_failure.freezed.dart';

@freezed
class AppInfoFailure with _$AppInfoFailure {
  const AppInfoFailure._();

  factory AppInfoFailure.unexpected() = _AppInfoUnexpected;
}
