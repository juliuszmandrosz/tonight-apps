import 'package:events/events.dart';

bool checkIfEventIsLive(Event event) {
  if (event.isCanceled) return false;
  return event.eventStartDateTime.isBefore(DateTime.now()) &&
      event.eventEndDateTime.isAfter(DateTime.now());
}

bool checkIfShouldShowLastTicketsMessage(
    Event event, EventTickets? eventTickets) {
  if (event.isCanceled) return false;

  if (eventTickets == null ||
      eventTickets.isSoldOut ||
      eventTickets.isSaleOnlyAtGate) {
    return false;
  }

  final currentPool = eventTickets.getCurrentOrLastPool();

  final ticketQuantity = currentPool.ticketQuantity;
  final ticketsSold = currentPool.ticketsSold;

  final minTicketCountToShowMessage =
      ticketQuantity <= 20 ? ticketQuantity : (ticketQuantity * 0.2).round();

  return minTicketCountToShowMessage >= ticketQuantity - ticketsSold;
}
