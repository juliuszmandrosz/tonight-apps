import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:raver_common/raver_common.dart';
import 'package:raver_partners/application/overview/overview_cubit.dart';
import 'package:raver_partners/domain/club_sales/club_sales_entity.dart';
import 'package:raver_partners/domain/discounts/discount_facade.dart';
import 'package:raver_partners/domain/discounts/partner_discount_entity.dart';

part 'discounts_cubit.freezed.dart';

part 'discounts_state.dart';

class DiscountsCubit extends Cubit<DiscountsState> {
  final DiscountFacade _discountFacade;

  DiscountsCubit({
    required DiscountFacade discountFacade,
    required OverviewCubit overviewCubit,
  })  : _discountFacade = discountFacade,
        super(DiscountsState.initial()) {
    emit(
      state.copyWith(
        clubSales: some(
          overviewCubit.state.clubSales.getOrCrash(),
        ),
      ),
    );
  }

  Future<void> getDiscounts() async {
    emit(state.copyWith(status: CubitStatus.loading));

    final failureOrSuccess = await _discountFacade.getAllDiscounts();

    failureOrSuccess.fold(
      (_) => emit(state.copyWith(status: CubitStatus.failure)),
      (discounts) => emit(
        state.copyWith(
          discounts: discounts,
          status: CubitStatus.success,
        ),
      ),
    );
  }
}
