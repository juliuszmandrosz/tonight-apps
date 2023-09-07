import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tonight/domain/challenges/winner_entity.dart';

part 'winner_dto.freezed.dart';
part 'winner_dto.g.dart';

@freezed
class WinnerDto with _$WinnerDto {
  const WinnerDto._();

  @JsonSerializable()
  const factory WinnerDto({
    required String id,
    required String username,
    required String profilePictureUrl,
    required int place,
    required int reward,
  }) = _WinnerDto;

  factory WinnerDto.fromJson(Map<String, dynamic> json) =>
      _$WinnerDtoFromJson(json);

  factory WinnerDto.fromFirebase(DocumentSnapshot documentSnapshot) {
    return WinnerDto.fromJson(documentSnapshot.data() as Map<String, dynamic>);
  }

  factory WinnerDto.fromDomain(Winner winner) {
    return WinnerDto(
      id: winner.id,
      username: winner.username,
      profilePictureUrl: winner.profilePictureUrl,
      place: winner.place,
      reward: winner.reward,
    );
  }

  Winner toDomain() {
    return Winner(
      id: id,
      username: username,
      profilePictureUrl: profilePictureUrl,
      place: place,
      reward: reward,
    );
  }
}
