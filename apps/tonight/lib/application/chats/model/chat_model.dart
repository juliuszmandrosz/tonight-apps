import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tonight/domain/rooms/room_entity.dart';

part 'chat_model.freezed.dart';

@freezed
class Chat with _$Chat {
  const Chat._();

  const factory Chat({
    required String roomId,
    required String roomName,
    required String roomPhotoUrl,
    required bool hasUnreadMessage,
    required String? lastMessageId,
    required String? lastMessageText,
    required String? lastMessageUsername,
    required DateTime? lastMessageCreatedAt,
    @Default(false) bool isLastMessageLeftInfo,
    @Default(false) bool isLastMessageJoinedInfo,
  }) = _Chat;

  factory Chat.fromDomain({
    required Room room,
    required String userId,
  }) =>
      Chat(
        roomId: room.id,
        roomName: room.roomName,
        roomPhotoUrl: room.roomPhotoUrl,
        lastMessageId: room.lastMessageId,
        lastMessageText: room.lastMessageText,
        lastMessageCreatedAt: room.lastMessageCreatedAt,
        lastMessageUsername: room.lastMessageUsername,
        isLastMessageLeftInfo: room.isLastMessageLeftInfo,
        isLastMessageJoinedInfo: room.isLastMessageJoinedInfo,
        hasUnreadMessage: room.participantReadStatuses[userId] == false,
      );
}
