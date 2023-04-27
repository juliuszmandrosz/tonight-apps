import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:common/common.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tonight/domain/messages/message_entity.dart';

part 'message_dto.freezed.dart';
part 'message_dto.g.dart';

@freezed
class MessageDto with _$MessageDto {
  const MessageDto._();

  @JsonSerializable()
  const factory MessageDto({
    @JsonKey(ignore: true) String? id,
    required String roomId,
    required String userId,
    required String username,
    required String text,
    String? userPictureUrl,
    @FirebaseTimestampJsonConverter() required DateTime createdAt,
  }) = _MessageDto;

  factory MessageDto.fromJson(Map<String, dynamic> json) =>
      _$MessageDtoFromJson(json);

  factory MessageDto.fromFirebase(DocumentSnapshot documentSnapshot) {
    return MessageDto.fromJson(documentSnapshot.data() as Map<String, dynamic>)
        .copyWith(id: documentSnapshot.id);
  }

  factory MessageDto.fromDomain(Message message) {
    return MessageDto(
      id: message.id,
      roomId: message.roomId,
      userId: message.userId,
      username: message.username,
      text: message.text,
      userPictureUrl: message.userPictureUrl,
      createdAt: message.createdAt,
    );
  }

  Message toDomain() {
    return Message(
      id: id!,
      roomId: roomId,
      userId: userId,
      username: username,
      text: text,
      userPictureUrl: userPictureUrl,
      createdAt: createdAt,
    );
  }
}
