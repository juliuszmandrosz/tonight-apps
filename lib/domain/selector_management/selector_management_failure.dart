import 'package:freezed_annotation/freezed_annotation.dart';

part 'selector_management_failure.freezed.dart';

@freezed
class SelectorManagementFailure with _$SelectorManagementFailure {
  factory SelectorManagementFailure.unexpected() = _Unexpected;
}
