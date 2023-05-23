import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:uuid/uuid.dart';

class Room extends Equatable {
  final String id;
  final String roomName;
  final String roomPhotoUrl;
  final List<String> participantIds;

  /// Key is participantId, value is if participant read last message
  final Map<String, bool> participantReadStatuses;
  final String? lastMessageId;
  final String? lastMessageText;
  final String? lastMessageUsername;
  final DateTime? lastMessageCreatedAt;
  final bool isLastMessageLeftInfo;
  final bool isLastMessageJoinedInfo;

  Room({
    String? id,
    required this.roomName,
    required this.roomPhotoUrl,
    this.lastMessageId,
    this.lastMessageText,
    this.lastMessageUsername,
    this.lastMessageCreatedAt,
    this.participantIds = const [],
    this.participantReadStatuses = const {},
    this.isLastMessageJoinedInfo = false,
    this.isLastMessageLeftInfo = false,
  }) : id = id ?? const Uuid().v1();

  @override
  List<Object?> get props => [
        id,
        roomName,
        roomPhotoUrl,
        participantIds,
        participantReadStatuses,
        lastMessageId,
        lastMessageText,
        lastMessageUsername,
        lastMessageCreatedAt,
        isLastMessageLeftInfo,
        isLastMessageJoinedInfo,
      ];

  Room copyWith({
    String? roomName,
    String? roomPhotoUrl,
    List<String>? participantIds,
    Option<String>? lastMessageId,
    Option<String>? lastMessageText,
    Option<String>? lastMessageUsername,
    Option<DateTime>? lastMessageCreatedAt,
    bool? isLastMessageLeftInfo,
    bool? isLastMessageJoinedInfo,
  }) =>
      Room(
        id: id,
        roomName: roomName ?? this.roomName,
        roomPhotoUrl: roomPhotoUrl ?? this.roomPhotoUrl,
        participantIds: participantIds ?? this.participantIds,
        lastMessageId: lastMessageId != null
            ? lastMessageId.fold(
                () => null,
                (id) => id,
              )
            : this.lastMessageId,
        lastMessageText: lastMessageText != null
            ? lastMessageText.fold(
                () => null,
                (message) => message,
              )
            : this.lastMessageText,
        lastMessageUsername: lastMessageUsername != null
            ? lastMessageUsername.fold(
                () => null,
                (username) => username,
              )
            : this.lastMessageUsername,
        lastMessageCreatedAt: lastMessageCreatedAt != null
            ? lastMessageCreatedAt.fold(
                () => null,
                (createdAt) => createdAt,
              )
            : this.lastMessageCreatedAt,
        isLastMessageLeftInfo:
            isLastMessageLeftInfo ?? this.isLastMessageLeftInfo,
        isLastMessageJoinedInfo:
            isLastMessageJoinedInfo ?? this.isLastMessageJoinedInfo,
      );
}
