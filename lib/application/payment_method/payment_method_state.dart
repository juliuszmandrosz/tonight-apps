part of 'payment_method_cubit.dart';

@freezed
abstract class PaymentMethodState with _$PaymentMethodState {
  const PaymentMethodState._();

  factory PaymentMethodState({
    required Option<CustomerData> updatedCustomerData,
    required RaverPaymentMethod selectedPaymentMethod,
    required CubitStatus cubitStatus,
    required Option<String> errorMessage,
  }) = _PaymentMethodState;

  factory PaymentMethodState.initial() => PaymentMethodState(
        updatedCustomerData: none(),
        selectedPaymentMethod: RaverPaymentMethod.card,
        cubitStatus: CubitStatus.initial,
        errorMessage: none(),
      );
}
