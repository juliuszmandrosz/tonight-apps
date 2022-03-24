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

  void getClubInfo() async {
    emit(state.copyWith(status: CubitStatus.loading));

    final failureOrSuccess = await _clubFacade.getCurrentPartnerClub();

    failureOrSuccess.fold(
      (failure) => emit(state.copyWith(status: CubitStatus.failure)),
      (club) async {
        await _getCurrencyParams(club);
      },
    );
  }

  Future<void> _getCurrencyParams(Club currentClub) async {
    emit(state.copyWith(status: CubitStatus.loading));

    final failureOrSuccess = await _currencyParamsFacade.getCurrencyParams(
      currentClub.acceptedCurrency,
    );

    failureOrSuccess.fold(
      (failure) => emit(state.copyWith(status: CubitStatus.failure)),
      (currencyParams) => emit(
        state.copyWith(
          status: CubitStatus.success,
          club: some(currentClub),
          currencyParams: some(currencyParams),
        ),
      ),
    );
  }
}
