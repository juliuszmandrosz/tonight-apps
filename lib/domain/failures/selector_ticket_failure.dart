import 'package:freezed_annotation/freezed_annotation.dart';

part 'selector_ticket_failure.freezed.dart';

@freezed
class SelectorTicketFailure with _$SelectorTicketFailure {
  const factory SelectorTicketFailure.unexpected() = _Unexpected;

  const factory SelectorTicketFailure.invalidTicket() = _InvalidTicket;

  const factory SelectorTicketFailure.ticketExpired() = _TicketExpired;

  const factory SelectorTicketFailure.ticketForAnotherEvent() =
      _TicketForAnotherEvent;

  const factory SelectorTicketFailure.ticketReturned() = _TicketReturned;
}
