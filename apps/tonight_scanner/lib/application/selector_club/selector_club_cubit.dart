import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:clubs/domain/club/selector_club_facade.dart';
import 'package:clubs/clubs.dart';
import 'package:common/application/application.dart';
import 'package:rewards/domain/domain.dart';
import 'package:translations/translations.dart';

part 'selector_club_cubit.freezed.dart';

part 'selector_club_state.dart';

class SelectorClubCubit extends Cubit<SelectorClubState> {
  final SelectorClubFacade _clubFacade;
  final SelectorRewardFacade _rewardFacade;

  StreamSubscription? _rewardsSub;

  SelectorClubCubit({
    required SelectorClubFacade selectorClubFacade,
    required SelectorRewardFacade selectorRewardFacade,
  })  : _clubFacade = selectorClubFacade,
        _rewardFacade = selectorRewardFacade,
        super(SelectorClubState.initial());

  Future<void> getClubInfo() async {
    emit(state.copyWith(status: CubitStatus.loading));

    final failureOrSuccess = await _clubFacade.getCurrentSelectorClub();

    failureOrSuccess.fold(
      (failure) => emit(state.copyWith(status: CubitStatus.failure)),
      (club) {
        _getRewardsFromClub();
        emit(
          state.copyWith(
            status: CubitStatus.success,
            selectorClub: some(club),
          ),
        );
      },
    );
  }

  void resetEnterAccessCodeState() {
    emit(
      state.copyWith(
        enterAccessCodeStatus: FormzStatus.pure,
        accessCode: '',
        errorMessage: none(),
      ),
    );
  }

  void accessCodeChanged(String value) {
    emit(
      state.copyWith(
        accessCode: value,
        errorMessage: none(),
      ),
    );
  }

  Future<void> enterAccessCode() async {
    emit(
      state.copyWith(
        enterAccessCodeStatus: FormzStatus.submissionInProgress,
      ),
    );

    final failureOrSuccess =
        await _clubFacade.enterAccessCodeToClub(state.accessCode);

    failureOrSuccess.fold(
      (failure) => _emitEnterAccessCodeFailure(failure),
      (success) => emit(
        state.copyWith(
          enterAccessCodeStatus: FormzStatus.submissionSuccess,
        ),
      ),
    );
  }

  _getRewardsFromClub() {
    _rewardsSub = _rewardFacade.getRewardsFromCurrentSelectorClub().listen(
      (result) {
        result.fold(
          (failure) => emit(state.copyWith(status: CubitStatus.failure)),
          (rewards) => emit(
            state.copyWith(
              status: CubitStatus.success,
              rewards: rewards,
            ),
          ),
        );
      },
    );
  }

  _emitEnterAccessCodeFailure(SelectorClubFailure failure) {
    final errorMessage = _getErrorMessage(failure);
    emit(
      state.copyWith(
        enterAccessCodeStatus: FormzStatus.submissionFailure,
        errorMessage: some(errorMessage),
      ),
    );
    emit(state.copyWith(errorMessage: none()));
  }

  _getErrorMessage(SelectorClubFailure failure) {
    return failure.map(
      unexpected: (_) => S().serverError,
      invalidAccessCode: (_) => S().invalidAccessCode,
      permissionDenied: (_) => S().operationNotAllowed,
    );
  }

  @override
  Future<void> close() {
    _rewardsSub?.cancel();
    return super.close();
  }
}
