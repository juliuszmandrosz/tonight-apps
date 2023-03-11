import 'package:equatable/equatable.dart';

class ReturnTicketParams extends Equatable {
  final String ticketPaymentId;
  final String ticketId;

  const ReturnTicketParams({
    required this.ticketPaymentId,
    required this.ticketId,
  });

  Map<String, dynamic> toJson() => {
        'ticketPaymentId': ticketPaymentId,
        'ticketId': ticketId,
      };

  @override
  List<Object?> get props => [ticketPaymentId, ticketId];
}
