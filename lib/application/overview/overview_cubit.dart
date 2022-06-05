import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:raver_common/raver_common.dart';
import 'package:raver_partners/domain/club_sales/club_sales_entity.dart';
import 'package:raver_partners/domain/club_sales/club_sales_facade.dart';

part 'overview_cubit.freezed.dart';

part 'overview_state.dart';

class OverviewCubit extends Cubit<OverviewState> {
  final ClubSalesFacade _clubSalesFacade;

  OverviewCubit({
    required ClubSalesFacade clubSalesFacade,
  })  : _clubSalesFacade = clubSalesFacade,
        super(OverviewState.initial());

  Future<void> getClubSales() async {
    emit(state.copyWith(status: CubitStatus.loading));

    final failureOrSuccess = await _clubSalesFacade.getClubSales();

    failureOrSuccess.fold(
      (_) => emit(state.copyWith(status: CubitStatus.failure)),
      (sales) => emit(
        state.copyWith(
          clubSales: some(sales),
          status: CubitStatus.success,
        ),
      ),
    );
  }
}
