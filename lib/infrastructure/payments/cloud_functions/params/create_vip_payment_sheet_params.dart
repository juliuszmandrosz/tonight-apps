import 'package:equatable/equatable.dart';

class CreateVipPaymentSheetParams extends Equatable {
  final String vipPaymentId;
  final String ticketId;
  final String? promotionCode;

  const CreateVipPaymentSheetParams({
    required this.vipPaymentId,
    required this.ticketId,
    this.promotionCode,
  });

  Map<String, dynamic> toJson() => {
        'vipPaymentId': vipPaymentId,
        'ticketId': ticketId,
        'promotionCode': promotionCode,
      };

  @override
  List<Object?> get props => [
        vipPaymentId,
        ticketId,
        promotionCode,
      ];
}
