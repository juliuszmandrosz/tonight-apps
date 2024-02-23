import 'package:common/utils/generate_user_color.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tonight/domain/participants/participant_entity.dart';

part 'event_room_participant_model.freezed.dart';

@freezed
class EventRoomParticipant with _$EventRoomParticipant {
  const EventRoomParticipant._();

  const factory EventRoomParticipant({
    required Color color,
    required String userId,
    required String username,
    String? profilePictureUrl,
    @Default(0) int stepCount,
    @Default(0) int initialStepCount,
  }) = _EventRoomParticipant;

  factory EventRoomParticipant.fromDomain(Participant participant) {
    return EventRoomParticipant(
      color: generateColorFromUserId(participant.userId),
      userId: participant.userId,
      username: participant.username,
      profilePictureUrl: participant.profilePictureUrl,
      stepCount: participant.stepCount,
      initialStepCount: participant.initialStepCount,
    );
  }

  Participant toDomain() {
    return Participant(
      userId: userId,
      username: username,
      profilePictureUrl: profilePictureUrl,
      stepCount: stepCount,
      initialStepCount: initialStepCount,
    );
  }
}
