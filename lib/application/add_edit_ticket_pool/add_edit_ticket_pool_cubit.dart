import 'dart:math';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:raver_clubs/raver_clubs.dart';
import 'package:raver_common/extensions/option_extensions.dart';
import 'package:raver_events/raver_events.dart';
import 'package:raver_partners/application/add_edit_ticket_pool/form_inputs/ticket_price.dart';
import 'package:raver_partners/application/add_edit_ticket_pool/form_inputs/ticket_quantity.dart';
import 'package:raver_partners/application/club_info/club_info_cubit.dart';
import 'package:raver_translations/raver_translations.dart';

part 'add_edit_ticket_pool_cubit.freezed.dart';

part 'add_edit_ticket_pool_state.dart';

class AddEditTicketPoolCubit extends Cubit<AddEditTicketPoolState> {
  final ClubInfoCubit _clubInfoCubit;

  AddEditTicketPoolCubit({required ClubInfoCubit clubInfoCubit})
      : _clubInfoCubit = clubInfoCubit,
        super(AddEditTicketPoolState.initial()) {
    emit(state.copyWith(clubInfo: _clubInfoCubit.state.club));
  }

  void ticketQuantityChanged(int? value) {
    final quantity = TicketQuantity.dirty(value);
    emit(state.copyWith(ticketQuantity: quantity));
  }

  void ticketPriceChanged(int? value) {
    final price = TicketPrice.dirty(
      currencyParams: _clubInfoCubit.state.currencyParams,
      value: value,
    );
    emit(state.copyWith(ticketPrice: price));
  }

  addCurrentTicketPoolsToState(List<TicketPool> currentPools) {
    emit(state.copyWith(currentTicketPools: currentPools));
  }

  addEditingTicketPoolToState(TicketPool ticketPool) {
    final price = TicketPrice.dirty(
      currencyParams: _clubInfoCubit.state.currencyParams,
      value: ticketPool.ticketPrice,
    );
    final quantity = TicketQuantity.dirty(ticketPool.ticketQuantity);
    emit(
      state.copyWith(
        editingTicketPool: some(ticketPool),
        ticketPrice: price,
        ticketQuantity: quantity,
      ),
    );
  }

  void addTicketPool() async {
    if (!_validateForm()) return;
    if (!_checkIfPoolPriceIsHigherThanPreviousPools()) return;

    final club = _clubInfoCubit.state.club.getOrCrash();
    final currentPools = state.currentTicketPools;
    final isCurrent =
        currentPools.isEmpty || currentPools.every((pool) => pool.isSoldOut);

    final ticketPool = TicketPool(
      currency: club.acceptedCurrency,
      poolNumber: currentPools.length + 1,
      ticketPrice: state.ticketPrice.value!,
      ticketQuantity: state.ticketQuantity.value!,
      isCurrent: isCurrent,
    );

    emit(
      state.copyWith(
        status: FormzStatus.submissionSuccess,
        result: some(ticketPool),
      ),
    );
  }

  void editTicketPool() async {
    if (!_validateForm()) return;
    if (!_checkIfPoolPriceIsHigherThanPreviousPools()) return;
    if (!_checkIfPoolPriceIsLowerThanNextPool()) return;

    if (state.editingTicketPool.getOrCrash().ticketsSold > 0) {
      if (!_checkIfPriceHasBeenEdited()) return;
      if (!_checkIfQuantityHasBeenSetToLessThanTicketsSold()) return;
    }

    final poolInState = state.editingTicketPool.getOrCrash();

    final editedPool = poolInState.copyWith(
      ticketQuantity: state.ticketQuantity.value!,
      ticketPrice: state.ticketPrice.value!,
    );

    emit(
      state.copyWith(
        status: FormzStatus.submissionSuccess,
        result: some(editedPool),
      ),
    );
  }

  bool _validateForm() {
    emit(
      state.copyWith(
        ticketQuantity: TicketQuantity.dirty(state.ticketQuantity.value),
        ticketPrice: TicketPrice.dirty(
          currencyParams: _clubInfoCubit.state.currencyParams,
          value: state.ticketPrice.value,
        ),
      ),
    );

    final status = Formz.validate([state.ticketQuantity, state.ticketPrice]);

    emit(state.copyWith(status: status));

    return status.isValid;
  }

  bool _checkIfPriceHasBeenEdited() {
    final editingPool = state.editingTicketPool.getOrCrash();

    if (editingPool.ticketPrice != state.ticketPrice.value!) {
      _showErrorMessage(S().priceChangedAfterTicketWasSold);

      return false;
    }

    return true;
  }

  bool _checkIfQuantityHasBeenSetToLessThanTicketsSold() {
    final editingPool = state.editingTicketPool.getOrCrash();

    if (editingPool.ticketsSold > state.ticketQuantity.value!) {
      _showErrorMessage(
        '${S().quantityChangedToLessThanTicketsSold} '
        '(${editingPool.ticketsSold})',
      );

      return false;
    }

    return true;
  }

  bool _checkIfPoolPriceIsHigherThanPreviousPools() {
    final previousPoolsMaxPrice = _getMaxPriceOfPreviousPools();

    if (previousPoolsMaxPrice >= state.ticketPrice.value!) {
      _showErrorMessage(
        '${S().poolPriceLowerThanPreviousPools} '
        '($previousPoolsMaxPrice)',
      );

      return false;
    }

    return true;
  }

  bool _checkIfPoolPriceIsLowerThanNextPool() {
    final nextPoolsMaxPrice = _getNextPoolPrice();

    if (nextPoolsMaxPrice != null &&
        nextPoolsMaxPrice <= state.ticketPrice.value!) {
      _showErrorMessage(
        '${S().poolPriceHigherThanNextPool} '
        '($nextPoolsMaxPrice)',
      );

      return false;
    }

    return true;
  }

  _getMaxPriceOfPreviousPools() {
    final previousPools = state.editingTicketPool.fold(
      () => state.currentTicketPools,
      (poolInState) => state.currentTicketPools.where(
        (pool) => pool.poolNumber < poolInState.poolNumber,
      ),
    );

    return previousPools.isNotEmpty
        ? previousPools.map((pool) => pool.ticketPrice).reduce(max)
        : 0;
  }

  int? _getNextPoolPrice() {
    final currentPool = state.editingTicketPool.getOrCrash();

    final nextPool = state.currentTicketPools.firstWhereOrNull(
      (pool) => pool.poolNumber == currentPool.poolNumber + 1,
    );

    return nextPool?.ticketPrice;
  }

  _showErrorMessage(String message) {
    emit(state.copyWith(errorMessage: some(message)));
    emit(state.copyWith(errorMessage: none()));
  }
}
