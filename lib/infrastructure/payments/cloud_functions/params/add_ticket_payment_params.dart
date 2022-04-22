import 'package:equatable/equatable.dart';

class AddTicketPaymentParams extends Equatable {
  final String ticketPaymentId;
  final String paymentIntentId;
  final String eventId;
  final bool isVip;
  final String? promotionCode;

  const AddTicketPaymentParams({
    required this.ticketPaymentId,
    required this.paymentIntentId,
    required this.eventId,
    required this.isVip,
    this.promotionCode,
  });

  Map<String, dynamic> toJson() => {
        'ticketPaymentId': ticketPaymentId,
        'paymentIntentId': paymentIntentId,
        'eventId': eventId,
        'isVip': isVip,
        'promotionCode': promotionCode,
      };

  @override
  List<Object?> get props => [
        ticketPaymentId,
        paymentIntentId,
        eventId,
        isVip,
        promotionCode,
      ];
}
