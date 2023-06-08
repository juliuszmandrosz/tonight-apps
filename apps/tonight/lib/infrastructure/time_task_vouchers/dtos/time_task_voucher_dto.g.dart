// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'time_task_voucher_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TimeTaskVoucherDto _$$_TimeTaskVoucherDtoFromJson(
        Map<String, dynamic> json) =>
    _$_TimeTaskVoucherDto(
      venueId: json['venueId'] as String,
      wallPhotoId: json['wallPhotoId'] as String,
      wallPhotoUrl: json['wallPhotoUrl'] as String,
      timeTaskName: json['timeTaskName'] as String,
      venueName: json['venueName'] as String,
      voucherName: json['voucherName'] as String,
      validUntil: DateTime.parse(json['validUntil'] as String),
      createdAt: DateTime.parse(json['createdAt'] as String),
      isActivated: json['isActivated'] as bool? ?? false,
      isRewardAcquired: json['isRewardAcquired'] as bool? ?? false,
      usedAt: const FirebaseNullableTimestampJsonConverter()
          .fromJson(json['usedAt'] as Timestamp?),
    );

Map<String, dynamic> _$$_TimeTaskVoucherDtoToJson(
        _$_TimeTaskVoucherDto instance) =>
    <String, dynamic>{
      'venueId': instance.venueId,
      'wallPhotoId': instance.wallPhotoId,
      'wallPhotoUrl': instance.wallPhotoUrl,
      'timeTaskName': instance.timeTaskName,
      'venueName': instance.venueName,
      'voucherName': instance.voucherName,
      'validUntil': instance.validUntil.toIso8601String(),
      'createdAt': instance.createdAt.toIso8601String(),
      'isActivated': instance.isActivated,
      'isRewardAcquired': instance.isRewardAcquired,
      'usedAt': const FirebaseNullableTimestampJsonConverter()
          .toJson(instance.usedAt),
    };
