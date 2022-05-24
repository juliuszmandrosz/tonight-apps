import 'package:equatable/equatable.dart';

class EventReview extends Equatable {
  final String eventId;
  final int reviewQuantity;
  final double reviewAvg;

  const EventReview({
    required this.eventId,
    this.reviewQuantity = 0,
    this.reviewAvg = 0,
  });

  @override
  List<Object?> get props => [
        eventId,
        reviewQuantity,
        reviewAvg,
      ];

  EventReview copyWith({
    int? reviewQuantity,
    double? reviewAvg,
  }) {
    return EventReview(
      eventId: eventId,
      reviewQuantity: reviewQuantity ?? this.reviewQuantity,
      reviewAvg: reviewAvg ?? this.reviewAvg,
    );
  }
}
