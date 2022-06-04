import 'package:algolia/algolia.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:raver_common/infrastructure/infrastructure.dart';
import 'package:raver_common/infrastructure/json_converters/timestamp_json_converter.dart';
import 'package:raver_events/domain/events/event_entity.dart';

part 'applied_discount_dto.freezed.dart';

part 'applied_discount_dto.g.dart';

@freezed
class AppliedDiscountDto with _$AppliedDiscountDto {
  const AppliedDiscountDto._();

  @JsonSerializable()
  const factory AppliedDiscountDto({
    @JsonKey(ignore: true) String? id,
    required String eventId,
    @FirebaseTimestampJsonConverter() required DateTime realizationDateTime,
  }) = _AppliedDiscountDto;

  factory AppliedDiscountDto.fromJson(Map<String, dynamic> json) =>
      _$AppliedDiscountDtoFromJson(json);

  factory AppliedDiscountDto.fromFirebase(DocumentSnapshot documentSnapshot) {
    return AppliedDiscountDto.fromJson(
            documentSnapshot.data() as Map<String, dynamic>)
        .copyWith(
      id: documentSnapshot.id,
    );
  }
}
