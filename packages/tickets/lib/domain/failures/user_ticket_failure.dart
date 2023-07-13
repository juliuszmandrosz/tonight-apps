import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:translations/translations.dart';

part 'user_ticket_failure.freezed.dart';

@freezed
class UserTicketFailure with _$UserTicketFailure {
  const factory UserTicketFailure.unexpected() = _Unexpected;

  const factory UserTicketFailure.permissionDenied() = _PermissionDenied;

  const factory UserTicketFailure.returnTimeIsOver() = _ReturnTimeIsOver;

  const factory UserTicketFailure.ticketExpired() = _TicketExpired;

  const factory UserTicketFailure.ticketNotExists() = _TicketNotExists;
}

extension UserTicketFailureX on UserTicketFailure {
  String get message {
    return when(
      unexpected: () => S().serverError,
      returnTimeIsOver: () => S().returnTimeIsOver,
      permissionDenied: () => S().operationNotAllowed,
      ticketExpired: () => S().ticketExpired,
      ticketNotExists: () => S().ticketNotExists,
    );
  }
}
