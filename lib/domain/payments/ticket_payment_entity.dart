import 'package:equatable/equatable.dart';
import 'package:uuid/uuid.dart';

class TicketPayment extends Equatable {
  final String id;
  final String eventId;
  final int price;
  final String currency;
  final String clubName;
  final String eventName;
  final DateTime eventDateTime;
  final String? promotionCode;
  final bool isVip;

  TicketPayment({
    String? id,
    required this.eventId,
    required this.price,
    required this.currency,
    required this.clubName,
    required this.eventName,
    required this.eventDateTime,
    this.promotionCode,
    this.isVip = false,
  }) : id = id ?? const Uuid().v1();

  @override
  List<Object?> get props => [
        id,
        eventId,
        price,
        currency,
        promotionCode,
        isVip,
        eventDateTime,
        eventName,
        clubName,
      ];

  TicketPayment copyWith({
    String? id,
    String? eventId,
    int? price,
    String? currency,
    String? promotionCode,
    bool? isVip,
    DateTime? eventDateTime,
    String? eventName,
    String? clubName,
  }) {
    return TicketPayment(
      id: id ?? this.id,
      eventId: eventId ?? this.eventId,
      price: price ?? this.price,
      currency: currency ?? this.currency,
      promotionCode: promotionCode ?? this.promotionCode,
      isVip: isVip ?? this.isVip,
      clubName: clubName ?? this.clubName,
      eventName: eventName ?? this.eventName,
      eventDateTime: eventDateTime ?? this.eventDateTime,
    );
  }
}
