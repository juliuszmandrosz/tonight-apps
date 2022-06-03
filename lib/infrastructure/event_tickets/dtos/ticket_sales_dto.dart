import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:raver_events/domain/event_tickets/entities/ticket_sales_entity.dart';

part 'ticket_sales_dto.freezed.dart';

part 'ticket_sales_dto.g.dart';

@freezed
class TicketSalesDto with _$TicketSalesDto {
  const TicketSalesDto._();

  @JsonSerializable()
  const factory TicketSalesDto({
    required String currency,
    required double eventFee,
    @Default(0) double totalRevenue,
    @Default(0) double clubIncome,
    @Default(0) int ticketsSold,
    @Default(0) int vipsSold,
    @Default(false) bool isExclusiveEvent,
  }) = _TicketSalesDto;

  factory TicketSalesDto.fromDomain(TicketSales ticketSales) {
    return TicketSalesDto(
      currency: ticketSales.currency,
      eventFee: ticketSales.eventFee,
      totalRevenue: ticketSales.totalRevenue,
      clubIncome: ticketSales.clubIncome,
      ticketsSold: ticketSales.ticketsSold,
      vipsSold: ticketSales.vipsSold,
      isExclusiveEvent: ticketSales.isExclusiveEvent,
    );
  }

  factory TicketSalesDto.fromJson(Map<String, dynamic> json) =>
      _$TicketSalesDtoFromJson(json);

  factory TicketSalesDto.fromFirebase(DocumentSnapshot documentSnapshot) {
    return TicketSalesDto.fromJson(
        documentSnapshot.data() as Map<String, dynamic>);
  }

  TicketSales toDomain() {
    return TicketSales(
      currency: currency,
      eventFee: eventFee,
      totalRevenue: totalRevenue,
      clubIncome: clubIncome,
      ticketsSold: ticketsSold,
      vipsSold: vipsSold,
      isExclusiveEvent: isExclusiveEvent,
    );
  }
}
