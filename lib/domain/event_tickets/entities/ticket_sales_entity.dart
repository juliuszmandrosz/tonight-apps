import 'package:equatable/equatable.dart';

class TicketSales extends Equatable {
  final String currency;
  final double eventFee;
  final double totalRevenue;
  final double clubIncome;
  final int ticketsSold;
  final int vipsSold;
  final bool isExclusiveEvent;

  const TicketSales({
    required this.currency,
    required this.eventFee,
    this.totalRevenue = 0,
    this.clubIncome = 0,
    this.ticketsSold = 0,
    this.vipsSold = 0,
    this.isExclusiveEvent = false,
  });

  @override
  List<Object?> get props => [
        currency,
        eventFee,
        totalRevenue,
        clubIncome,
        ticketsSold,
        vipsSold,
        isExclusiveEvent,
      ];

  TicketSales copyWith({
    String? currency,
    double? eventFee,
    double? totalRevenue,
    double? clubIncome,
    int? ticketsSold,
    int? vipsSold,
    bool? isExclusiveEvent,
  }) {
    return TicketSales(
      currency: currency ?? this.currency,
      eventFee: eventFee ?? this.eventFee,
      totalRevenue: totalRevenue ?? this.totalRevenue,
      clubIncome: clubIncome ?? this.clubIncome,
      ticketsSold: ticketsSold ?? this.ticketsSold,
      vipsSold: vipsSold ?? this.vipsSold,
      isExclusiveEvent: isExclusiveEvent ?? this.isExclusiveEvent,
    );
  }
}
