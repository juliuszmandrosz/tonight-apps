import 'package:equatable/equatable.dart';

class CreateTicketPaymentSheetResponse extends Equatable {
  final String customerId;
  final String paymentIntentSecret;
  final String ephemeralKeySecret;
  final String paymentIntentId;

  const CreateTicketPaymentSheetResponse({
    required this.customerId,
    required this.paymentIntentSecret,
    required this.ephemeralKeySecret,
    required this.paymentIntentId,
  });

  CreateTicketPaymentSheetResponse.fromJson(Map<String, dynamic> json)
      : customerId = json['customerId'],
        paymentIntentSecret = json['paymentIntentSecret'],
        ephemeralKeySecret = json['ephemeralKeySecret'],
        paymentIntentId = json['paymentIntentId'];

  @override
  List<Object?> get props => [
        customerId,
        paymentIntentSecret,
        ephemeralKeySecret,
        paymentIntentId,
      ];
}
