import 'package:equatable/equatable.dart';

class EventCosts extends Equatable {
  final String eventId;

  final String currency;

  /// The amount that increases at the time of each individual user payment,
  /// the partner must pay the current amount at the time of canceling
  /// or postponing the event, after the payment, the variable value is reset to zero
  final double paymentProcessorFeeBalance;

  /// The advance payment that the partner must pay at the time
  /// of the postponement of the event, the amount is reduced
  /// each time the ticket is returned by the user and the final
  /// value of the variable will be paid to the partner at the end of the event
  final double eventPostponeBalance;

  const EventCosts({
    required this.eventId,
    required this.currency,
    this.paymentProcessorFeeBalance = 0,
    this.eventPostponeBalance = 0,
  });

  @override
  List<Object?> get props => [
        eventId,
        currency,
        paymentProcessorFeeBalance,
        eventPostponeBalance,
      ];

  EventCosts copyWith({
    String? currency,
    double? paymentProcessorFeeBalance,
    double? eventPostponeBalance,
  }) {
    return EventCosts(
      eventId: eventId,
      currency: currency ?? this.currency,
      paymentProcessorFeeBalance:
          paymentProcessorFeeBalance ?? this.paymentProcessorFeeBalance,
      eventPostponeBalance: eventPostponeBalance ?? this.eventPostponeBalance,
    );
  }
}
