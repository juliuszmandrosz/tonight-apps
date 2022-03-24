import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:raver_partners/domain/currency_params/currency_params_entity.dart';

part 'currency_params_dto.freezed.dart';

part 'currency_params_dto.g.dart';

@freezed
class CurrencyParamsDto with _$CurrencyParamsDto {
  const CurrencyParamsDto._();

  @JsonSerializable()
  const factory CurrencyParamsDto({
    required int minTicketPrice,
    required int maxTicketPrice,
  }) = _CurrencyParamsDto;

  factory CurrencyParamsDto.fromDomain(CurrencyParams currencyParams) {
    return CurrencyParamsDto(
      minTicketPrice: currencyParams.minTicketPrice,
      maxTicketPrice: currencyParams.maxTicketPrice,
    );
  }

  factory CurrencyParamsDto.fromJson(Map<String, dynamic> json) =>
      _$CurrencyParamsDtoFromJson(json);

  factory CurrencyParamsDto.fromFirebase(DocumentSnapshot documentSnapshot) {
    return CurrencyParamsDto.fromJson(
        documentSnapshot.data() as Map<String, dynamic>);
  }

  CurrencyParams toDomain() {
    return CurrencyParams(
      minTicketPrice: minTicketPrice,
      maxTicketPrice: maxTicketPrice,
    );
  }
}
