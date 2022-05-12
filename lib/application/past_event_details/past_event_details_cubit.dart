import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:raver_common/application/application.dart';
import 'package:raver_events/raver_events.dart';

part 'past_event_details_cubit.freezed.dart';

part 'past_event_details_state.dart';

class PastEventDetailsCubit extends Cubit<PastEventDetailsState> {
  final PartnerEventTicketsFacade _eventTicketsFacade;
  late StreamSubscription _eventTicketsSub;

  PastEventDetailsCubit(this._eventTicketsFacade)
      : super(PastEventDetailsState.initial());

  void addEventToState(Event event) {
    emit(state.copyWith(event: some(event)));
  }

  Future<void> getEventTickets(Event event) async {
    emit(state.copyWith(status: CubitStatus.loading));
    _eventTicketsSub =
        _eventTicketsFacade.getEventTickets(event).listen((result) {
      result.fold(
        (failure) => emit(
          state.copyWith(status: CubitStatus.failure),
        ),
        (tickets) => emit(
          state.copyWith(
            status: CubitStatus.success,
            eventTickets: some(tickets),
          ),
        ),
      );
    });
  }

  @override
  Future<void> close() {
    _eventTicketsSub.cancel();
    return super.close();
  }
}
