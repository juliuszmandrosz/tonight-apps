import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

class TicketPool extends Equatable {
  final int poolNumber;
  final int ticketQuantity;
  final int ticketPrice;
  final String currency;
  final int ticketsSold;
  final bool isCurrent;
  final bool isSoldOut;
  final bool isVipEnabled;
  final int? vipPrice;

  const TicketPool({
    required this.poolNumber,
    required this.ticketQuantity,
    required this.ticketPrice,
    required this.currency,
    this.ticketsSold = 0,
    this.isCurrent = false,
    this.isSoldOut = false,
    this.isVipEnabled = false,
    this.vipPrice,
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
        isVipEnabled,
        vipPrice,
      ];

  TicketPool copyWith({
    int? poolNumber,
    int? ticketQuantity,
    int? ticketPrice,
    String? currency,
    int? ticketsSold,
    bool? isCurrent,
    bool? isSoldOut,
    bool? isVipEnabled,
    Option<int>? vipPrice,
  }) {
    return TicketPool(
      poolNumber: poolNumber ?? this.poolNumber,
      ticketQuantity: ticketQuantity ?? this.ticketQuantity,
      ticketPrice: ticketPrice ?? this.ticketPrice,
      currency: currency ?? this.currency,
      ticketsSold: ticketsSold ?? this.ticketsSold,
      isCurrent: isCurrent ?? this.isCurrent,
      isSoldOut: isSoldOut ?? this.isSoldOut,
      isVipEnabled: isVipEnabled ?? this.isVipEnabled,
      vipPrice: vipPrice != null
          ? vipPrice.fold(
              () => null,
              (price) => price,
            )
          : this.vipPrice,
    );
  }
}
