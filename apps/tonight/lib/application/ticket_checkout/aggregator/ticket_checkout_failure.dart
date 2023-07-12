import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:payments/domain/domain.dart';
import 'package:translations/translations.dart';

part 'ticket_checkout_failure.freezed.dart';

@freezed
class TicketCheckoutFailure with _$TicketCheckoutFailure {
  const factory TicketCheckoutFailure.unexpected() = _Unexpected;

  const factory TicketCheckoutFailure.paymentFailed(String message) =
      _PaymentFailed;

  const factory TicketCheckoutFailure.sessionExpired() = _SessionExpired;

  const factory TicketCheckoutFailure.ticketCreationFailed() =
      _TicketCreationFailed;

  const factory TicketCheckoutFailure.invalidPromotionCode() =
      _InvalidPromotionCode;

  const factory TicketCheckoutFailure.promotionCodeExpired() =
      _PromotionCodeExpired;

  const factory TicketCheckoutFailure.canceledByUser() = _CanceledByUser;

  const factory TicketCheckoutFailure.eventHasEnded() = _EventHasEnded;

  const factory TicketCheckoutFailure.eventCanceled() = _EventCanceled;

  const factory TicketCheckoutFailure.eventSoldOut() = _EventSoldOut;

  const factory TicketCheckoutFailure.customerEmailIsEmpty() =
      _CustomerEmailIsEmpty;

  // TODO - add payment already been made

  factory TicketCheckoutFailure.fromDomain(UserPaymentFailure failure) =>
      failure.maybeWhen(
        canceledByUser: () => const TicketCheckoutFailure.canceledByUser(),
        eventCanceled: () => const TicketCheckoutFailure.eventCanceled(),
        eventHasEnded: () => const TicketCheckoutFailure.eventHasEnded(),
        eventSoldOut: () => const TicketCheckoutFailure.eventSoldOut(),
        promotionCodeExpired: () =>
            const TicketCheckoutFailure.promotionCodeExpired(),
        invalidPromotionCode: () =>
            const TicketCheckoutFailure.invalidPromotionCode(),
        paymentSessionHasExpired: () =>
            const TicketCheckoutFailure.sessionExpired(),
        stripeError: (message) =>
            TicketCheckoutFailure.paymentFailed(message ?? S().paymentError),
        customerEmailIsEmpty: () =>
            const TicketCheckoutFailure.customerEmailIsEmpty(),
        orElse: () => const TicketCheckoutFailure.unexpected(),
      );
}

extension TicketCheckoutFailureX on TicketCheckoutFailure {
  String get message => map(
        unexpected: (_) => S().serverError,
        paymentFailed: (error) => error.message,
        invalidPromotionCode: (_) => S().invalidPromotionCode,
        promotionCodeExpired: (_) => S().promotionCodeHasExpired,
        eventCanceled: (_) => S().eventCancelled,
        eventHasEnded: (_) => S().eventHasEnded,
        eventSoldOut: (_) => S().eventSoldOut,
        sessionExpired: (_) => S().paymentSessionExpired,
        ticketCreationFailed: (_) =>
            // TODO - add translations
            'Błąd podczas dodawania biletu, sprawdź swój profil czy bilet został dodany, jeśli nie dzwoń pod 512 263 472',
        customerEmailIsEmpty: (_) => 'Nie podano adresu email',
        canceledByUser: (_) => '',
      );
}
