// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wall_photo_report_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_WallPhotoReportDto _$$_WallPhotoReportDtoFromJson(
        Map<String, dynamic> json) =>
    _$_WallPhotoReportDto(
      photoId: json['photoId'] as String,
      reporterId: json['reporterId'] as String,
      createdAt: const FirebaseTimestampJsonConverter()
          .fromJson(json['createdAt'] as Timestamp),
    );

Map<String, dynamic> _$$_WallPhotoReportDtoToJson(
        _$_WallPhotoReportDto instance) =>
    <String, dynamic>{
      'photoId': instance.photoId,
      'reporterId': instance.reporterId,
      'createdAt':
          const FirebaseTimestampJsonConverter().toJson(instance.createdAt),
    };
