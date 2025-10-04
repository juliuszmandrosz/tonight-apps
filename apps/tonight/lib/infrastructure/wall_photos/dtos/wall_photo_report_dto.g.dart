// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wall_photo_report_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WallPhotoReportDtoImpl _$$WallPhotoReportDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$WallPhotoReportDtoImpl(
      photoId: json['photoId'] as String,
      reporterId: json['reporterId'] as String,
      photoUrl: json['photoUrl'] as String,
      createdAt: const FirebaseTimestampJsonConverter()
          .fromJson(json['createdAt'] as Timestamp),
    );

Map<String, dynamic> _$$WallPhotoReportDtoImplToJson(
        _$WallPhotoReportDtoImpl instance) =>
    <String, dynamic>{
      'photoId': instance.photoId,
      'reporterId': instance.reporterId,
      'photoUrl': instance.photoUrl,
      'createdAt':
          const FirebaseTimestampJsonConverter().toJson(instance.createdAt),
    };
