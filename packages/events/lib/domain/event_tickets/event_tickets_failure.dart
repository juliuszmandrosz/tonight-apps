import 'package:freezed_annotation/freezed_annotation.dart';

part 'event_tickets_failure.freezed.dart';

@freezed
class EventTicketsFailure with _$EventTicketsFailure {
  const factory EventTicketsFailure.unexpected() = _Unexpected;

  const factory EventTicketsFailure.permissionDenied() = _PermissionDenied;

  const factory EventTicketsFailure.priceChangedAfterTicketWasSold() =
      _PriceChangedAfterTicketWasSold;

  const factory EventTicketsFailure.quantityChangedToLessThanTicketsSold() =
      _QuantityChangedToLessThanTicketsSold;

  const factory EventTicketsFailure.deletedTicketPoolAfterTicketWasSold() =
      _DeletedTicketPoolAfterTicketWasSold;

  const factory EventTicketsFailure.deletedAllTicketPools() =
      _DeletedAllTicketPools;
}
