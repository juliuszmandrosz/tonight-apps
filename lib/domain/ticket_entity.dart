import 'package:equatable/equatable.dart';
import 'package:uuid/uuid.dart';

class Ticket extends Equatable {
  final String id;
  final String eventId;
  final String clubId;
  final String clubName;
  final String eventName;
  final DateTime eventDateTime;
  final int price;
  final String currency;
  final bool isVip;
  final String ticketPaymentId;
  final String? vipPaymentId;
  final bool isExpired;
  final bool isEventCanceled;
  final bool isReturnable;

  Ticket({
    String? id,
    required this.eventId,
    required this.clubId,
    required this.clubName,
    required this.eventName,
    required this.eventDateTime,
    required this.price,
    required this.currency,
    required this.isVip,
    required this.ticketPaymentId,
    this.vipPaymentId,
    this.isExpired = false,
    this.isEventCanceled = false,
    this.isReturnable = false,
  }) : id = id ?? const Uuid().v1();

  @override
  List<Object?> get props => [
        id,
        clubName,
        clubId,
        eventName,
        eventId,
        eventDateTime,
        price,
        currency,
        isVip,
        ticketPaymentId,
        vipPaymentId,
        isExpired,
        isEventCanceled,
        isReturnable,
      ];

  Ticket copyWith({
    String? eventId,
    String? clubId,
    int? price,
    String? currency,
    bool? isVip,
    DateTime? eventDateTime,
    String? eventName,
    String? clubName,
    String? ticketPaymentId,
    String? vipPaymentId,
    bool? isExpired,
    bool? isEventCanceled,
    bool? isReturnable,
  }) {
    return Ticket(
      id: id,
      eventId: eventId ?? this.eventId,
      clubId: clubId ?? this.clubId,
      price: price ?? this.price,
      currency: currency ?? this.currency,
      isVip: isVip ?? this.isVip,
      clubName: clubName ?? this.clubName,
      eventName: eventName ?? this.eventName,
      eventDateTime: eventDateTime ?? this.eventDateTime,
      ticketPaymentId: ticketPaymentId ?? this.ticketPaymentId,
      vipPaymentId: vipPaymentId ?? this.vipPaymentId,
      isExpired: isExpired ?? this.isExpired,
      isEventCanceled: isEventCanceled ?? this.isEventCanceled,
      isReturnable: isReturnable ?? this.isReturnable,
    );
  }
}
