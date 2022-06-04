import 'package:freezed_annotation/freezed_annotation.dart';

part 'partner_event_failure.freezed.dart';

@freezed
class PartnerEventFailure with _$PartnerEventFailure {
  const factory PartnerEventFailure.unexpected() = _Unexpected;

  const factory PartnerEventFailure.cancelTimeExpired() = _CancelTimeExpired;

  const factory PartnerEventFailure.postponeTimeExpired() =
      _PostponeTimeExpired;

  const factory PartnerEventFailure.postponeTimeTooShort() =
      _PostponeTimeTooShort;

  const factory PartnerEventFailure.discountAlreadyApplied() = _DiscountAlreadyApplied;

  const factory PartnerEventFailure.eventExistsInDateRange() =
      _EventExistsInDateRange;
}
