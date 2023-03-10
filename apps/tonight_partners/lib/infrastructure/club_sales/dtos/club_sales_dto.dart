import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:raver_partners/domain/club_sales/club_sales_entity.dart';

part 'club_sales_dto.freezed.dart';

part 'club_sales_dto.g.dart';

@freezed
class ClubSalesDto with _$ClubSalesDto {
  const ClubSalesDto._();

  @JsonSerializable()
  const factory ClubSalesDto({
    required String currency,
    @Default(0) double totalRevenue,
    @Default(0) double exclusiveEventsRevenue,
    @Default(0) int ticketsSold,
    @Default(0) int vipsSold,
    @Default(0) int exclusiveTicketsSold,
    @Default(0) int exclusiveVipsSold,
  }) = _ClubSalesDto;

  factory ClubSalesDto.fromDomain(ClubSales clubSales) {
    return ClubSalesDto(
      currency: clubSales.currency,
      totalRevenue: clubSales.totalRevenue,
      exclusiveEventsRevenue: clubSales.exclusiveEventsRevenue,
      ticketsSold: clubSales.ticketsSold,
      vipsSold: clubSales.vipsSold,
      exclusiveTicketsSold: clubSales.exclusiveTicketsSold,
      exclusiveVipsSold: clubSales.exclusiveVipsSold,
    );
  }

  factory ClubSalesDto.fromJson(Map<String, dynamic> json) =>
      _$ClubSalesDtoFromJson(json);

  factory ClubSalesDto.fromFirebase(DocumentSnapshot documentSnapshot) {
    return ClubSalesDto.fromJson(
        documentSnapshot.data() as Map<String, dynamic>);
  }

  ClubSales toDomain() {
    return ClubSales(
      currency: currency,
      totalRevenue: totalRevenue,
      exclusiveEventsRevenue: exclusiveEventsRevenue,
      ticketsSold: ticketsSold,
      vipsSold: vipsSold,
      exclusiveTicketsSold: exclusiveTicketsSold,
      exclusiveVipsSold: exclusiveVipsSold,
    );
  }
}
