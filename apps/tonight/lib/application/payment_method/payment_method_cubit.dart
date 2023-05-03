import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:common/common.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:payments/application/core/tonight_payment_method.dart';
import 'package:payments/domain/domain.dart';
import 'package:translations/translations.dart';

part 'payment_method_cubit.freezed.dart';

part 'payment_method_state.dart';

class PaymentMethodCubit extends Cubit<PaymentMethodState> {
  final UserPaymentFacade _paymentFacade;

  PaymentMethodCubit(this._paymentFacade) : super(PaymentMethodState.initial());

  initCustomerData(CustomerData customerData) {
    emit(
      state.copyWith(
        updatedCustomerData: some(customerData),
        selectedPaymentMethod: getPaymentMethodFromString(
          customerData.paymentMethod,
        ),
      ),
    );
  }

  paymentMethodChanged(TonightPaymentMethod paymentMethod) {
    emit(state.copyWith(selectedPaymentMethod: paymentMethod));
  }

  Future<void> updatePaymentMethod() async {
    emit(state.copyWith(cubitStatus: CubitStatus.loading));

    final failureOrSuccess = await _paymentFacade.updatePaymentMethod(
      state.selectedPaymentMethod,
    );

    failureOrSuccess.fold(
      (failure) => _emitFailure(),
      (success) => emit(
        state.copyWith(
          cubitStatus: CubitStatus.success,
          updatedCustomerData: some(
            state.updatedCustomerData.getOrCrash().copyWith(
                  paymentMethod: some(state.selectedPaymentMethod.name),
                ),
          ),
        ),
      ),
    );
  }

  _emitFailure() {
    emit(
      state.copyWith(
        cubitStatus: CubitStatus.failure,
        errorMessage: some(S().serverError),
      ),
    );

    emit(state.copyWith(errorMessage: none()));
  }
}
