import 'package:equatable/equatable.dart';

class TicketPool extends Equatable {
  final int poolNumber;
  final int ticketQuantity;
  final int ticketPrice;
  final String currency;
  final int ticketsSold;
  final bool isCurrent;
  final bool isSoldOut;

  const TicketPool({
    required this.poolNumber,
    required this.ticketQuantity,
    required this.ticketPrice,
    required this.currency,
    this.ticketsSold = 0,
    this.isCurrent = false,
    this.isSoldOut = false,
  });

  @override
  List<Object?> get props => [
        poolNumber,
        ticketQuantity,
        ticketPrice,
        currency,
        ticketsSold,
        isCurrent,
        isSoldOut,
      ];

  TicketPool copyWith({
    int? poolNumber,
    int? ticketQuantity,
    int? ticketPrice,
    String? currency,
    int? ticketsSold,
    bool? isCurrent,
    bool? isSoldOut,
  }) {
    return TicketPool(
      poolNumber: poolNumber ?? this.poolNumber,
      ticketQuantity: ticketQuantity ?? this.ticketQuantity,
      ticketPrice: ticketPrice ?? this.ticketPrice,
      currency: currency ?? this.currency,
      ticketsSold: ticketsSold ?? this.ticketsSold,
      isCurrent: isCurrent ?? this.isCurrent,
      isSoldOut: isSoldOut ?? this.isSoldOut,
    );
  }
}
