import 'package:equatable/equatable.dart';

class ClubSales extends Equatable {
  final String currency;
  final double totalRevenue;
  final double exclusiveEventsRevenue;
  final int ticketsSold;
  final int vipsSold;
  final int exclusiveTicketsSold;
  final int exclusiveVipsSold;

  const ClubSales({
    required this.currency,
    this.totalRevenue = 0,
    this.exclusiveEventsRevenue = 0,
    this.ticketsSold = 0,
    this.vipsSold = 0,
    this.exclusiveTicketsSold = 0,
    this.exclusiveVipsSold = 0,
  });

  @override
  List<Object?> get props => [
        currency,
        totalRevenue,
        exclusiveEventsRevenue,
        ticketsSold,
        vipsSold,
        exclusiveTicketsSold,
        exclusiveVipsSold,
      ];

  ClubSales copyWith({
    String? currency,
    double? totalRevenue,
    double? exclusiveEventsRevenue,
    int? ticketsSold,
    int? vipsSold,
    int? exclusiveTicketsSold,
    int? exclusiveVipsSold,
  }) {
    return ClubSales(
      currency: currency ?? this.currency,
      totalRevenue: totalRevenue ?? this.totalRevenue,
      exclusiveEventsRevenue:
          exclusiveEventsRevenue ?? this.exclusiveEventsRevenue,
      ticketsSold: ticketsSold ?? this.ticketsSold,
      vipsSold: vipsSold ?? this.vipsSold,
      exclusiveTicketsSold: exclusiveTicketsSold ?? this.exclusiveTicketsSold,
      exclusiveVipsSold: exclusiveVipsSold ?? this.exclusiveVipsSold,
    );
  }
}
