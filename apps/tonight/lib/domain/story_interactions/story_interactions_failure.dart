import 'package:freezed_annotation/freezed_annotation.dart';

part 'story_interactions_failure.freezed.dart';


@freezed
class StoryInteractionsFailure with _$StoryInteractionsFailure {
  const factory StoryInteractionsFailure.unexpected() = _Unexpected;

}