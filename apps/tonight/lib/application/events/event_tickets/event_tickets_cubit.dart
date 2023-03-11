import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:raver_common/raver_common.dart';
import 'package:raver_events/raver_events.dart';

part 'event_tickets_cubit.freezed.dart';
part 'event_tickets_state.dart';

class EventTicketsCubit extends Cubit<EventTicketsState> {
  final UserEventTicketsFacade _eventTicketsFacade;
  late StreamSubscription _eventTicketsSub;
  var isStreamInitiated = false;

  EventTicketsCubit(
    this._eventTicketsFacade,
  ) : super(EventTicketsState.initial());

  void getEventTickets({
    required String clubId,
    required String eventId,
  }) {
    emit(state.copyWith(status: CubitStatus.loading));
    _initListener(clubId, eventId);
  }

  //TODO: After general ui refactor
  // void changeVisibility(bool isVisible) {
  //   if (isVisible && !isStreamInitiated) {
  //     _initListener(state.event.getOrCrash());
  //     return;
  //   }
  //   if (!isVisible) {
  //     _eventTicketsSub.cancel();
  //     isStreamInitiated = false;
  //   }
  // }

  void _initListener(String clubId, String eventId) async {
    _eventTicketsSub = _eventTicketsFacade
        .getEventTickets(clubId: clubId, eventId: eventId)
        .listen(
      (result) {
        result.fold((failure) {
          emit(state.copyWith(status: CubitStatus.failure));
        }, (tickets) {
          emit(
            state.copyWith(
              status: CubitStatus.success,
              eventTickets: some(tickets),
            ),
          );
        });
      },
    );
    isStreamInitiated = true;
  }

  @override
  Future<void> close() {
    _eventTicketsSub.cancel();
    return super.close();
  }
}
