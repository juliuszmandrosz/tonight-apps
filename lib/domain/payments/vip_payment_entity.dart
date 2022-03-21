import 'package:equatable/equatable.dart';
import 'package:uuid/uuid.dart';

class VipPayment extends Equatable {
  final String id;
  final String ticketId;
  final int price;
  final String currency;
  final String? promotionCode;

  VipPayment({
    String? id,
    required this.ticketId,
    required this.price,
    required this.currency,
    this.promotionCode,
  }) : id = id ?? const Uuid().v1();

  @override
  List<Object?> get props => [
        id,
        ticketId,
        price,
        currency,
        promotionCode,
      ];

  VipPayment copyWith({
    String? ticketId,
    int? price,
    String? currency,
    String? promotionCode,
  }) {
    return VipPayment(
      id: id,
      ticketId: ticketId ?? this.ticketId,
      price: price ?? this.price,
      currency: currency ?? this.currency,
      promotionCode: promotionCode ?? this.promotionCode,
    );
  }
}
