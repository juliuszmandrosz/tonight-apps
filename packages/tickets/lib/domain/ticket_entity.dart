import 'package:dartz/dartz.dart';
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
  final String ticketPaymentId;
  final bool isExpired;
  final bool isEventCanceled;
  final bool isReturnable;
  final bool isReturned;
  final String reviewId;
  final int quantity;
  final bool isActivated;
  final DateTime createdAt;
  final DateTime? usedAt;

  Ticket({
    String? id,
    DateTime? createdAt,
    required this.eventId,
    required this.clubId,
    required this.clubName,
    required this.eventName,
    required this.eventStartDateTime,
    required this.eventEndDateTime,
    required this.price,
    required this.currency,
    required this.ticketPaymentId,
    this.isExpired = false,
    this.isEventCanceled = false,
    this.isReturnable = false,
    this.isReturned = false,
    this.reviewId = '',
    this.quantity = 1,
    this.isActivated = false,
    this.usedAt,
  })  : id = id ?? const Uuid().v1(),
        createdAt = createdAt ?? DateTime.now();

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
        ticketPaymentId,
        isExpired,
        isEventCanceled,
        isReturnable,
        isReturned,
        reviewId,
        quantity,
        isActivated,
        createdAt,
        usedAt,
      ];

  Ticket copyWith({
    String? eventId,
    String? clubId,
    int? price,
    String? currency,
    DateTime? eventStartDateTime,
    DateTime? eventEndDateTime,
    String? eventName,
    String? clubName,
    String? ticketPaymentId,
    bool? isExpired,
    bool? isEventCanceled,
    bool? isReturnable,
    bool? isReturned,
    String? reviewId,
    int? quantity,
    bool? isActivated,
    DateTime? createdAt,
    Option<DateTime>? usedAt,
  }) {
    return Ticket(
      id: id,
      eventId: eventId ?? this.eventId,
      clubId: clubId ?? this.clubId,
      price: price ?? this.price,
      currency: currency ?? this.currency,
      clubName: clubName ?? this.clubName,
      eventName: eventName ?? this.eventName,
      eventStartDateTime: eventStartDateTime ?? this.eventStartDateTime,
      eventEndDateTime: eventEndDateTime ?? this.eventEndDateTime,
      ticketPaymentId: ticketPaymentId ?? this.ticketPaymentId,
      isExpired: isExpired ?? this.isExpired,
      isEventCanceled: isEventCanceled ?? this.isEventCanceled,
      isReturnable: isReturnable ?? this.isReturnable,
      isReturned: isReturned ?? this.isReturned,
      reviewId: reviewId ?? this.reviewId,
      quantity: quantity ?? this.quantity,
      createdAt: createdAt ?? this.createdAt,
      isActivated: isActivated ?? this.isActivated,
      usedAt: usedAt != null
          ? usedAt.fold(
              () => null,
              (value) => value,
            )
          : this.usedAt,
    );
  }

  bool get isValid {
    if (isExpired) return false;
    if (isEventCanceled) return false;
    if (isReturned) return false;
    if (isActivated &&
        usedAt!.add(const Duration(minutes: 10)).isBefore(DateTime.now())) {
      return false;
    }
    return true;
  }
}
