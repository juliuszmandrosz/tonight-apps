import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:common/common.dart';
import 'package:translations/translations.dart';

part 'terms_of_service_cubit.freezed.dart';
part 'terms_of_service_state.dart';

class TermsOfServiceCubit extends Cubit<TermsOfServiceState> {
  final UserTermsOfServiceFacade _termsOfServiceFacade;
  final NetworkCheckCubit _networkCheckCubit;

  TermsOfServiceCubit({
    required UserTermsOfServiceFacade userTermsOfServiceFacade,
    required NetworkCheckCubit networkCheckCubit,
  })  : _termsOfServiceFacade = userTermsOfServiceFacade,
        _networkCheckCubit = networkCheckCubit,
        super(TermsOfServiceState.initial());

  Future<void> getTermsOfService() async {
    emit(state.copyWith(status: CubitStatus.loading));

    final connectionStatus = await _networkCheckCubit.checkNetworkConnection();

    if (!connectionStatus) {
      _emitFailure(S().errorCheckInternetConnection);
      return;
    }

    final failureOrSuccess =
        await _termsOfServiceFacade.getTermsOfServiceForUser();

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

  Future<void> getPrivacyPolicy() async {
    emit(state.copyWith(status: CubitStatus.loading));

    final connectionStatus = await _networkCheckCubit.checkNetworkConnection();

    if (!connectionStatus) {
      _emitFailure(S().errorCheckInternetConnection);
      return;
    }

    final failureOrSuccess =
        await _termsOfServiceFacade.getPrivacyPolicyForUser();

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
