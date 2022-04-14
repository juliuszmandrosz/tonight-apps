import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:raver_common/infrastructure/infrastructure.dart';
import 'package:raver_tickets/domain/ticket_entity.dart';

part 'ticket_dto.freezed.dart';

part 'ticket_dto.g.dart';

@freezed
class TicketDto with _$TicketDto {
  const TicketDto._();

  @JsonSerializable()
  const factory TicketDto({
    @JsonKey(ignore: true) String? id,
    required String clubName,
    required String eventName,
    required String eventId,
    @FirebaseTimestampJsonConverter() required DateTime eventDateTime,
    required int price,
    required String currency,
    required bool isVip,
    required String ticketPaymentId,
    String? vipPaymentId,
    @Default(false) bool isExpired,
  }) = _TicketDto;

  factory TicketDto.fromDomain(Ticket ticket) {
    return TicketDto(
      id: ticket.id,
      eventId: ticket.eventId,
      clubName: ticket.clubName,
      eventName: ticket.eventName,
      eventDateTime: ticket.eventDateTime,
      price: ticket.price,
      currency: ticket.currency,
      isVip: ticket.isVip,
      ticketPaymentId: ticket.ticketPaymentId,
      vipPaymentId: ticket.vipPaymentId,
      isExpired: ticket.isExpired,
    );
  }

  factory TicketDto.fromJson(Map<String, dynamic> json) =>
      _$TicketDtoFromJson(json);

  factory TicketDto.fromFirebase(DocumentSnapshot documentSnapshot) {
    return TicketDto.fromJson(documentSnapshot.data() as Map<String, dynamic>)
        .copyWith(id: documentSnapshot.id);
  }

  Ticket toDomain() {
    return Ticket(
      id: id,
      eventId: eventId,
      clubName: clubName,
      eventName: eventName,
      eventDateTime: eventDateTime,
      price: price,
      currency: currency,
      isVip: isVip,
      ticketPaymentId: ticketPaymentId,
      vipPaymentId: vipPaymentId,
      isExpired: isExpired,
    );
  }
}
