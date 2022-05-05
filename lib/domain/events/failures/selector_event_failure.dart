import 'package:freezed_annotation/freezed_annotation.dart';

part 'selector_event_failure.freezed.dart';

@freezed
class SelectorEventFailure with _$SelectorEventFailure {
  const factory SelectorEventFailure.unexpected() = _Unexpected;

  const factory SelectorEventFailure.noAccess() = _NoAccess;
}
