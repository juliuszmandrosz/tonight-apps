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
    @JsonKey(ignore: true) String? id,
    required double totalRevenue,
    required double exclusiveEventsRevenue,
    required int ticketsSold,
    required int vipsSold,
    required int exclusiveTicketsSold,
    required int exclusiveVipsSold,
  }) = _ClubSalesDto;

  factory ClubSalesDto.fromDomain(ClubSales clubSales) {
    return ClubSalesDto(
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
            documentSnapshot.data() as Map<String, dynamic>)
        .copyWith(id: documentSnapshot.id);
  }

  ClubSales toDomain() {
    return ClubSales(
      totalRevenue: totalRevenue,
      exclusiveEventsRevenue: exclusiveEventsRevenue,
      ticketsSold: ticketsSold,
      vipsSold: vipsSold,
      exclusiveTicketsSold: exclusiveTicketsSold,
      exclusiveVipsSold: exclusiveVipsSold,
    );
  }
}
