// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'message_report_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MessageReportDto _$$_MessageReportDtoFromJson(Map<String, dynamic> json) =>
    _$_MessageReportDto(
      messageId: json['messageId'] as String,
      roomId: json['roomId'] as String,
      reporterId: json['reporterId'] as String,
      messageContent: json['messageContent'] as String,
      createdAt: const FirebaseTimestampJsonConverter()
          .fromJson(json['createdAt'] as Timestamp),
    );

Map<String, dynamic> _$$_MessageReportDtoToJson(_$_MessageReportDto instance) =>
    <String, dynamic>{
      'messageId': instance.messageId,
      'roomId': instance.roomId,
      'reporterId': instance.reporterId,
      'messageContent': instance.messageContent,
      'createdAt':
          const FirebaseTimestampJsonConverter().toJson(instance.createdAt),
    };
