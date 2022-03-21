import 'package:equatable/equatable.dart';

class AddVipPaymentParams extends Equatable {
  final String vipPaymentId;
  final String paymentIntentId;
  final String ticketId;
  final String? promotionCode;

  const AddVipPaymentParams({
    required this.vipPaymentId,
    required this.paymentIntentId,
    required this.ticketId,
    this.promotionCode,
  });

  Map<String, dynamic> toJson() => {
        'vipPaymentId': vipPaymentId,
        'paymentIntentId': paymentIntentId,
        'ticketId': ticketId,
        'promotionCode': promotionCode,
      };

  @override
  List<Object?> get props => [
        vipPaymentId,
        paymentIntentId,
        ticketId,
        promotionCode,
      ];
}
