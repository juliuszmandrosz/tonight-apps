import 'package:freezed_annotation/freezed_annotation.dart';

part 'ticket_failure.freezed.dart';

@freezed
class TicketFailure with _$TicketFailure {
  const factory TicketFailure.unexpected() = _Unexpected;

  const factory TicketFailure.invalidTicket() = _InvalidTicket;

  const factory TicketFailure.ticketExpired() = _TicketExpired;

  const factory TicketFailure.ticketForAnotherEvent() = _TicketForAnotherEvent;

  const factory TicketFailure.returnTimeIsOver() = _ReturnTimeIsOver;
}
