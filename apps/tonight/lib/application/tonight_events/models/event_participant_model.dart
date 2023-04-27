import 'package:common/application/utils/generate_user_color.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tonight/domain/participants/participant_entity.dart';

part 'event_participant_model.freezed.dart';

@freezed
class EventParticipant with _$EventParticipant {
  const EventParticipant._();

  const factory EventParticipant({
    required Color color,
    required String userId,
    required String username,
    String? profilePictureUrl,
  }) = _EventParticipant;

  factory EventParticipant.fromDomain(Participant participant) {
    return EventParticipant(
      color: generateColorFromUserId(participant.userId),
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
