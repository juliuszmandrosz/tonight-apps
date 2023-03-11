import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:raver_auth/raver_auth.dart';
import 'package:raver_common/raver_common.dart';

part 'selector_access_code_dto.freezed.dart';

part 'selector_access_code_dto.g.dart';

@freezed
class SelectorAccessCodeDto with _$SelectorAccessCodeDto {
  const SelectorAccessCodeDto._();

  @JsonSerializable()
  const factory SelectorAccessCodeDto({
    @JsonKey(ignore: true) String? code,
    required String partnerId,
    @TimestampJsonConverter() required DateTime expirationDateTime,
  }) = _SelectorAccessCodeDto;

  factory SelectorAccessCodeDto.fromDomain({
    required SelectorAccessCode selectorAccessCode,
    required String partnerId,
    required DateTime expirationDateTime,
  }) {
    return SelectorAccessCodeDto(
      code: selectorAccessCode.code,
      partnerId: partnerId,
      expirationDateTime: expirationDateTime,
    );
  }

  factory SelectorAccessCodeDto.fromJson(Map<String, dynamic> json) =>
      _$SelectorAccessCodeDtoFromJson(json);

  factory SelectorAccessCodeDto.fromFirebase(
      DocumentSnapshot documentSnapshot) {
    return SelectorAccessCodeDto.fromJson(
            documentSnapshot.data() as Map<String, dynamic>)
        .copyWith(
      code: documentSnapshot.id,
    );
  }

  SelectorAccessCode toDomain() {
    return SelectorAccessCode(
      code: code!,
    );
  }
}
