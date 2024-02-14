import 'dart:async';

import 'package:common/application/application.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tonight/domain/marketplace_discounts/marketplace_discount_entity.dart';
import 'package:tonight/domain/marketplace_discounts/marketplace_discount_facade.dart';
import 'package:tonight/domain/user_marketplace_discounts/user_marketplace_discount_entity.dart';
import 'package:tonight/domain/user_marketplace_discounts/user_marketplace_discount_facade.dart';

part 'marketplace_discounts_bloc.freezed.dart';
part 'marketplace_discounts_event.dart';
part 'marketplace_discounts_state.dart';

const _pageSize = 20;

class MarketplaceDiscountsBloc
    extends Bloc<MarketplaceDiscountsEvent, MarketplaceDiscountsState> {
  final MarketplaceDiscountFacade _marketplaceDiscountFacade;
  final UserMarketplaceDiscountFacade _userMarketplaceDiscountFacade;

  MarketplaceDiscountsBloc(
    this._marketplaceDiscountFacade,
    this._userMarketplaceDiscountFacade,
  ) : super(MarketplaceDiscountsState.initial()) {
    on<_StateInitialized>(_onStateInitialized);
    on<_AvailableDiscountsFetched>(_onAvailableDiscountsFetched);
    on<_NextPageAvailableDiscountsFetched>(
      _onNextPageAvailableDiscountsFetched,
      transformer: throttleDroppable(),
    );
    on<_UserDiscountsFetched>(_onUserDiscountsFetched);
    on<_NextPageUserDiscountsFetched>(
      _onNextPageUserDiscountsFetched,
      transformer: throttleDroppable(),
    );
    on<_DiscountRedeemed>(_onDiscountRedeemed);
  }

  FutureOr<void> _onStateInitialized(
    _StateInitialized event,
    Emitter<MarketplaceDiscountsState> emit,
  ) {
    emit(state.copyWith(availableRaverCoins: event.availableRaverCoins));
  }

  FutureOr<void> _onAvailableDiscountsFetched(
    _AvailableDiscountsFetched event,
    Emitter<MarketplaceDiscountsState> emit,
  ) async {
    emit(state.copyWith(getAvailableDiscountsStatus: CubitStatus.loading));
    final result = await _marketplaceDiscountFacade.getAvailableDiscounts(
      pageSize: _pageSize,
    );
    result.fold(
      (_) => emit(
        state.copyWith(getAvailableDiscountsStatus: CubitStatus.failure),
      ),
      (discounts) => emit(
        state.copyWith(
          getAvailableDiscountsStatus: CubitStatus.success,
          availableDiscounts: discounts,
          hasReachedEndOfAvailableDiscounts: discounts.length < _pageSize,
        ),
      ),
    );
  }

  FutureOr<void> _onNextPageAvailableDiscountsFetched(
    _NextPageAvailableDiscountsFetched event,
    Emitter<MarketplaceDiscountsState> emit,
  ) async {
    emit(
      state.copyWith(
        fetchNextPageAvailableDiscountsStatus: CubitStatus.loading,
      ),
    );
    final result = await _marketplaceDiscountFacade.getAvailableDiscounts(
      pageSize: _pageSize,
      lastDiscount: state.availableDiscounts.last,
    );
    result.fold(
      (_) => emit(
        state.copyWith(
          fetchNextPageAvailableDiscountsStatus: CubitStatus.failure,
        ),
      ),
      (discounts) => emit(
        state.copyWith(
          fetchNextPageAvailableDiscountsStatus: CubitStatus.success,
          availableDiscounts: state.availableDiscounts + discounts,
          hasReachedEndOfAvailableDiscounts: discounts.length < _pageSize,
        ),
      ),
    );
  }

  FutureOr<void> _onUserDiscountsFetched(
    _UserDiscountsFetched event,
    Emitter<MarketplaceDiscountsState> emit,
  ) async {
    emit(state.copyWith(getUserDiscountsStatus: CubitStatus.loading));
    final result = await _userMarketplaceDiscountFacade.getUserDiscounts(
      pageSize: _pageSize,
    );
    result.fold(
      (_) => emit(state.copyWith(getUserDiscountsStatus: CubitStatus.failure)),
      (discounts) => emit(
        state.copyWith(
          getUserDiscountsStatus: CubitStatus.success,
          userDiscounts: discounts,
          hasReachedEndOfUserDiscounts: discounts.length < _pageSize,
        ),
      ),
    );
  }

  FutureOr<void> _onNextPageUserDiscountsFetched(
    _NextPageUserDiscountsFetched event,
    Emitter<MarketplaceDiscountsState> emit,
  ) async {
    emit(state.copyWith(fetchNextPageUserDiscountsStatus: CubitStatus.loading));
    final result = await _userMarketplaceDiscountFacade.getUserDiscounts(
      pageSize: _pageSize,
      lastDiscount: state.userDiscounts.last,
    );
    result.fold(
        (_) => emit(
              state.copyWith(
                  fetchNextPageUserDiscountsStatus: CubitStatus.failure),
            ),
        (discounts) => emit(
              state.copyWith(
                fetchNextPageUserDiscountsStatus: CubitStatus.success,
                userDiscounts: state.userDiscounts + discounts,
                hasReachedEndOfUserDiscounts: discounts.length < _pageSize,
              ),
            ));
  }

  FutureOr<void> _onDiscountRedeemed(
    _DiscountRedeemed event,
    Emitter<MarketplaceDiscountsState> emit,
  ) {
    emit(
      state.copyWith(
        availableRaverCoins: state.availableRaverCoins - event.discount.price,
      ),
    );
  }
}
