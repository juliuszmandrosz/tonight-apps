import 'package:equatable/equatable.dart';
import 'package:uuid/uuid.dart';

class PhotoWall extends Equatable {
  final String id;
  final String photoUrl;
  final String clubId;
  final String clubName;
  final String eventId;
  final String eventName;
  final String userId;
  final String username;

  PhotoWall({
    String? id,
    required this.photoUrl,
    required this.clubId,
    required this.clubName,
    required this.eventId,
    required this.eventName,
    required this.userId,
    required this.username,
  }) : id = id ?? const Uuid().v1();

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
      ];

  PhotoWall copyWith({
    String? photoUrl,
    String? clubId,
    String? clubName,
    String? eventId,
    String? eventName,
    String? userId,
    String? username,
  }) {
    return PhotoWall(
      id: id,
      photoUrl: photoUrl ?? this.photoUrl,
      clubId: clubId ?? this.clubId,
      clubName: clubName ?? this.clubName,
      eventId: eventId ?? this.eventId,
      eventName: eventName ?? this.eventName,
      userId: userId ?? this.userId,
      username: username ?? this.username,
    );
  }
}
