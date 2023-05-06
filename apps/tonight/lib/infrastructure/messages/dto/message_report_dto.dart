import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:common/infrastructure/json_converters/firebase_timestamp_json_converter.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'message_report_dto.freezed.dart';
part 'message_report_dto.g.dart';

@freezed
class MessageReportDto with _$MessageReportDto {
  const MessageReportDto._();

  const factory MessageReportDto({
    @JsonKey(ignore: true) String? id,
    required String messageId,
    required String roomId,
    required String reporterId,
    required String messageContent,
    @FirebaseTimestampJsonConverter() required DateTime createdAt,
  }) = _MessageReportDto;

  factory MessageReportDto.fromJson(Map<String, dynamic> json) =>
      _$MessageReportDtoFromJson(json);

  factory MessageReportDto.fromFirebase(DocumentSnapshot documentSnapshot) {
    return MessageReportDto.fromJson(
            documentSnapshot.data() as Map<String, dynamic>)
        .copyWith(id: documentSnapshot.id);
  }
}
