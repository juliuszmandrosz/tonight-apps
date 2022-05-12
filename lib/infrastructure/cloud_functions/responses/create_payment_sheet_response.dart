import 'package:equatable/equatable.dart';

class CreatePaymentSheetResponse extends Equatable {
  final String customerId;
  final String paymentIntentSecret;
  final String ephemeralKeySecret;
  final String paymentIntentId;

  const CreatePaymentSheetResponse({
    required this.customerId,
    required this.paymentIntentSecret,
    required this.ephemeralKeySecret,
    required this.paymentIntentId,
  });

  CreatePaymentSheetResponse.fromJson(Map<String, dynamic> json)
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
