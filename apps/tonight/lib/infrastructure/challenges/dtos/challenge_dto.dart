import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:common/common.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tonight/domain/challenges/challenge_entity.dart';
import 'package:tonight/infrastructure/challenges/dtos/winner_dto.dart';

part 'challenge_dto.freezed.dart';
part 'challenge_dto.g.dart';

@freezed
class ChallengeDto with _$ChallengeDto {
  const ChallengeDto._();

  @JsonSerializable(explicitToJson: true)
  const factory ChallengeDto({
    @JsonKey(includeToJson: false, includeFromJson: false) String? id,
    @FirebaseTimestampJsonConverter() required DateTime createdAt,
    required String title,

    /// Key - place, value - tokens
    required Map<int, int> rewards,
    @FirebaseTimestampJsonConverter() required DateTime startDate,
    @FirebaseTimestampJsonConverter() required DateTime endDate,
    required int periodNumber,
    @Default([]) List<WinnerDto> winners,
  }) = _ChallengeDto;

  factory ChallengeDto.fromJson(Map<String, dynamic> json) =>
      _$ChallengeDtoFromJson(json);

  factory ChallengeDto.fromFirebase(DocumentSnapshot documentSnapshot) {
    return ChallengeDto.fromJson(
            documentSnapshot.data() as Map<String, dynamic>)
        .copyWith(id: documentSnapshot.id);
  }

  factory ChallengeDto.fromDomain(Challenge challenge) {
    return ChallengeDto(
      id: challenge.id,
      createdAt: challenge.createdAt,
      title: challenge.title,
      rewards: challenge.rewards,
      startDate: challenge.startDate,
      endDate: challenge.endDate,
      periodNumber: challenge.periodNumber,
      winners: challenge.winners.map((e) => WinnerDto.fromDomain(e)).toList(),
    );
  }

  Challenge toDomain() {
    return Challenge(
      id: id,
      createdAt: createdAt,
      title: title,
      rewards: rewards,
      startDate: startDate,
      endDate: endDate,
      periodNumber: periodNumber,
      winners: winners.map((e) => e.toDomain()).toList(),
    );
  }
}
