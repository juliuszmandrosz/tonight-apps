import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:common/infrastructure/infrastructure.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tickets/domain/ticket_entity.dart';

part 'ticket_dto.freezed.dart';
part 'ticket_dto.g.dart';

@freezed
class TicketDto with _$TicketDto {
  const TicketDto._();

  @JsonSerializable()
  const factory TicketDto({
    @JsonKey(ignore: true) String? id,
    required String eventId,
    required String clubId,
    required String clubName,
    required String eventName,
    @FirebaseTimestampJsonConverter() required DateTime eventStartDateTime,
    @FirebaseTimestampJsonConverter() required DateTime eventEndDateTime,
    required int price,
    required String currency,
    required String ticketPaymentId,
    @Default(false) bool isExpired,
    @Default(false) bool isEventCanceled,
    @Default(false) bool isReturnable,
    @Default(false) bool isReturned,
    @Default('') String reviewId,
    @Default(1) int quantity,
    @Default(false) bool isActivated,
    @FirebaseTimestampJsonConverter() required DateTime createdAt,
    @FirebaseNullableTimestampJsonConverter() DateTime? usedAt,
  }) = _TicketDto;

  factory TicketDto.fromDomain(Ticket ticket) {
    return TicketDto(
      id: ticket.id,
      eventId: ticket.eventId,
      clubId: ticket.clubId,
      clubName: ticket.clubName,
      eventName: ticket.eventName,
      eventStartDateTime: ticket.eventStartDateTime,
      eventEndDateTime: ticket.eventEndDateTime,
      price: ticket.price,
      currency: ticket.currency,
      ticketPaymentId: ticket.ticketPaymentId,
      isExpired: ticket.isExpired,
      isEventCanceled: ticket.isEventCanceled,
      isReturnable: ticket.isReturnable,
      isReturned: ticket.isReturned,
      reviewId: ticket.reviewId,
      quantity: ticket.quantity,
      isActivated: ticket.isActivated,
      createdAt: ticket.createdAt,
      usedAt: ticket.usedAt,
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
      clubId: clubId,
      clubName: clubName,
      eventName: eventName,
      eventStartDateTime: eventStartDateTime,
      eventEndDateTime: eventEndDateTime,
      price: price,
      currency: currency,
      ticketPaymentId: ticketPaymentId,
      isExpired: isExpired,
      isEventCanceled: isEventCanceled,
      isReturnable: isReturnable,
      isReturned: isReturned,
      reviewId: reviewId,
      quantity: quantity,
      isActivated: isActivated,
      createdAt: createdAt,
      usedAt: usedAt,
    );
  }
}
