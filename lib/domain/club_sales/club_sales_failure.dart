import 'package:freezed_annotation/freezed_annotation.dart';

part 'club_sales_failure.freezed.dart';

@freezed
class ClubSalesFailure with _$ClubSalesFailure {
  const factory ClubSalesFailure.unexpected() = _Unexpected;

  const factory ClubSalesFailure.permissionDenied() = _PermissionDenied;
}
