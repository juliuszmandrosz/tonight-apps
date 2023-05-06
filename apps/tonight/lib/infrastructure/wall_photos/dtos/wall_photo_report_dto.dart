import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:common/infrastructure/json_converters/firebase_timestamp_json_converter.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'wall_photo_report_dto.freezed.dart';
part 'wall_photo_report_dto.g.dart';

@freezed
class WallPhotoReportDto with _$WallPhotoReportDto {
  const WallPhotoReportDto._();

  const factory WallPhotoReportDto({
    @JsonKey(ignore: true) String? id,
    required String photoId,
    required String reporterId,
    required String photoUrl,
    @FirebaseTimestampJsonConverter() required DateTime createdAt,
  }) = _WallPhotoReportDto;

  factory WallPhotoReportDto.fromJson(Map<String, dynamic> json) =>
      _$WallPhotoReportDtoFromJson(json);

  factory WallPhotoReportDto.fromFirebase(DocumentSnapshot documentSnapshot) {
    return WallPhotoReportDto.fromJson(
            documentSnapshot.data() as Map<String, dynamic>)
        .copyWith(id: documentSnapshot.id);
  }
}
