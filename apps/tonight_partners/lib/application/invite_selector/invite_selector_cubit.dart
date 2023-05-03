import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:common/application/application.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tonight_partners/domain/selector_management/selector_management_facade.dart';
import 'package:translations/translations.dart';

part 'invite_selector_cubit.freezed.dart';

part 'invite_selector_state.dart';

class InviteSelectorCubit extends Cubit<InviteSelectorState> {
  final SelectorManagementFacade _selectorManagementFacade;

  InviteSelectorCubit(this._selectorManagementFacade)
      : super(InviteSelectorState.initial());

  Future<void> createInvitationCodeForSelector() async {
    emit(
      state.copyWith(
        status: CubitStatus.loading,
        accessCode: none(),
      ),
    );

    final failureOrSuccess =
        await _selectorManagementFacade.generateAccessCodeForSelector();

    failureOrSuccess.fold(
      (failure) => _emitFailure(),
      (code) {
        emit(state.copyWith(
          status: CubitStatus.success,
          accessCode: some(code),
        ));
      },
    );
  }

  _emitFailure() {
    emit(
      state.copyWith(
        errorMessage: some(S().serverError),
        status: CubitStatus.failure,
      ),
    );

    emit(state.copyWith(errorMessage: none()));
  }
}
