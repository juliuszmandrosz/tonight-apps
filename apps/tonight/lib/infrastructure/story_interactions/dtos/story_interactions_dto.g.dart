// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'story_interactions_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_StoryInteractionsDto _$$_StoryInteractionsDtoFromJson(
        Map<String, dynamic> json) =>
    _$_StoryInteractionsDto(
      userId: json['userId'] as String,
      storyId: json['storyId'] as String,
      periodNumber: json['periodNumber'] as int,
      liked: json['liked'] ?? false,
      seen: json['seen'] ?? false,
      seenAt: const FirebaseNullableTimestampJsonConverter()
          .fromJson(json['seenAt'] as Timestamp?),
    );

Map<String, dynamic> _$$_StoryInteractionsDtoToJson(
        _$_StoryInteractionsDto instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'storyId': instance.storyId,
      'periodNumber': instance.periodNumber,
      'liked': instance.liked,
      'seen': instance.seen,
      'seenAt': const FirebaseNullableTimestampJsonConverter()
          .toJson(instance.seenAt),
    };
