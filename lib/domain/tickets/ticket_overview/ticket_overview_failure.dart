import 'package:freezed_annotation/freezed_annotation.dart';

part 'ticket_overview_failure.freezed.dart';

@freezed
class TicketOverviewFailure with _$TicketOverviewFailure {
  const factory TicketOverviewFailure.unexpected() = _TicketOverviewFailure;
}
