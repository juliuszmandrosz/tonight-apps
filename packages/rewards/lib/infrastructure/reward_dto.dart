import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:raver_rewards/domain/reward_entity.dart';

part 'reward_dto.g.dart';

part 'reward_dto.freezed.dart';

@freezed
class RewardDto with _$RewardDto {
  const RewardDto._();

  @JsonSerializable()
  const factory RewardDto({
    @JsonKey(ignore: true) String? id,
    required String description,
    required int requiredEntries,
  }) = _RewardDto;

  factory RewardDto.fromDomain(Reward reward) {
    return RewardDto(
      id: reward.id,
      description: reward.description,
      requiredEntries: reward.requiredEntries,
    );
  }

  factory RewardDto.fromJson(Map<String, dynamic> json) =>
      _$RewardDtoFromJson(json);

  factory RewardDto.fromFirebase(DocumentSnapshot documentSnapshot) {
    return RewardDto.fromJson(documentSnapshot.data() as Map<String, dynamic>)
        .copyWith(
      id: documentSnapshot.id,
    );
  }

  Reward toDomain() {
    return Reward(
      id: id,
      description: description,
      requiredEntries: requiredEntries,
    );
  }
}
