import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:events/domain/domain.dart';
import 'package:events/infrastructure/event_tickets/dtos/ticket_pool_dto.dart';
import 'package:events/infrastructure/event_tickets/dtos/ticket_sales_dto.dart';

part 'event_tickets_dto.freezed.dart';

part 'event_tickets_dto.g.dart';

@freezed
class EventTicketsDto with _$EventTicketsDto {
  const EventTicketsDto._();

  @JsonSerializable(explicitToJson: true)
  const factory EventTicketsDto({
    @JsonKey(ignore: true) String? eventId,
    required List<TicketPoolDto> ticketPools,
    required TicketSalesDto ticketSales,
    required int ticketQuantity,
    @Default(false) bool isSoldOut,
    @Default(false) bool isSaleOnlyAtGate,
    int? priceAtGate,
  }) = _EventTicketsDto;

  factory EventTicketsDto.fromDomain(EventTickets eventTickets) {
    return EventTicketsDto(
      eventId: eventTickets.eventId,
      ticketSales: TicketSalesDto.fromDomain(eventTickets.ticketSales),
      isSoldOut: eventTickets.isSoldOut,
      ticketQuantity: eventTickets.ticketQuantity,
      ticketPools: eventTickets.ticketPools
          .map((pool) => TicketPoolDto.fromDomain(pool))
          .toList(),
      isSaleOnlyAtGate: eventTickets.isSaleOnlyAtGate,
      priceAtGate: eventTickets.priceAtGate,
    );
  }

  factory EventTicketsDto.fromJson(Map<String, dynamic> json) =>
      _$EventTicketsDtoFromJson(json);

  factory EventTicketsDto.fromFirebase(DocumentSnapshot documentSnapshot) {
    return EventTicketsDto.fromJson(
            documentSnapshot.data() as Map<String, dynamic>)
        .copyWith(eventId: documentSnapshot.id);
  }

  EventTickets toDomain() {
    return EventTickets(
      eventId: eventId!,
      ticketSales: ticketSales.toDomain(),
      ticketQuantity: ticketQuantity,
      isSoldOut: isSoldOut,
      ticketPools: ticketPools.map((pool) => pool.toDomain()).toList(),
      isSaleOnlyAtGate: isSaleOnlyAtGate,
      priceAtGate: priceAtGate,
    );
  }
}
