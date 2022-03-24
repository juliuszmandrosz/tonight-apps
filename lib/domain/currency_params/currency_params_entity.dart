import 'package:equatable/equatable.dart';

class CurrencyParams extends Equatable {
  final int minTicketPrice;
  final int maxTicketPrice;

  const CurrencyParams({
    required this.minTicketPrice,
    required this.maxTicketPrice,
  });

  @override
  List<Object?> get props => [minTicketPrice, maxTicketPrice];
}
