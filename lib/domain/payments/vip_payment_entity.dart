import 'package:equatable/equatable.dart';
import 'package:uuid/uuid.dart';

class VipPayment extends Equatable {
  final String id;
  final String ticketId;
  final int price;
  final String currency;
  final DateTime paymentDateTime;
  final String? promotionCode;

  VipPayment({
    String? id,
    required this.ticketId,
    required this.price,
    required this.currency,
    required this.paymentDateTime,
    this.promotionCode,
  }) : id = id ?? const Uuid().v1();

  @override
  List<Object?> get props => [
        id,
        ticketId,
        price,
        currency,
        paymentDateTime,
        promotionCode,
      ];

  VipPayment copyWith({
    String? ticketId,
    int? price,
    String? currency,
    DateTime? paymentDateTime,
    String? promotionCode,
  }) {
    return VipPayment(
      id: id,
      ticketId: ticketId ?? this.ticketId,
      price: price ?? this.price,
      currency: currency ?? this.currency,
      paymentDateTime: paymentDateTime ?? this.paymentDateTime,
      promotionCode: promotionCode ?? this.promotionCode,
    );
  }
}
