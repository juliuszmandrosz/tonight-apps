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
  final String? userPictureUrl;
  final bool isUserDeleted;
  final String? clubId;
  final List<String> collectiveIds;

  Review({
    String? id,
    DateTime? dateAdded,
    required this.userOpinion,
    required this.userRate,
    required this.username,
    required this.userId,
    required this.eventId,
    required this.eventName,
    this.userPictureUrl,
    this.clubId,
    this.isUserDeleted = false,
    this.collectiveIds = const [],
  })  : id = id ?? const Uuid().v1(),
        dateAdded = dateAdded ?? DateTime.now();

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
        userPictureUrl,
        isUserDeleted,
        collectiveIds,
        clubId
      ];
}
