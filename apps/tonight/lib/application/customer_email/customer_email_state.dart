part of 'customer_email_cubit.dart';

@freezed
class CustomerEmailState with _$CustomerEmailState {
  const factory CustomerEmailState({
    required Option<CustomerData> customerData,
    required EmailInput email,
    required FormzStatus status,
    required Option<String> errorMessage,
  }) = _CustomerEmailState;

  factory CustomerEmailState.initial() => CustomerEmailState(
        customerData: none(),
        email: const EmailInput.pure(),
        status: FormzStatus.pure,
        errorMessage: none(),
      );
}
