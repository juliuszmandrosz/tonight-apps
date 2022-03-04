import 'package:equatable/equatable.dart';
import 'package:uuid/uuid.dart';

class Ticket extends Equatable {
  final String id;
  final String clubName;
  final String eventName;
  final String eventId;
  final String eventDateTime;
  final int price;
  final bool isVip;
  final bool isExpired;

  Ticket({
    String? id,
    required this.clubName,
    required this.eventName,
    required this.eventId,
    required this.eventDateTime,
    required this.price,
    required this.isVip,
    this.isExpired = false,
  }) : id = id ?? const Uuid().v1();

  @override
  List<Object?> get props => [
        id,
        clubName,
        eventName,
        eventId,
        eventDateTime,
        price,
        isVip,
        isExpired
      ];
}
