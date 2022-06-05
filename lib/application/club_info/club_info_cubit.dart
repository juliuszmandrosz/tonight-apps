import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:raver_clubs/raver_clubs.dart';
import 'package:raver_common/raver_common.dart';
import 'package:raver_partners/domain/currency_params/currency_params_entity.dart';
import 'package:raver_partners/domain/currency_params/currency_params_facade.dart';

part 'club_info_cubit.freezed.dart';

part 'club_info_state.dart';

class ClubInfoCubit extends Cubit<ClubInfoState> {
  final PartnerClubFacade _clubFacade;
  final CurrencyParamsFacade _currencyParamsFacade;

  ClubInfoCubit({
    required PartnerClubFacade clubFacade,
    required CurrencyParamsFacade currencyParamsFacade,
  })  : _clubFacade = clubFacade,
        _currencyParamsFacade = currencyParamsFacade,
        super(ClubInfoState.initial());

  Future<void> initClubInfo() async {
    emit(state.copyWith(status: CubitStatus.loading));

    await _getClubInfo();
    await _getCurrencyParams();

    if (!state.status.isFailure()) {
      emit(state.copyWith(status: CubitStatus.success));
    }
  }

  Future<void> _getClubInfo() async {
    final failureOrSuccess = await _clubFacade.getCurrentPartnerClub();

    failureOrSuccess.fold(
      (failure) => emit(state.copyWith(status: CubitStatus.failure)),
      (club) => emit(state.copyWith(club: some(club))),
    );
  }

  Future<void> _getCurrencyParams() async {
    final failureOrSuccess = await _currencyParamsFacade.getCurrencyParams(
      state.club.getOrCrash().acceptedCurrency,
    );

    failureOrSuccess.fold(
      (failure) => emit(state.copyWith(status: CubitStatus.failure)),
      (currencyParams) => emit(
        state.copyWith(currencyParams: some(currencyParams)),
      ),
    );
  }
}
