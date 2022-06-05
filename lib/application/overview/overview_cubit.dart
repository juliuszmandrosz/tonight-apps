import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:raver_common/raver_common.dart';
import 'package:raver_partners/domain/club_sales/club_sales_entity.dart';
import 'package:raver_partners/domain/club_sales/club_sales_facade.dart';
import 'package:raver_partners/domain/discounts/discount_facade.dart';
import 'package:raver_partners/domain/discounts/partner_discount_entity.dart';

part 'overview_cubit.freezed.dart';

part 'overview_state.dart';

class OverviewCubit extends Cubit<OverviewState> {
  final ClubSalesFacade _clubSalesFacade;
  final DiscountFacade _discountFacade;

  OverviewCubit({
    required ClubSalesFacade clubSalesFacade,
    required DiscountFacade discountFacade,
  })  : _clubSalesFacade = clubSalesFacade,
        _discountFacade = discountFacade,
        super(OverviewState.initial());

  Future<void> initOverview() async {
    emit(state.copyWith(status: CubitStatus.loading));

    await _getClubSales();
    await _getDiscounts();

    if (!state.status.isFailure()) {
      emit(state.copyWith(status: CubitStatus.success));
    }
  }

  Future<void> _getClubSales() async {
    final failureOrSuccess = await _clubSalesFacade.getClubSales();

    failureOrSuccess.fold(
      (_) => emit(state.copyWith(status: CubitStatus.failure)),
      (sales) => emit(state.copyWith(clubSales: some(sales))),
    );
  }

  Future<void> _getDiscounts() async {
    final failureOrSuccess = await _discountFacade.getAllDiscounts();

    failureOrSuccess.fold(
      (_) => emit(state.copyWith(status: CubitStatus.failure)),
      (discounts) => emit(state.copyWith(discounts: discounts)),
    );
  }
}
