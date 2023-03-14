part of 'payment_method_cubit.dart';

@freezed
abstract class PaymentMethodState with _$PaymentMethodState {
  const PaymentMethodState._();

  factory PaymentMethodState({
    required Option<CustomerData> updatedCustomerData,
    required TonightPaymentMethod selectedPaymentMethod,
    required CubitStatus cubitStatus,
    required Option<String> errorMessage,
  }) = _PaymentMethodState;

  factory PaymentMethodState.initial() => PaymentMethodState(
        updatedCustomerData: none(),
        selectedPaymentMethod: TonightPaymentMethod.card,
        cubitStatus: CubitStatus.initial,
        errorMessage: none(),
      );
}
