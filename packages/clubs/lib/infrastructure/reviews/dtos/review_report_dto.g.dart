// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'review_report_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ReviewReportDto _$$_ReviewReportDtoFromJson(Map<String, dynamic> json) =>
    _$_ReviewReportDto(
      reviewId: json['reviewId'] as String,
      reporterId: json['reporterId'] as String,
      reportedAt: const FirebaseTimestampJsonConverter()
          .fromJson(json['reportedAt'] as Timestamp),
      reviewContent: json['reviewContent'] as String? ?? '',
    );

Map<String, dynamic> _$$_ReviewReportDtoToJson(_$_ReviewReportDto instance) =>
    <String, dynamic>{
      'reviewId': instance.reviewId,
      'reporterId': instance.reporterId,
      'reportedAt':
          const FirebaseTimestampJsonConverter().toJson(instance.reportedAt),
      'reviewContent': instance.reviewContent,
    };
