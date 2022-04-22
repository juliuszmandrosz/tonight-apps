import 'package:equatable/equatable.dart';

class GetVipPriceParams extends Equatable {
  final String? eventId;
  final String? ticketId;

  const GetVipPriceParams({
    required this.eventId,
    required this.ticketId,
  });

  Map<String, dynamic> toJson() => {
        'eventId': eventId,
        'ticketId': ticketId,
      };

  @override
  List<Object?> get props => [eventId, ticketId];
}
