import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:raver/domain/payments/ticket_payment_entity.dart';
import 'package:raver_common/infrastructure/infrastructure.dart';

part 'ticket_payment_dto.freezed.dart';

part 'ticket_payment_dto.g.dart';

@freezed
class TicketPaymentDto with _$TicketPaymentDto {
  const TicketPaymentDto._();

  const factory TicketPaymentDto({
    @JsonKey(ignore: true) String? id,
    required String paymentIntentId,
    required String eventId,
    required int price,
    required String currency,
    required String eventName,
    required String clubName,
    @FirebaseTimestampJsonConverter() required DateTime eventDateTime,
    @FirebaseTimestampJsonConverter() required DateTime paymentDateTime,
    String? promotionCode,
    @Default(false) bool isVip,
  }) = _PromotionCodeDto;

  factory TicketPaymentDto.fromDomain(
    TicketPayment ticketPayment,
    DateTime paymentDateTime,
    String paymentIntentId,
  ) {
    return TicketPaymentDto(
      id: ticketPayment.id,
      paymentIntentId: paymentIntentId,
      eventId: ticketPayment.eventId,
      price: ticketPayment.price,
      currency: ticketPayment.currency,
      paymentDateTime: paymentDateTime,
      promotionCode: ticketPayment.promotionCode,
      isVip: ticketPayment.isVip,
      clubName: ticketPayment.clubName,
      eventName: ticketPayment.eventName,
      eventDateTime: ticketPayment.eventDateTime,
    );
  }

  factory TicketPaymentDto.fromJson(Map<String, dynamic> json) =>
      _$TicketPaymentDtoFromJson(json);

  factory TicketPaymentDto.fromFirebase(DocumentSnapshot documentSnapshot) {
    return TicketPaymentDto.fromJson(
            documentSnapshot.data() as Map<String, dynamic>)
        .copyWith(id: documentSnapshot.id);
  }

  TicketPayment toDomain() {
    return TicketPayment(
      id: id,
      eventId: eventId,
      price: price,
      currency: currency,
      promotionCode: promotionCode,
      isVip: isVip,
      clubName: clubName,
      eventName: eventName,
      eventDateTime: eventDateTime,
    );
  }
}
