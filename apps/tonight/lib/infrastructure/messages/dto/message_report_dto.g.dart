// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'message_report_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MessageReportDtoImpl _$$MessageReportDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$MessageReportDtoImpl(
      messageId: json['messageId'] as String,
      roomId: json['roomId'] as String,
      reporterId: json['reporterId'] as String,
      messageContent: json['messageContent'] as String,
      createdAt: const FirebaseTimestampJsonConverter()
          .fromJson(json['createdAt'] as Timestamp),
    );

Map<String, dynamic> _$$MessageReportDtoImplToJson(
        _$MessageReportDtoImpl instance) =>
    <String, dynamic>{
      'messageId': instance.messageId,
      'roomId': instance.roomId,
      'reporterId': instance.reporterId,
      'messageContent': instance.messageContent,
      'createdAt':
          const FirebaseTimestampJsonConverter().toJson(instance.createdAt),
    };
