import 'package:equatable/equatable.dart';
import 'package:uuid/uuid.dart';

class Ticket extends Equatable {
  final String id;
  final String clubName;
  final String eventName;
  final String eventId;
  final DateTime eventDateTime;
  final int price;
  final String currency;
  final bool isVip;
  final String ticketPaymentId;
  final String? vipPaymentId;
  final bool isExpired;

  Ticket({
    String? id,
    required this.clubName,
    required this.eventName,
    required this.eventId,
    required this.eventDateTime,
    required this.price,
    required this.currency,
    required this.isVip,
    required this.ticketPaymentId,
    this.vipPaymentId,
    this.isExpired = false,
  }) : id = id ?? const Uuid().v1();

  @override
  List<Object?> get props => [
        id,
        clubName,
        eventName,
        eventId,
        eventDateTime,
        price,
        currency,
        isVip,
        ticketPaymentId,
        vipPaymentId,
        isExpired
      ];

  Ticket copyWith({
    String? eventId,
    int? price,
    String? currency,
    bool? isVip,
    DateTime? eventDateTime,
    String? eventName,
    String? clubName,
    String? ticketPaymentId,
    String? vipPaymentId,
    bool? isExpired,
  }) {
    return Ticket(
      id: id,
      eventId: eventId ?? this.eventId,
      price: price ?? this.price,
      currency: currency ?? this.currency,
      isVip: isVip ?? this.isVip,
      clubName: clubName ?? this.clubName,
      eventName: eventName ?? this.eventName,
      eventDateTime: eventDateTime ?? this.eventDateTime,
      ticketPaymentId: ticketPaymentId ?? this.ticketPaymentId,
      vipPaymentId: vipPaymentId ?? this.vipPaymentId,
      isExpired: isExpired ?? this.isExpired,
    );
  }
}
