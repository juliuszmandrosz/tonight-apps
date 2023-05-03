import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tonight/domain/participants/participant_entity.dart';

part 'participant_dto.freezed.dart';
part 'participant_dto.g.dart';

@freezed
class ParticipantDto with _$ParticipantDto {
  const ParticipantDto._();

  @JsonSerializable()
  const factory ParticipantDto({
    required String userId,
    required String username,
    String? profilePictureUrl,
  }) = _ParticipantDto;

  factory ParticipantDto.fromJson(Map<String, dynamic> json) =>
      _$ParticipantDtoFromJson(json);

  factory ParticipantDto.fromFirebase(DocumentSnapshot documentSnapshot) {
    return ParticipantDto.fromJson(
            documentSnapshot.data() as Map<String, dynamic>)
        .copyWith(userId: documentSnapshot.id);
  }

  factory ParticipantDto.fromDomain(Participant participant) {
    return ParticipantDto(
      userId: participant.userId,
      username: participant.username,
      profilePictureUrl: participant.profilePictureUrl,
    );
  }

  Participant toDomain() {
    return Participant(
      userId: userId,
      username: username,
      profilePictureUrl: profilePictureUrl,
    );
  }
}
