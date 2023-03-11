import 'package:equatable/equatable.dart';

class CurrencyParams extends Equatable {
  final int minTicketPrice;
  final int maxTicketPrice;
  final double minServiceFeeAmount;

  const CurrencyParams({
    required this.minTicketPrice,
    required this.maxTicketPrice,
    required this.minServiceFeeAmount,
  });

  @override
  List<Object?> get props => [
        minTicketPrice,
        maxTicketPrice,
        minServiceFeeAmount,
      ];
}
