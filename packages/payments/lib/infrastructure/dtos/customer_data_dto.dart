import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:payments/domain/domain.dart';

part 'customer_data_dto.freezed.dart';

part 'customer_data_dto.g.dart';

@freezed
class CustomerDataDto with _$CustomerDataDto {
  const CustomerDataDto._();

  @JsonSerializable()
  const factory CustomerDataDto({
    required String? paymentMethod,
    required String? name,
    required String? vatNumber,
  }) = _CustomerDataDto;

  factory CustomerDataDto.fromDomain(CustomerData invoiceData) {
    return CustomerDataDto(
      paymentMethod: invoiceData.paymentMethod,
      name: invoiceData.name,
      vatNumber: invoiceData.vatNumber,
    );
  }

  factory CustomerDataDto.fromJson(Map<String, dynamic> json) =>
      _$CustomerDataDtoFromJson(json);

  factory CustomerDataDto.fromFirebase(DocumentSnapshot documentSnapshot) {
    return CustomerDataDto.fromJson(
      documentSnapshot.data() as Map<String, dynamic>,
    );
  }

  CustomerData toDomain() {
    return CustomerData(
      paymentMethod: paymentMethod,
      name: name,
      vatNumber: vatNumber,
    );
  }
}
