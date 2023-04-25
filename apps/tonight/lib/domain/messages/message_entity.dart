import 'package:equatable/equatable.dart';
import 'package:uuid/uuid.dart';

class Message extends Equatable {
  final String id;
  final String roomId;
  final String userId;
  final String username;
  final String userPictureUrl;
  final String text;
  final DateTime createdAt;

  Message({
    String? id,
    DateTime? createdAt,
    required this.roomId,
    required this.userId,
    required this.username,
    required this.userPictureUrl,
    required this.text,
  })  : id = id ?? const Uuid().v1(),
        createdAt = createdAt ?? DateTime.now();

  @override
  List<Object?> get props => [
        id,
        roomId,
        userId,
        username,
        userPictureUrl,
        text,
        createdAt,
      ];

  Message copyWith({
    String? roomId,
    String? userId,
    String? username,
    String? userPictureUrl,
    String? text,
  }) {
    return Message(
      id: id,
      createdAt: createdAt,
      roomId: roomId ?? this.roomId,
      userId: userId ?? this.userId,
      username: username ?? this.username,
      userPictureUrl: userPictureUrl ?? this.userPictureUrl,
      text: text ?? this.text,
    );
  }
}
