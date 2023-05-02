import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:common/common.dart';
import 'package:translations/raver_translations.dart';

part 'privacy_policy_cubit.freezed.dart';

part 'privacy_policy_state.dart';

class PrivacyPolicyCubit extends Cubit<PrivacyPolicyState> {
  final PartnerTermsOfServiceFacade _termsOfServiceFacade;
  final NetworkCheckCubit _networkCheckCubit;

  PrivacyPolicyCubit({
    required PartnerTermsOfServiceFacade partnerTermsOfServiceFacade,
    required NetworkCheckCubit networkCheckCubit,
  })  : _termsOfServiceFacade = partnerTermsOfServiceFacade,
        _networkCheckCubit = networkCheckCubit,
        super(PrivacyPolicyState.initial());

  Future<void> getPrivacyPolicy() async {
    emit(state.copyWith(status: CubitStatus.loading));

    final connectionStatus = await _networkCheckCubit.checkNetworkConnection();

    if (!connectionStatus) {
      _emitFailure(S().errorCheckInternetConnection);
      return;
    }

    final failureOrSuccess =
        await _termsOfServiceFacade.getPrivacyPolicyForPartner();

    failureOrSuccess.fold(
      (_) => _emitFailure(S().serverError),
      (url) => emit(
        state.copyWith(
          status: CubitStatus.success,
          documentUrl: some(url),
        ),
      ),
    );
  }

  _emitFailure(String errorMessage) {
    emit(
      state.copyWith(
        status: CubitStatus.failure,
        snackbarMessage: some(errorMessage),
      ),
    );

    emit(state.copyWith(snackbarMessage: none()));
  }
}
