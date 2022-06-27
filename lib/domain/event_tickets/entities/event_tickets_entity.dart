import 'package:equatable/equatable.dart';
import 'package:raver_events/domain/event_tickets/entities/ticket_pool_entity.dart';
import 'package:raver_events/domain/event_tickets/entities/ticket_sales_entity.dart';
import 'package:collection/collection.dart';

class EventTickets extends Equatable {
  final String eventId;
  final List<TicketPool> ticketPools;
  final TicketSales ticketSales;
  final int ticketQuantity;
  final bool isSoldOut;

  const EventTickets({
    required this.eventId,
    required this.ticketPools,
    required this.ticketSales,
    required this.ticketQuantity,
    this.isSoldOut = false,
  });

  @override
  List<Object?> get props => [
        eventId,
        ticketPools,
        ticketSales,
        ticketQuantity,
        isSoldOut,
      ];

  EventTickets copyWith({
    List<TicketPool>? ticketPools,
    TicketSales? ticketSales,
    int? ticketQuantity,
    int? ticketsSold,
    int? vipsSold,
    bool? isSoldOut,
  }) {
    return EventTickets(
      eventId: eventId,
      ticketPools: ticketPools ?? this.ticketPools,
      ticketSales: ticketSales ?? this.ticketSales,
      ticketQuantity: ticketQuantity ?? this.ticketQuantity,
      isSoldOut: isSoldOut ?? this.isSoldOut,
    );
  }

  int getCurrentTicketPrice() {
    final currentPool = getCurrentPool();
    return currentPool.ticketPrice;
  }

  TicketPool getCurrentPool() {
    return ticketPools.firstWhereOrNull((pool) => pool.isCurrent) ??
        ticketPools.last;
  }
}
