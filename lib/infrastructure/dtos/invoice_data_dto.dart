import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:raver_payments/domain/domain.dart';

part 'invoice_data_dto.freezed.dart';

part 'invoice_data_dto.g.dart';

@freezed
class InvoiceDataDto with _$InvoiceDataDto {
  const InvoiceDataDto._();

  @JsonSerializable()
  const factory InvoiceDataDto({
    required String? name,
    required String? vatNumber,
  }) = _InvoiceDataDto;

  factory InvoiceDataDto.fromDomain(InvoiceData invoiceData) {
    return InvoiceDataDto(
      name: invoiceData.name,
      vatNumber: invoiceData.vatNumber,
    );
  }

  factory InvoiceDataDto.fromJson(Map<String, dynamic> json) =>
      _$InvoiceDataDtoFromJson(json);

  factory InvoiceDataDto.fromFirebase(DocumentSnapshot documentSnapshot) {
    return InvoiceDataDto.fromJson(
        documentSnapshot.data() as Map<String, dynamic>);
  }

  InvoiceData toDomain() {
    return InvoiceData(
      name: name,
      vatNumber: vatNumber,
    );
  }
}
