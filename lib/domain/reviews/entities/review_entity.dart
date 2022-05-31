import 'package:equatable/equatable.dart';
import 'package:uuid/uuid.dart';

class Review extends Equatable {
  final String id;
  final String userOpinion;
  final double userRate;
  final String username;
  final String userId;
  final DateTime dateAdded;
  final String eventId;
  final String eventName;

  Review({
    String? id,
    required this.userOpinion,
    required this.userRate,
    required this.username,
    required this.userId,
    required this.eventId,
    required this.dateAdded,
    required this.eventName,
  }) : id = id ?? const Uuid().v1();

  @override
  List<Object?> get props => [
        id,
        userRate,
        userOpinion,
        username,
        userId,
        dateAdded,
        eventId,
        eventName,
      ];
}
