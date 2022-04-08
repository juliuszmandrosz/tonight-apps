import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:raver_clubs/raver_clubs.dart';
import 'package:raver_common/raver_common.dart';

part 'club_info_cubit.freezed.dart';

part 'club_info_state.dart';

class ClubInfoCubit extends Cubit<ClubInfoState> {
  final PartnerClubFacade _clubFacade;

  ClubInfoCubit(this._clubFacade) : super(ClubInfoState.initial());

  void getClubInfo() async {
    emit(state.copyWith(status: CubitStatus.loading));

    final failureOrSuccess = await _clubFacade.getCurrentPartnerClub();

    failureOrSuccess.fold(
      (failure) => emit(state.copyWith(status: CubitStatus.failure)),
      (club) => emit(
        state.copyWith(
          status: CubitStatus.success,
          club: some(club),
        ),
      ),
    );
  }
}
