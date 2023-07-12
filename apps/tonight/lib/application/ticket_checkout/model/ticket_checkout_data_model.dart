import 'package:common/domain/currency_params/currency_params_entity.dart';
import 'package:events/domain/event_tickets/entities/event_tickets_entity.dart';
import 'package:events/domain/event_tickets/entities/ticket_pool_entity.dart';
import 'package:events/domain/events/event_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:payments/domain/domain.dart';

part 'ticket_checkout_data_model.freezed.dart';

@freezed
class TicketCheckoutData with _$TicketCheckoutData {
  const factory TicketCheckoutData({
    required String eventId,
    required String currency,
    required TicketPool currentTicketPool,
    required double serviceFee,
    required double minimumServiceFeeAmount,
    required CustomerData customerData,
  }) = _TicketCheckoutData;

  factory TicketCheckoutData.fromDomain({
    required Event event,
    required EventTickets eventTickets,
    required CurrencyParams currencyParams,
    required CustomerData customerData,
    required double serviceFee,
  }) =>
      TicketCheckoutData(
        eventId: event.id,
        currency: event.currency,
        currentTicketPool: eventTickets.getCurrentOrLastPool(),
        serviceFee: serviceFee,
        minimumServiceFeeAmount: currencyParams.minServiceFeeAmount,
        customerData: customerData,
      );
}
