import 'package:freezed_annotation/freezed_annotation.dart';

part 'challenge_failure.freezed.dart';

@freezed
class ChallengeFailure with _$ChallengeFailure {
  const factory ChallengeFailure.unexpected() = _Unexpected;
}
