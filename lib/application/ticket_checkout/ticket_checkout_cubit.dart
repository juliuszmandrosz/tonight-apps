import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:logger/logger.dart';
import 'package:raver/application/events/event_tickets/event_tickets_cubit.dart';
import 'package:raver/application/ticket_list/ticket_list_cubit.dart';
import 'package:raver_common/raver_common.dart';
import 'package:raver_events/raver_events.dart';
import 'package:raver_payments/domain/domain.dart';
import 'package:raver_payments/domain/facades/user_payment_facade.dart';
import 'package:raver_tickets/raver_tickets.dart';
import 'package:raver_translations/raver_translations.dart';

part 'ticket_checkout_cubit.freezed.dart';
part 'ticket_checkout_state.dart';

class TicketCheckoutCubit extends Cubit<TicketCheckoutState> {
  final UserPaymentFacade _paymentFacade;
  final TicketListCubit _ticketListCubit;
  final EventTicketsCubit _eventTicketsCubit;
  final UserTicketFacade _userTicketFacade;
  late StreamSubscription _eventTicketsSubscription;

  TicketCheckoutCubit({
    required UserPaymentFacade paymentFacade,
    required TicketListCubit ticketListCubit,
    required EventTicketsCubit eventTicketsCubit,
    required UserTicketFacade userTicketFacade,
  })  : _paymentFacade = paymentFacade,
        _ticketListCubit = ticketListCubit,
        _eventTicketsCubit = eventTicketsCubit,
        _userTicketFacade = userTicketFacade,
        super(TicketCheckoutState.initial());

  Future<void> proceedToPayForTicket() async {
    emit(state.copyWith(proceedingToPaymentStatus: CubitStatus.loading));

    final event = state.eventInitData.getOrCrash();

    final failureOrSuccess = await _paymentFacade.proceedToPayForTicket(
      currency: event.currency,
      eventId: event.id,
      promotionCode: state.promotionCode.code,
      isVip: state.isVip,
    );

    await failureOrSuccess.fold(
      (failure) => _emitProceedingToPaymentFailure(failure),
      (success) async => await _waitForTicketToBeCreated(),
    );
  }

  void proceedToPayForVip() async {
    emit(state.copyWith(proceedingToPaymentStatus: CubitStatus.loading));

    final ticketInitData = state.ticketInitData.getOrCrash();

    final failureOrSuccess = await _paymentFacade.proceedToPayForVip(
      ticketId: ticketInitData.id,
      currency: ticketInitData.currency,
    );

    await failureOrSuccess.fold(
      (failure) => _emitProceedingToPaymentFailure(failure),
      (success) async => await _waitForTicketToBeUpdated(),
    );
  }

  void getPromotionCode() async {
    emit(state.copyWith(
      promotionCodeStatus: CubitStatus.loading,
    ));

    final failureOrSuccess = await _paymentFacade
        .getPromotionCode(state.promotionCode.code.toUpperCase());

    failureOrSuccess.fold(
      (failure) => _emitPromotionCodeFailure(failure),
      (code) {
        emit(
          state.copyWith(
            promotionCode: code,
            promotionCodeStatus: CubitStatus.success,
            invalidPromotionCodeMessage: none(),
            checkoutPrice: state.checkoutPrice - code.amountOff,
          ),
        );
      },
    );
  }

  void initEventData(Event event) async {
    emit(state.copyWith(initialStatus: CubitStatus.loading));

    _initEventTicketCubitForTicketPayment(event);
  }

  void initTicketData(Ticket ticket) async {
    emit(state.copyWith(initialStatus: CubitStatus.loading));

    _initEventTicketCubitForVipPayment(ticket);
  }

  void promotionCodeChanged(String value) {
    final promotionCode = state.promotionCode.copyWith(code: value);
    emit(state.copyWith(
      promotionCode: promotionCode,
      invalidPromotionCodeMessage: none(),
    ));
  }

  void resetPromotionCode() {
    emit(
      state.copyWith(
        checkoutPrice: state.checkoutPrice + state.promotionCode.amountOff,
        promotionCode: PromotionCode.empty(),
        promotionCodeStatus: CubitStatus.initial,
        invalidPromotionCodeMessage: none(),
      ),
    );
  }

  void isVipChanged(bool value) {
    final currentTicketPool = state.eventTickets.getOrCrash().getCurrentPool();
    final vipPrice = currentTicketPool.vipPrice;

    final newPrice =
        value ? state.checkoutPrice + vipPrice : state.checkoutPrice - vipPrice;

    emit(
      state.copyWith(
        isVip: value,
        checkoutPrice: newPrice - state.promotionCode.amountOff,
      ),
    );
  }

  _initEventTicketCubitForVipPayment(Ticket ticket) {
    _eventTicketsCubit.getEventTickets(
        clubId: ticket.clubId, eventId: ticket.eventId);

    _eventTicketsSubscription =
        _eventTicketsCubit.stream.listen((eventTicketsState) {
      if (eventTicketsState.status == CubitStatus.failure) {
        emit(state.copyWith(initialStatus: CubitStatus.failure));
      }
      if (eventTicketsState.status == CubitStatus.success) {
        final eventTickets = eventTicketsState.eventTickets.getOrCrash();

        final currentTicketPool = eventTickets.getCurrentPool();

        final vipPrice = currentTicketPool.vipPrice;

        emit(
          state.copyWith(
            ticketInitData: some(ticket),
            eventTickets: some(eventTickets),
            checkoutPrice: vipPrice,
            initialStatus: CubitStatus.success,
            isVip: true,
          ),
        );
      }
    });
  }

  _initEventTicketCubitForTicketPayment(Event event) {
    _eventTicketsCubit.getEventTickets(clubId: event.clubId, eventId: event.id);

    _eventTicketsSubscription =
        _eventTicketsCubit.stream.listen((eventTicketsState) {
      if (eventTicketsState.status == CubitStatus.failure) {
        emit(state.copyWith(initialStatus: CubitStatus.failure));
      }
      if (eventTicketsState.status != CubitStatus.success) return;

      final eventTickets = _eventTicketsCubit.state.eventTickets.getOrCrash();

      final currentTicketPool = eventTickets.getCurrentPool();

      if (state.eventTickets.isSome()) {
        final poolInState = state.eventTickets.getOrCrash().getCurrentPool();

        if (poolInState.poolNumber < currentTicketPool.poolNumber) {
          _notifyTicketPoolSoldOut();
        }

        if (poolInState.poolNumber > currentTicketPool.poolNumber ||
            poolInState.isSoldOut && !currentTicketPool.isSoldOut) {
          _notifyTicketPoolRestored();
        }
      }

      final vipPrice = state.isVip ? currentTicketPool.vipPrice : 0;
      final checkoutPrice = currentTicketPool.ticketPrice + vipPrice;

      emit(state.copyWith(
        eventInitData: some(event),
        checkoutPrice: checkoutPrice - state.promotionCode.amountOff,
        eventTickets: some(eventTickets),
        initialStatus: CubitStatus.success,
      ));
    });
  }

  _notifyTicketPoolSoldOut() {
    emit(state.copyWith(hasTicketPoolSoldOut: true));
    emit(state.copyWith(hasTicketPoolSoldOut: false));
  }

  _notifyTicketPoolRestored() {
    emit(state.copyWith(hasTicketPoolRestored: true));
    emit(state.copyWith(hasTicketPoolRestored: false));
  }

  Future<void> _waitForTicketToBeCreated() async {
    final eventId = state.eventInitData.getOrCrash().id;

    final failureOrSuccess =
        await _userTicketFacade.waitForTicketToBeCreated(eventId);

    failureOrSuccess.fold((failure) => _emitTicketFailure(failure), (ticket) {
      Logger().i(ticket);
      _ticketListCubit.addUpcomingTicketToState(ticket);
      _emitTicketCreated(ticket);
    });
  }

  _emitTicketCreated(Ticket ticket) {
    emit(
      state.copyWith(
        proceedingToPaymentStatus: CubitStatus.success,
        purchasedTicket: some(ticket),
      ),
    );
  }

  Future<void> _waitForTicketToBeUpdated() async {
    final oldTicket = state.ticketInitData.getOrCrash();

    final failureOrSuccess =
        await _userTicketFacade.waitForTicketToBeUpdated(oldTicket.eventId);

    failureOrSuccess.fold((failure) => _emitTicketFailure(failure), (ticket) {
      _ticketListCubit.updateUpcomingTicketInState(oldTicket, ticket);
      _emitTicketUpdated(ticket);
    });
  }

  _emitTicketUpdated(Ticket ticket) {
    emit(
      state.copyWith(
        proceedingToPaymentStatus: CubitStatus.success,
        purchasedTicket: some(ticket),
      ),
    );
  }

  _emitTicketFailure(UserTicketFailure failure) {
    emit(state.copyWith(paymentFailureMessage: some(S().serverError)));

    emit(state.copyWith(
      paymentFailureMessage: none(),
      proceedingToPaymentStatus: CubitStatus.failure,
    ));
  }

  _emitProceedingToPaymentFailure(UserPaymentFailure failure) {
    final message = _getFailureMessage(failure, isPayment: true);

    if (message.isNotEmpty) {
      emit(state.copyWith(paymentFailureMessage: some(message)));
    }

    emit(state.copyWith(
      paymentFailureMessage: none(),
      proceedingToPaymentStatus: CubitStatus.failure,
    ));
  }

  _emitPromotionCodeFailure(UserPaymentFailure failure) {
    final message = _getFailureMessage(failure);

    message == S().serverError
        ? emit(state.copyWith(paymentFailureMessage: some(message)))
        : emit(state.copyWith(invalidPromotionCodeMessage: some(message)));

    emit(
      state.copyWith(
        promotionCodeStatus: CubitStatus.failure,
        paymentFailureMessage: none(),
      ),
    );
  }

  String _getFailureMessage(UserPaymentFailure failure,
      {bool isPayment = false}) {
    return failure.map(
      unexpected: (_) => isPayment ? S().paymentError : S().serverError,
      stripeError: (_) => S().paymentError,
      invalidPromotionCode: (_) => S().invalidPromotionCode,
      promotionCodeExpired: (_) => S().promotionCodeHasExpired,
      invalidEvent: (_) => S().invalidEvent,
      ticketAlreadyHasVip: (_) => S().ticketAlreadyHasVipStatus,
      returnTimeExpired: (_) => S().returnTimeIsOver,
      eventCanceled: (_) => S().eventCancelled,
      eventBeingPostponed: (_) => S().eventBeingPostponed,
      canceledByUser: (_) => '',
    );
  }

  @override
  Future<void> close() {
    _eventTicketsSubscription.cancel();
    return super.close();
  }
}
