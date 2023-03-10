import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:raver_partners/domain/selector_management/selector_entity.dart';

part 'selector_dto.freezed.dart';

part 'selector_dto.g.dart';

@freezed
class SelectorDto with _$SelectorDto {
  const SelectorDto._();

  @JsonSerializable()
  const factory SelectorDto({
    @JsonKey(ignore: true) String? id,
    required String email,
  }) = _SelectorDto;

  factory SelectorDto.fromDomain(Selector selector) {
    return SelectorDto(
      id: selector.id,
      email: selector.email,
    );
  }

  factory SelectorDto.fromJson(Map<String, dynamic> json) =>
      _$SelectorDtoFromJson(json);

  factory SelectorDto.fromFirebase(DocumentSnapshot documentSnapshot) {
    return SelectorDto.fromJson(documentSnapshot.data() as Map<String, dynamic>)
        .copyWith(id: documentSnapshot.id);
  }

  Selector toDomain() {
    return Selector(
      id: id,
      email: email,
    );
  }
}
