import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:collection/collection.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
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
  late StreamSubscription _eventTicketsSubscription;
  late StreamSubscription _ticketListSubscription;

  TicketCheckoutCubit({
    required UserPaymentFacade paymentFacade,
    required TicketListCubit ticketListCubit,
    required EventTicketsCubit eventTicketsCubit,
  })  : _paymentFacade = paymentFacade,
        _ticketListCubit = ticketListCubit,
        _eventTicketsCubit = eventTicketsCubit,
        super(TicketCheckoutState.initial());

  void proceedToPayForTicket() async {
    emit(state.copyWith(proceedingToPaymentStatus: CubitStatus.loading));

    final event = state.eventInitData.getOrCrash();

    final failureOrSuccess = await _paymentFacade.proceedToPayForTicket(
        currency: event.currency,
        eventId: event.id,
        promotionCode: state.promotionCode.code);

    failureOrSuccess.fold(
      (failure) => _emitProceedingToPaymentFailure(failure),
      (_) {
        _waitForTicketToBeCreated();
      },
    );
  }

  void proceedToPayForVip() async {
    emit(state.copyWith(proceedingToPaymentStatus: CubitStatus.loading));

    final ticketInitData = state.ticketInitData.getOrCrash();

    final failureOrSuccess = await _paymentFacade.proceedToPayForVip(
      ticketId: ticketInitData.id,
      currency: ticketInitData.currency,
    );

    failureOrSuccess.fold(
      (failure) => _emitProceedingToPaymentFailure(failure),
      (_) {
        _waitForTicketToBeUpdated();
      },
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

    final newPrice =
        value ? currentTicketPool.vipPrice : currentTicketPool.ticketPrice;

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
        //TODO: This does not work, pool number is needed

        final eventTickets = _eventTicketsCubit.state.eventTickets.getOrCrash();

        final ticketPoolForBoughtTicket = eventTickets.ticketPools
            .firstWhere((pool) => pool.ticketPrice == ticket.price);

        final vipPrice = ticketPoolForBoughtTicket.vipPrice;

        emit(
          state.copyWith(
            ticketInitData: some(ticket),
            eventTickets: some(eventTickets),
            checkoutPrice: vipPrice,
            initialStatus: CubitStatus.success,
            isVip: true,
          ),
        );
        _eventTicketsSubscription.cancel();
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
      if (eventTicketsState.status == CubitStatus.success) {
        final eventTickets = _eventTicketsCubit.state.eventTickets.getOrCrash();

        final currentTicketPool = eventTickets.getCurrentPool();

        if (state.eventTickets.isSome()) {
          if (state.eventTickets.getOrCrash().getCurrentPool() !=
              currentTicketPool) {
            _notifyTicketPoolChanged();
          }
        }

        final checkoutPrice = currentTicketPool.ticketPrice;

        emit(state.copyWith(
          eventInitData: some(event),
          checkoutPrice: checkoutPrice - state.promotionCode.amountOff,
          eventTickets: some(eventTickets),
          initialStatus: CubitStatus.success,
        ));
      }
    });
  }

  _notifyTicketPoolChanged() {
    emit(state.copyWith(hasTicketPoolChanged: true));
    emit(state.copyWith(hasTicketPoolChanged: false));
  }

  _waitForTicketToBeCreated() {
    final eventId = state.eventInitData.getOrCrash().id;

    _ticketListSubscription = _ticketListCubit.stream.listen((ticketListState) {
      final createdTicket = ticketListState.tickets
          .firstWhereOrNull((ticket) => ticket.eventId == eventId);
      if (createdTicket != null) {
        _emitTicketCreated(createdTicket);
        _ticketListSubscription.cancel();
      }
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

  _waitForTicketToBeUpdated() {
    final eventId = state.ticketInitData.getOrCrash().eventId;

    _ticketListSubscription =
        _ticketListCubit.stream.take(1).listen((ticketListState) {
      final updatedTicket = ticketListState.tickets
          .firstWhere((ticket) => ticket.eventId == eventId);
      if (updatedTicket != state.ticketInitData.getOrCrash()) {
        _emitTicketUpdated(updatedTicket);
        _ticketListSubscription.cancel();
      }
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
    _ticketListSubscription.cancel();
    _eventTicketsSubscription.cancel();
    return super.close();
  }
}
