import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:events/domain/event_tickets/entities/ticket_pool_entity.dart';
import 'package:events/domain/event_tickets/entities/ticket_sales_entity.dart';
import 'package:collection/collection.dart';

class EventTickets extends Equatable {
  final String eventId;
  final List<TicketPool> ticketPools;
  final TicketSales ticketSales;
  final int ticketQuantity;
  final bool isSoldOut;
  final bool isSaleOnlyAtGate;
  final int? priceAtGate;

  const EventTickets({
    required this.eventId,
    required this.ticketPools,
    required this.ticketSales,
    required this.ticketQuantity,
    this.isSoldOut = false,
    this.isSaleOnlyAtGate = false,
    this.priceAtGate,
  });

  @override
  List<Object?> get props => [
        eventId,
        ticketPools,
        ticketSales,
        ticketQuantity,
        isSoldOut,
        isSaleOnlyAtGate,
        priceAtGate,
      ];

  EventTickets copyWith({
    List<TicketPool>? ticketPools,
    TicketSales? ticketSales,
    int? ticketQuantity,
    int? ticketsSold,
    int? vipsSold,
    bool? isSoldOut,
    bool? isSaleOnlyAtGate,
    Option<int>? priceAtGate,
  }) {
    return EventTickets(
      eventId: eventId,
      ticketPools: ticketPools ?? this.ticketPools,
      ticketSales: ticketSales ?? this.ticketSales,
      ticketQuantity: ticketQuantity ?? this.ticketQuantity,
      isSoldOut: isSoldOut ?? this.isSoldOut,
      isSaleOnlyAtGate: isSaleOnlyAtGate ?? this.isSaleOnlyAtGate,
      priceAtGate: priceAtGate != null
          ? priceAtGate.fold(
              () => null,
              (price) => price,
            )
          : this.priceAtGate,
    );
  }

  int getCurrentTicketPrice() {
    if (isSaleOnlyAtGate) {
      return priceAtGate!;
    }

    final currentPool = getCurrentPool()!;
    return currentPool.ticketPrice;
  }

  TicketPool? getCurrentPool() {
    return ticketPools.firstWhereOrNull((pool) => pool.isCurrent) ??
        ticketPools.lastOrNull;
  }
}
