import 'package:freezed_annotation/freezed_annotation.dart';

part 'partner_event_failure.freezed.dart';

@freezed
class PartnerEventFailure with _$PartnerEventFailure {
  const factory PartnerEventFailure.unexpected() = _Unexpected;
}
