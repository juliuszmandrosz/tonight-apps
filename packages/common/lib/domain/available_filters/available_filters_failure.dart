import 'package:freezed_annotation/freezed_annotation.dart';

part 'available_filters_failure.freezed.dart';

@freezed
class AvailableFiltersFailure with _$AvailableFiltersFailure {
  const factory AvailableFiltersFailure.unexpected() = _Unexpected;

  const factory AvailableFiltersFailure.permissionDenied() = _PermissionDenied;
}
