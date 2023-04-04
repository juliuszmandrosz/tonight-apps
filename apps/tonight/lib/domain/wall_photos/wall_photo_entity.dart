import 'package:equatable/equatable.dart';
import 'package:uuid/uuid.dart';

class WallPhoto extends Equatable {
  final String id;
  final String photoUrl;
  final String clubId;
  final String clubName;
  final String eventId;
  final String eventName;
  final String userId;
  final String username;
  final DateTime eventEndDateTime;
  final DateTime createdAt;

  WallPhoto({
    String? id,
    DateTime? createdAt,
    required this.photoUrl,
    required this.clubId,
    required this.clubName,
    required this.eventId,
    required this.eventName,
    required this.userId,
    required this.username,
    required this.eventEndDateTime,
  })  : id = id ?? const Uuid().v1(),
        createdAt = DateTime.now();

  @override
  List<Object?> get props => [
        id,
        photoUrl,
        clubId,
        clubName,
        eventId,
        eventName,
        userId,
        username,
        eventEndDateTime,
        createdAt,
      ];

  WallPhoto copyWith({
    String? photoUrl,
    String? clubId,
    String? clubName,
    String? eventId,
    String? eventName,
    String? userId,
    String? username,
    DateTime? eventEndDateTime,
  }) {
    return WallPhoto(
      id: id,
      createdAt: createdAt,
      photoUrl: photoUrl ?? this.photoUrl,
      clubId: clubId ?? this.clubId,
      clubName: clubName ?? this.clubName,
      eventId: eventId ?? this.eventId,
      eventName: eventName ?? this.eventName,
      userId: userId ?? this.userId,
      username: username ?? this.username,
      eventEndDateTime: eventEndDateTime ?? this.eventEndDateTime,
    );
  }
}
