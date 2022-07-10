import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:raver_common/raver_common.dart';
import 'package:raver_translations/raver_translations.dart';

part 'terms_of_service_cubit.freezed.dart';
part 'terms_of_service_state.dart';

class TermsOfServiceCubit extends Cubit<TermsOfServiceState> {
  final UserTermsOfServiceFacade _termsOfServiceFacade;

  TermsOfServiceCubit(this._termsOfServiceFacade)
      : super(TermsOfServiceState.initial());

  Future<void> getTermsOfService() async {
    emit(state.copyWith(status: CubitStatus.loading));

    final failureOrSuccess =
        await _termsOfServiceFacade.getTermsOfServiceForUser();

    failureOrSuccess.fold(
      (_) => _emitFailure(),
      (url) => emit(
        state.copyWith(
          status: CubitStatus.success,
          termsOfServiceUrl: some(url),
        ),
      ),
    );
  }

  _emitFailure() {
    emit(
      state.copyWith(
        status: CubitStatus.failure,
        snackbarMessage: some(S().errorCheckInternetConnection),
      ),
    );

    emit(state.copyWith(snackbarMessage: none()));
  }
}
