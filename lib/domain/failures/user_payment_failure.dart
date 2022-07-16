import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_payment_failure.freezed.dart';

@freezed
class UserPaymentFailure with _$UserPaymentFailure {
  const factory UserPaymentFailure.unexpected() = _Unexpected;

  const factory UserPaymentFailure.permissionDenied() = _PermissionDenied;

  const factory UserPaymentFailure.stripeError() = _StripeError;

  const factory UserPaymentFailure.invalidPromotionCode() =
      _InvalidPromotionCode;

  const factory UserPaymentFailure.promotionCodeExpired() =
      _PromotionCodeExpired;

  const factory UserPaymentFailure.invalidEvent() = _InvalidEvent;

  const factory UserPaymentFailure.canceledByUser() = _CanceledByUser;

  const factory UserPaymentFailure.ticketAlreadyHasVip() = _TicketAlreadyHasVip;

  const factory UserPaymentFailure.eventCanceled() = _EventCanceled;

  const factory UserPaymentFailure.eventBeingPostponed() = _EventBeingPostponed;

  const factory UserPaymentFailure.returnTimeExpired() = _ReturnTimeExpired;

  const factory UserPaymentFailure.invalidCountryCode() = _InvalidCountryCode;

  const factory UserPaymentFailure.invalidVatNumber() = _InvalidVatNumber;

  const factory UserPaymentFailure.vipNoLongerAvailable() =
      _VipNoLongerAvailable;

  const factory UserPaymentFailure.eventHasEnded() = _EventHasEnded;

  const factory UserPaymentFailure.eventSoldOut() = _EventSoldOut;

  const factory UserPaymentFailure.userAlreadyHasTicket() =
      _UserAlreadyHasTicket;

  const factory UserPaymentFailure.paymentHasAlreadyBeenMade() =
      _PaymentHasAlreadyBeenMade;

  const factory UserPaymentFailure.paymentSessionHasExpired() =
      _PaymentSessionHasExpired;
}
