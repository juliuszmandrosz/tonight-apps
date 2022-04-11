import 'package:equatable/equatable.dart';

class TicketSales extends Equatable {
  final String currency;
  final double totalRevenue;
  final double clubIncome;
  final int ticketsSold;
  final int vipsSold;

  const TicketSales({
    required this.currency,
    this.totalRevenue = 0,
    this.clubIncome = 0,
    this.ticketsSold = 0,
    this.vipsSold = 0,
  });

  @override
  List<Object?> get props => [
        currency,
        totalRevenue,
        clubIncome,
        ticketsSold,
        vipsSold,
      ];

  TicketSales copyWith({
    String? currency,
    double? totalRevenue,
    double? clubIncome,
    int? ticketsSold,
    int? vipsSold,
  }) {
    return TicketSales(
      currency: currency ?? this.currency,
      totalRevenue: totalRevenue ?? this.totalRevenue,
      clubIncome: clubIncome ?? this.clubIncome,
      ticketsSold: ticketsSold ?? this.ticketsSold,
      vipsSold: vipsSold ?? this.vipsSold,
    );
  }
}
