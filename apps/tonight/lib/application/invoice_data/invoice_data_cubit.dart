import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:payments/domain/domain.dart';
import 'package:tonight/application/core/get_payment_failure_message.dart';
import 'package:tonight/application/invoice_data/form_inputs/country_code.dart';
import 'package:tonight/application/invoice_data/form_inputs/name.dart';
import 'package:tonight/application/invoice_data/form_inputs/vat_number.dart';
import 'package:tonight/application/invoice_data/invoice_data_type.dart';

part 'invoice_data_cubit.freezed.dart';
part 'invoice_data_state.dart';

class InvoiceDataCubit extends Cubit<InvoiceDataState> {
  final UserPaymentFacade _paymentFacade;

  InvoiceDataCubit(this._paymentFacade) : super(InvoiceDataState.initial());

  Future<void> initInvoiceData(CustomerData customerData) async {
    final hasVatNumber =
        customerData.vatNumber != null && customerData.vatNumber!.isNotEmpty;

    final hasName = customerData.name != null && customerData.name!.isNotEmpty;

    if (hasVatNumber) {
      final vatNumber = customerData.vatNumber!;
      final countryCode = vatNumber.substring(0, 2);
      final vatNumberWithoutCountryCode =
          vatNumber.substring(2, vatNumber.length);

      emit(
        state.copyWith(
          invoiceDataType: InvoiceDataType.company,
          countryCode: CountryCode.dirty(countryCode),
          vatNumber: VatNumber.dirty(vatNumberWithoutCountryCode),
        ),
      );
    }

    emit(
      state.copyWith(
        name: hasName ? Name.dirty(customerData.name!) : const Name.pure(),
      ),
    );
  }

  void nameChanged(String value) {
    final name = Name.dirty(value);
    emit(state.copyWith(name: name));
  }

  void vatNumberChanged(String value) {
    final vatNumber = VatNumber.dirty(value);
    emit(state.copyWith(vatNumber: vatNumber));
  }

  void countryCodeChanged(String value) {
    final countryCode = CountryCode.dirty(value);
    emit(state.copyWith(countryCode: countryCode));
  }

  void invoiceDataTypeChanged(InvoiceDataType value) {
    emit(state.copyWith(invoiceDataType: value, status: FormzStatus.pure));
  }

  Future<void> updateInvoiceData() async {
    if (!_validateForm()) return;

    emit(state.copyWith(status: FormzStatus.submissionInProgress));

    final failureOrSuccess = await _paymentFacade.updateInvoiceData(
      name: state.name.value,
      isCompany: state.invoiceDataType.isCompany,
      vatNumber: state.vatNumber.value,
      countryCode: state.countryCode.value,
    );

    failureOrSuccess.fold(
      (failure) => _emitFailure(failure),
      (success) {
        final vatNumberWithCountryCode =
            '${state.countryCode.value}${state.vatNumber.value}';

        final updatedCustomerData = CustomerData(
          name: state.name.value,
          vatNumber:
              state.invoiceDataType.isCompany ? vatNumberWithCountryCode : '',
        );

        emit(
          state.copyWith(
            status: FormzStatus.submissionSuccess,
            updatedCustomerData: some(updatedCustomerData),
          ),
        );
      },
    );
  }

  bool _validateForm() {
    final isCompany = state.invoiceDataType.isCompany;

    emit(
      state.copyWith(
        name: Name.dirty(state.name.value),
        vatNumber: isCompany
            ? VatNumber.dirty(state.vatNumber.value)
            : const VatNumber.pure(),
        countryCode: isCompany
            ? CountryCode.dirty(state.countryCode.value)
            : CountryCode.pure(),
      ),
    );

    List<FormzInput> inputsToValidate = [state.name];

    if (isCompany) {
      inputsToValidate.addAll([state.vatNumber, state.countryCode]);
    }

    final status = Formz.validate(inputsToValidate);

    emit(state.copyWith(status: status));

    return status.isValid;
  }

  _emitFailure(UserPaymentFailure failure) {
    final message = getPaymentFailureMessage(failure);

    emit(
      state.copyWith(
        status: FormzStatus.submissionFailure,
        errorMessage: some(message),
      ),
    );

    emit(state.copyWith(errorMessage: none()));
  }
}
