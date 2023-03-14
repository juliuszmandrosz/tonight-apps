import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:common/infrastructure/infrastructure.dart';

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
