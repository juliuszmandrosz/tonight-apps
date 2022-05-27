import 'package:equatable/equatable.dart';
import 'package:uuid/uuid.dart';

class Ticket extends Equatable {
  final String id;
  final String eventId;
  final String clubId;
  final String clubName;
  final String eventName;
  final DateTime eventStartDateTime;
  final DateTime eventEndDateTime;
  final int price;
  final String currency;
  final bool isVip;
  final String ticketPaymentId;
  final int poolNumber;
  final String? vipPaymentId;
  final bool isExpired;
  final bool isEventCanceled;
  final bool isReturnable;
  final bool isReturned;
  final String reviewId;

  Ticket({
    String? id,
    required this.eventId,
    required this.clubId,
    required this.clubName,
    required this.eventName,
    required this.eventStartDateTime,
    required this.eventEndDateTime,
    required this.price,
    required this.currency,
    required this.isVip,
    required this.ticketPaymentId,
    required this.poolNumber,
    this.vipPaymentId,
    this.isExpired = false,
    this.isEventCanceled = false,
    this.isReturnable = false,
    this.isReturned = false,
    this.reviewId = '',
  }) : id = id ?? const Uuid().v1();

  @override
  List<Object?> get props => [
        id,
        clubName,
        clubId,
        eventName,
        eventId,
        eventStartDateTime,
        eventEndDateTime,
        price,
        currency,
        isVip,
        ticketPaymentId,
        poolNumber,
        vipPaymentId,
        isExpired,
        isEventCanceled,
        isReturnable,
        isReturned,
        reviewId
      ];

  Ticket copyWith({
    String? eventId,
    String? clubId,
    int? price,
    String? currency,
    bool? isVip,
    DateTime? eventStartDateTime,
    DateTime? eventEndDateTime,
    String? eventName,
    String? clubName,
    String? ticketPaymentId,
    int? poolNumber,
    String? vipPaymentId,
    bool? isExpired,
    bool? isEventCanceled,
    bool? isReturnable,
    bool? isReturned,
    String? reviewId,
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
      eventStartDateTime: eventStartDateTime ?? this.eventStartDateTime,
      eventEndDateTime: eventEndDateTime ?? this.eventEndDateTime,
      ticketPaymentId: ticketPaymentId ?? this.ticketPaymentId,
      poolNumber: poolNumber ?? this.poolNumber,
      vipPaymentId: vipPaymentId ?? this.vipPaymentId,
      isExpired: isExpired ?? this.isExpired,
      isEventCanceled: isEventCanceled ?? this.isEventCanceled,
      isReturnable: isReturnable ?? this.isReturnable,
      isReturned: isReturned ?? this.isReturned,
      reviewId: reviewId ?? this.reviewId,
    );
  }
}
