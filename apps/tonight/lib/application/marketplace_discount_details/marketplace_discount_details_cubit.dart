import 'package:common/application/cubit_status.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tonight/domain/marketplace_discounts/marketplace_discount_entity.dart';
import 'package:tonight/domain/user_marketplace_discounts/user_marketplace_discount_entity.dart';
import 'package:tonight/domain/user_marketplace_discounts/user_marketplace_discount_facade.dart';
import 'package:tonight/domain/user_marketplace_discounts/user_marketplace_discount_failure.dart';

part 'marketplace_discount_details_cubit.freezed.dart';
part 'marketplace_discount_details_state.dart';

class MarketplaceDiscountDetailsCubit
    extends Cubit<MarketplaceDiscountDetailsState> {
  final UserMarketplaceDiscountFacade _userMarketplaceDiscountFacade;

  MarketplaceDiscountDetailsCubit(this._userMarketplaceDiscountFacade)
      : super(MarketplaceDiscountDetailsState.initial());

  redeemDiscount(MarketplaceDiscount discount) async {
    emit(state.copyWith(redeemDiscountStatus: CubitStatus.loading));
    final result =
        await _userMarketplaceDiscountFacade.redeemDiscount(discount.id);
    result.fold(
      (failure) {
        _showMessage(failure.message);
        emit(state.copyWith(redeemDiscountStatus: CubitStatus.failure));
      },
      (discount) => emit(
        state.copyWith(
          redeemDiscountStatus: CubitStatus.success,
          redeemedDiscount: some(discount),
        ),
      ),
    );
  }

  _showMessage(String message) {
    emit(state.copyWith(snackbarMessage: some(message)));
    emit(state.copyWith(snackbarMessage: none()));
  }
}
