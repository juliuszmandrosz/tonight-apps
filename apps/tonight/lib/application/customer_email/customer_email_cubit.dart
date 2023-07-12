import 'package:auth/auth.dart';
import 'package:common/common.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:payments/domain/entities/customer_data_entity.dart';
import 'package:payments/domain/facades/user_payment_facade.dart';
import 'package:translations/translations.dart';

part 'customer_email_cubit.freezed.dart';
part 'customer_email_state.dart';

class CustomerEmailCubit extends Cubit<CustomerEmailState> {
  final UserPaymentFacade _userPaymentFacade;

  CustomerEmailCubit(this._userPaymentFacade)
      : super(CustomerEmailState.initial());

  initState(CustomerData customerData) {
    final email = customerData.email.isNotNullOrEmpty
        ? EmailInput.dirty(customerData.email!)
        : const EmailInput.pure();
    emit(
      state.copyWith(
        customerData: some(customerData),
        email: email,
      ),
    );
  }

  emailChanged(String value) {
    final email = EmailInput.dirty(value);
    emit(state.copyWith(email: email));
  }

  Future<void> updateEmail() async {
    if (!_validateEmail()) return;
    final result = await _userPaymentFacade.updateCustomerEmail(
      state.email.value,
    );
    final customerData = state.customerData.getOrCrash();
    result.fold(
      (failure) {
        _showMessage(S().serverError);
        emit(state.copyWith(status: FormzStatus.submissionFailure));
      },
      (_) => emit(
        state.copyWith(
          status: FormzStatus.submissionSuccess,
          customerData: some(
            customerData.copyWith(email: some(state.email.value)),
          ),
        ),
      ),
    );
  }

  bool _validateEmail() {
    final email = EmailInput.dirty(state.email.value);
    final status = Formz.validate([email]);
    emit(state.copyWith(email: email, status: status));
    return status.isValid;
  }

  _showMessage(String message) {
    emit(state.copyWith(errorMessage: some(message)));
    emit(state.copyWith(errorMessage: none()));
  }
}
