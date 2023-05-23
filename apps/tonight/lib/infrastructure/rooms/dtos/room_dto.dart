import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:common/common.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tonight/domain/rooms/room_entity.dart';

part 'room_dto.freezed.dart';
part 'room_dto.g.dart';

@freezed
class RoomDto with _$RoomDto {
  const RoomDto._();

  @JsonSerializable()
  const factory RoomDto({
    @JsonKey(includeToJson: false, includeFromJson: false) String? id,
    required String roomName,
    required String roomPhotoUrl,
    String? lastMessageId,
    String? lastMessageText,
    String? lastMessageUsername,
    @FirebaseNullableTimestampJsonConverter() DateTime? lastMessageCreatedAt,
    @Default(false) bool isLastMessageLeftInfo,
    @Default(false) bool isLastMessageJoinedInfo,
    @Default([]) List<String> participantIds,

    /// Key is participantId, value is if participant read last message
    @Default({}) Map<String, bool> participantReadStatuses,
  }) = _RoomDto;

  factory RoomDto.fromJson(Map<String, dynamic> json) =>
      _$RoomDtoFromJson(json);

  factory RoomDto.fromFirebase(DocumentSnapshot documentSnapshot) {
    return RoomDto.fromJson(documentSnapshot.data() as Map<String, dynamic>)
        .copyWith(id: documentSnapshot.id);
  }

  factory RoomDto.fromDomain(Room room) {
    return RoomDto(
      id: room.id,
      roomName: room.roomName,
      roomPhotoUrl: room.roomPhotoUrl,
      participantIds: room.participantIds,
      participantReadStatuses: room.participantReadStatuses,
      lastMessageId: room.lastMessageId,
      lastMessageText: room.lastMessageText,
      lastMessageUsername: room.lastMessageUsername,
      lastMessageCreatedAt: room.lastMessageCreatedAt,
      isLastMessageLeftInfo: room.isLastMessageLeftInfo,
      isLastMessageJoinedInfo: room.isLastMessageJoinedInfo,
    );
  }

  Room toDomain() {
    return Room(
      id: id,
      roomName: roomName,
      roomPhotoUrl: roomPhotoUrl,
      participantIds: participantIds,
      participantReadStatuses: participantReadStatuses,
      lastMessageId: lastMessageId,
      lastMessageText: lastMessageText,
      lastMessageUsername: lastMessageUsername,
      lastMessageCreatedAt: lastMessageCreatedAt,
      isLastMessageLeftInfo: isLastMessageLeftInfo,
      isLastMessageJoinedInfo: isLastMessageJoinedInfo,
    );
  }
}
