import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:uuid/uuid.dart';

class Message extends Equatable {
  final String id;
  final String userId;
  final String username;
  final String text;
  final DateTime createdAt;
  final String? userPictureUrl;
  final bool isJoinedInfo;
  final bool isLeftInfo;
  final bool isUserDeleted;

  Message({
    String? id,
    DateTime? createdAt,
    required this.userId,
    required this.username,
    required this.text,
    this.userPictureUrl,
    this.isJoinedInfo = false,
    this.isLeftInfo = false,
    this.isUserDeleted = false,
  })  : id = id ?? const Uuid().v1(),
        createdAt = createdAt ?? DateTime.now();

  @override
  List<Object?> get props => [
        id,
        userId,
        username,
        userPictureUrl,
        text,
        createdAt,
        isJoinedInfo,
        isLeftInfo,
        isUserDeleted,
      ];

  Message copyWith({
    String? userId,
    String? username,
    Option<String>? userPictureUrl,
    String? text,
    bool? isJoinedInfo,
    bool? isLeftInfo,
    bool? isUserDeleted,
  }) {
    return Message(
      id: id,
      createdAt: createdAt,
      userId: userId ?? this.userId,
      username: username ?? this.username,
      text: text ?? this.text,
      userPictureUrl: userPictureUrl != null
          ? userPictureUrl.fold(
              () => null,
              (url) => url,
            )
          : this.userPictureUrl,
      isJoinedInfo: isJoinedInfo ?? this.isJoinedInfo,
      isLeftInfo: isLeftInfo ?? this.isLeftInfo,
      isUserDeleted: isUserDeleted ?? this.isUserDeleted,
    );
  }
}
