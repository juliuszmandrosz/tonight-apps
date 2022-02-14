part of 'ticket_overview_cubit.dart';

@freezed
class TicketOverviewState with _$TicketOverviewState {
  const factory TicketOverviewState.initial() = _Initial;

  const factory TicketOverviewState.loadInProgress() = _LoadInProgress;

  const factory TicketOverviewState.loadSuccess(List<TicketOverview> tickets) =
      _LoadSuccess;

  const factory TicketOverviewState.loadFailure(
      TicketOverviewFailure ticketOverviewFailure) = _LoadFailure;
}
