import 'package:freezed_annotation/freezed_annotation.dart';

part 'event_tickets_failure.freezed.dart';

@freezed
class EventTicketsFailure with _$EventTicketsFailure {
  const factory EventTicketsFailure.unexpected() = _EventTicketsFailure;

  const factory EventTicketsFailure.priceChangedAfterTicketWasSold() =
      _PriceChangedAfterTicketWasSold;

  const factory EventTicketsFailure.quantityChangedToLessThanTicketsSold() =
      _QuantityChangedToLessThanTicketsSold;

  const factory EventTicketsFailure.deletedTicketPoolAfterTicketWasSold() =
      _DeletedTicketPoolAfterTicketWasSold;
}
