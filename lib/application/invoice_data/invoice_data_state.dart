part of 'invoice_data_cubit.dart';

@freezed
abstract class InvoiceDataState with _$InvoiceDataState {
  const InvoiceDataState._();

  factory InvoiceDataState({
    required FormzStatus status,
    required Name name,
    required VatNumber vatNumber,
    required CountryCode countryCode,
    required InvoiceDataType invoiceDataType,
    required Option<String> errorMessage,
  }) = _InvoiceDataState;

  factory InvoiceDataState.initial() => InvoiceDataState(
        status: FormzStatus.pure,
        name: const Name.pure(),
        vatNumber: const VatNumber.pure(),
        countryCode: CountryCode.pure(),
        invoiceDataType: InvoiceDataType.individual,
        errorMessage: none(),
      );
}
