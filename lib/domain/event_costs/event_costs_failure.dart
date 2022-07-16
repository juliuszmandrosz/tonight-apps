import 'package:freezed_annotation/freezed_annotation.dart';

part 'event_costs_failure.freezed.dart';

@freezed
class EventCostsFailure with _$EventCostsFailure {
  const factory EventCostsFailure.unexpected() = _Unexpected;

  const factory EventCostsFailure.permissionDenied() = _PermissionDenied;
}
