// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'time_task_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TimeTaskDtoImpl _$$TimeTaskDtoImplFromJson(Map<String, dynamic> json) =>
    _$TimeTaskDtoImpl(
      eventId: json['eventId'] as String,
      eventName: json['eventName'] as String,
      createdAt: const FirebaseTimestampJsonConverter()
          .fromJson(json['createdAt'] as Timestamp),
      durationInMinutes: json['durationInMinutes'] as int,
      timeTaskName: json['timeTaskName'] as String,
      voucherName: json['voucherName'] as String,
      descriptionPl: json['descriptionPl'] as String,
      descriptionEn: json['descriptionEn'] as String,
      poolLimit: json['poolLimit'] as int,
      currentUsage: json['currentUsage'] as int,
    );

Map<String, dynamic> _$$TimeTaskDtoImplToJson(_$TimeTaskDtoImpl instance) =>
    <String, dynamic>{
      'eventId': instance.eventId,
      'eventName': instance.eventName,
      'createdAt':
          const FirebaseTimestampJsonConverter().toJson(instance.createdAt),
      'durationInMinutes': instance.durationInMinutes,
      'timeTaskName': instance.timeTaskName,
      'voucherName': instance.voucherName,
      'descriptionPl': instance.descriptionPl,
      'descriptionEn': instance.descriptionEn,
      'poolLimit': instance.poolLimit,
      'currentUsage': instance.currentUsage,
    };
