import 'package:equatable/equatable.dart';

class CreateTicketPaymentSheetParams extends Equatable {
  final String ticketPaymentId;
  final String eventId;
  final bool isVip;
  final String? promotionCode;

  const CreateTicketPaymentSheetParams({
    required this.ticketPaymentId,
    required this.eventId,
    this.isVip = false,
    this.promotionCode,
  });

  Map<String, dynamic> toJson() => {
        'ticketPaymentId': ticketPaymentId,
        'eventId': eventId,
        'isVip': isVip,
        'promotionCode': promotionCode,
      };

  @override
  List<Object?> get props => [
        ticketPaymentId,
        eventId,
        isVip,
        promotionCode,
      ];
}
