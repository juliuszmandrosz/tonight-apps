import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:raver_events/domain/domain.dart';

part 'ticket_pool_dto.freezed.dart';

part 'ticket_pool_dto.g.dart';

@freezed
class TicketPoolDto with _$TicketPoolDto {
  const TicketPoolDto._();

  @JsonSerializable()
  const factory TicketPoolDto({
    required int poolNumber,
    required int ticketQuantity,
    required int ticketPrice,
    required int vipPrice,
    required String currency,
    @Default(0) int ticketsSold,
    @Default(false) bool isCurrent,
    @Default(false) bool isSoldOut,
  }) = _TicketPoolDto;

  factory TicketPoolDto.fromDomain(TicketPool ticketPool) {
    return TicketPoolDto(
      poolNumber: ticketPool.poolNumber,
      ticketQuantity: ticketPool.ticketQuantity,
      ticketPrice: ticketPool.ticketPrice,
      vipPrice: ticketPool.vipPrice,
      currency: ticketPool.currency,
      ticketsSold: ticketPool.ticketsSold,
      isCurrent: ticketPool.isCurrent,
      isSoldOut: ticketPool.isSoldOut,
    );
  }

  factory TicketPoolDto.fromJson(Map<String, dynamic> json) =>
      _$TicketPoolDtoFromJson(json);

  factory TicketPoolDto.fromFirebase(DocumentSnapshot documentSnapshot) {
    return TicketPoolDto.fromJson(
        documentSnapshot.data() as Map<String, dynamic>);
  }

  TicketPool toDomain() {
    return TicketPool(
      poolNumber: poolNumber,
      ticketQuantity: ticketQuantity,
      ticketPrice: ticketPrice,
      vipPrice: vipPrice,
      currency: currency,
      ticketsSold: ticketsSold,
      isCurrent: isCurrent,
      isSoldOut: isSoldOut,
    );
  }
}
