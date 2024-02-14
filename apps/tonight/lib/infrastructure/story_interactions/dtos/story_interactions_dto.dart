import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:common/common.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tonight/domain/story_interactions/story_interactions_entity.dart';

part 'story_interactions_dto.freezed.dart';
part 'story_interactions_dto.g.dart';

@freezed
class StoryInteractionsDto with _$StoryInteractionsDto {
  const StoryInteractionsDto._();

  const factory StoryInteractionsDto({
    @JsonKey(includeFromJson: false, includeToJson: false) String? id,
    required String userId,
    required String storyId,
    required int periodNumber,
    @Default(false) liked,
    @Default(false) seen,
    @FirebaseNullableTimestampJsonConverter() DateTime? seenAt,
  }) = _StoryInteractionsDto;

  factory StoryInteractionsDto.fromJson(Map<String, dynamic> json) =>
      _$StoryInteractionsDtoFromJson(json);

  factory StoryInteractionsDto.fromFirebase(DocumentSnapshot doc) =>
      StoryInteractionsDto.fromJson(doc.data() as Map<String, dynamic>)
          .copyWith(id: doc.id);

  factory StoryInteractionsDto.fromDomain(
          StoryInteractions storyInteractions) =>
      StoryInteractionsDto(
        id: storyInteractions.id,
        userId: storyInteractions.userId,
        storyId: storyInteractions.storyId,
        periodNumber: storyInteractions.periodNumber,
        liked: storyInteractions.liked,
        seen: storyInteractions.seen,
        seenAt: storyInteractions.seenAt,
      );

  StoryInteractions toDomain() => StoryInteractions(
        id: id,
        userId: userId,
        storyId: storyId,
        periodNumber: periodNumber,
        liked: liked,
        seen: seen,
        seenAt: seenAt,
      );
}
