import 'dart:async';

import 'package:common/common.dart';
import 'package:dartz/dartz.dart';
import 'package:events/domain/domain.dart';
import 'package:payments/application/core/tonight_payment_method.dart';
import 'package:payments/domain/domain.dart';
import 'package:tickets/domain/domain.dart';
import 'package:tonight/application/ticket_checkout/aggregator/ticket_checkout_failure.dart';
import 'package:tonight/application/ticket_checkout/model/ticket_checkout_data_model.dart';

class TicketCheckoutAggregator {
  final UserPaymentFacade _userPaymentFacade;
  final UserTicketFacade _userTicketFacade;
  final UserEventTicketsFacade _userEventTicketsFacade;
  final CurrencyParamsFacade _currencyParamsFacade;

  TicketCheckoutAggregator(
    this._userPaymentFacade,
    this._userTicketFacade,
    this._userEventTicketsFacade,
    this._currencyParamsFacade,
  );

  Future<Either<TicketCheckoutFailure, Ticket>> proceedToPayForTicket({
    required String eventId,
    required String currency,
    required TonightPaymentMethod paymentMethod,
    required double amount,
    required int quantity,
    required String customerEmail,
    String? promotionCode,
    bool sendInvoice = false,
  }) async {
    StreamSubscription<Either<UserTicketFailure, Ticket>>? ticketSubscription;
    final ticketController =
        StreamController<Either<UserTicketFailure, Ticket>>();

    ticketSubscription =
        _userTicketFacade.waitForTicketToBeCreated().listen((event) {
      ticketController.add(event);
    });

    final proceedToPayResult = await _userPaymentFacade.proceedToPayForTicket(
      currency: currency,
      eventId: eventId,
      promotionCode: promotionCode,
      paymentMethod: paymentMethod,
      amount: amount,
      quantity: quantity,
      sendInvoice: sendInvoice,
      customerEmail: customerEmail,
    );

    if (proceedToPayResult.isLeft()) {
      final failure = proceedToPayResult.getLeftOrCrash();
      await ticketSubscription.cancel();
      ticketController.close();
      return left(TicketCheckoutFailure.fromDomain(failure));
    }

    final ticketResult = await ticketController.stream.first;
    await ticketSubscription.cancel();
    await ticketController.close();
    return ticketResult.fold(
      (failure) => left(const TicketCheckoutFailure.ticketCreationFailed()),
      (ticket) => right(ticket),
    );
  }

  Future<Either<TicketCheckoutFailure, PromotionCode>> fetchPromotionCode(
    String code,
  ) async {
    final result = await _userPaymentFacade.getPromotionCode(code);
    return result.fold(
      (failure) => left(TicketCheckoutFailure.fromDomain(failure)),
      (code) => right(code),
    );
  }

  Stream<Either<TicketCheckoutFailure, TicketCheckoutData>> initCheckoutData(
    Event event,
  ) async* {
    final results = await Future.wait([
      _userPaymentFacade.getServiceFee(),
      _currencyParamsFacade.getCurrencyParams(event.currency),
      _userPaymentFacade.getCustomerData(),
    ]);

    final failures = [...results.whereType<Left>()];

    if (failures.isNotEmpty) {
      yield left(failures.first.getLeftOrCrash());
      return;
    }

    final serviceFee = results[0] as Either<UserPaymentFailure, double>;
    final currencyParams =
        results[1] as Either<CurrencyParamsFailure, CurrencyParams>;
    final customerData = results[2] as Either<UserPaymentFailure, CustomerData>;

    yield* _userEventTicketsFacade
        .getEventTickets(clubId: event.clubId, eventId: event.id)
        .map(
          (result) => result.fold(
            (_) => left(const TicketCheckoutFailure.unexpected()),
            (eventTickets) => right(
              TicketCheckoutData.fromDomain(
                event: event,
                eventTickets: eventTickets,
                currencyParams: currencyParams.getRightOrCrash(),
                customerData: customerData.getRightOrCrash(),
                serviceFee: serviceFee.getRightOrCrash(),
              ),
            ),
          ),
        );
  }

  Future<Either<TicketCheckoutFailure, Unit>> updateCustomerEmail(
    String email,
  ) async {
    final result = await _userPaymentFacade.updateCustomerEmail(email);
    return result.fold(
      (failure) => left(const TicketCheckoutFailure.unexpected()),
      (_) => right(unit),
    );
  }
}
