import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:raver/domain/tickets/ticket_overview/ticket_overview_entity.dart';
import 'package:raver/domain/tickets/ticket_overview/ticket_overview_facade.dart';
import 'package:raver/domain/tickets/ticket_overview/ticket_overview_failure.dart';

part 'ticket_overview_cubit.freezed.dart';

part 'ticket_overview_state.dart';

@injectable
class TicketOverviewCubit extends Cubit<TicketOverviewState> {
  final TicketOverviewFacade _ticketOverviewFacade;

  TicketOverviewCubit(this._ticketOverviewFacade)
      : super(const TicketOverviewState.initial());

  Future<void> getTickets() async {
    emit(const TicketOverviewState.loadInProgress());

    Either<TicketOverviewFailure, List<TicketOverview>> failureOrSuccess =
    await _ticketOverviewFacade.getTickets();

    failureOrSuccess.fold((failure) =>
        emit(TicketOverviewState.loadFailure(failure)), (tickets) =>
        emit(TicketOverviewState.loadSuccess(tickets)));
  }
}
