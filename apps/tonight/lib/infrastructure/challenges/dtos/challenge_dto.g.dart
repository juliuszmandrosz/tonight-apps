// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'challenge_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ChallengeDtoImpl _$$ChallengeDtoImplFromJson(Map<String, dynamic> json) =>
    _$ChallengeDtoImpl(
      createdAt: const FirebaseTimestampJsonConverter()
          .fromJson(json['createdAt'] as Timestamp),
      title: json['title'] as String,
      rewards: (json['rewards'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(int.parse(k), e as int),
      ),
      startDate: const FirebaseTimestampJsonConverter()
          .fromJson(json['startDate'] as Timestamp),
      endDate: const FirebaseTimestampJsonConverter()
          .fromJson(json['endDate'] as Timestamp),
      periodNumber: json['periodNumber'] as int,
      winners: (json['winners'] as List<dynamic>?)
              ?.map((e) => WinnerDto.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$ChallengeDtoImplToJson(_$ChallengeDtoImpl instance) =>
    <String, dynamic>{
      'createdAt':
          const FirebaseTimestampJsonConverter().toJson(instance.createdAt),
      'title': instance.title,
      'rewards': instance.rewards.map((k, e) => MapEntry(k.toString(), e)),
      'startDate':
          const FirebaseTimestampJsonConverter().toJson(instance.startDate),
      'endDate':
          const FirebaseTimestampJsonConverter().toJson(instance.endDate),
      'periodNumber': instance.periodNumber,
      'winners': instance.winners.map((e) => e.toJson()).toList(),
    };
