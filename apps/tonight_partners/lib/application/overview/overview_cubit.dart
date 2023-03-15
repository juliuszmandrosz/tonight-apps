import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:common/common.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tonight_partners/domain/club_sales/club_sales_entity.dart';
import 'package:tonight_partners/domain/club_sales/club_sales_facade.dart';

part 'overview_cubit.freezed.dart';
part 'overview_state.dart';

class OverviewCubit extends Cubit<OverviewState> {
  final ClubSalesFacade _clubSalesFacade;
  StreamSubscription? _clubSalesSub;

  OverviewCubit({
    required ClubSalesFacade clubSalesFacade,
  })  : _clubSalesFacade = clubSalesFacade,
        super(OverviewState.initial());

  Future<void> getClubSales() async {
    emit(state.copyWith(status: CubitStatus.loading));

    _clubSalesSub = _clubSalesFacade.getClubSales().listen(
      (result) {
        result.fold(
          (_) => emit(state.copyWith(status: CubitStatus.failure)),
          (sales) => emit(
            state.copyWith(
              clubSales: some(sales),
              status: CubitStatus.success,
            ),
          ),
        );
      },
    );
  }

  @override
  Future<void> close() {
    _clubSalesSub?.cancel();
    return super.close();
  }
}
