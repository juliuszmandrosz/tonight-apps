import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:raver_common/raver_common.dart';
import 'package:raver_tickets/raver_tickets.dart';

part 'ticket_list_cubit.freezed.dart';
part 'ticket_list_state.dart';

class TicketListCubit extends Cubit<TicketListState> {
  final UserTicketFacade _ticketFacade;
  late StreamSubscription _ticketListSubscription;

  TicketListCubit(this._ticketFacade) : super(TicketListState.initial());

  Future<void> getTickets() async {
    emit(state.copyWith(status: CubitStatus.loading));

    _ticketListSubscription = _ticketFacade.getUserTickets().listen((result) {
      result.fold(
        (failure) => emit(
          state.copyWith(status: CubitStatus.failure),
        ),
        (tickets) => emit(
          state.copyWith(status: CubitStatus.success, tickets: tickets),
        ),
      );
    });
  }

  @override
  Future<void> close() {
    _ticketListSubscription.cancel();
    return super.close();
  }
}
