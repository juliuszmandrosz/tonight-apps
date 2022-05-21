import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_ticket_failure.freezed.dart';

@freezed
class UserTicketFailure with _$UserTicketFailure {
  const factory UserTicketFailure.unexpected() = _Unexpected;

  const factory UserTicketFailure.returnTimeIsOver() = _ReturnTimeIsOver;
}
