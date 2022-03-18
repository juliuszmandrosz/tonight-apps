import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:raver_common/raver_common.dart';
import 'package:raver_events/domain/event_entity.dart';
import 'package:raver_events/domain/event_facade.dart';
import 'package:raver_events/domain/filters/event_filters_entity.dart';

part 'event_overview_bloc.freezed.dart';

part 'event_overview_event.dart';

part 'event_overview_state.dart';

const pageSize = 20;
const throttleDuration = Duration(milliseconds: 500);

class EventOverviewBloc extends Bloc<EventOverviewEvent, EventOverviewState> {
  final EventFacade _eventFacade;

  EventOverviewBloc(this._eventFacade) : super(EventOverviewState.initial()) {
    on<_NextEventsPageFetched>(
      _onNextEventsPageFetched,
      transformer: throttleDroppable(throttleDuration),
    );

    on<_EventsFetched>((event, emit) => _onEventsFetched(event, emit));
  }

  Future<void> _onEventsFetched(
    _EventsFetched event,
    Emitter<EventOverviewState> emit,
  ) async {
    emit(state.copyWith(status: CubitStatus.loading));

    final failureOrSuccess =
        await _eventFacade.getEvents(event.filters, pageSize: pageSize);

    failureOrSuccess.fold(
      (failure) => emit(
        state.copyWith(status: CubitStatus.failure),
      ),
      (events) => emit(
        state.copyWith(
          status: CubitStatus.success,
          events: events,
          hasReachedMax: events.length != pageSize,
          eventFilters: event.filters,
        ),
      ),
    );
  }

  Future<void> _onNextEventsPageFetched(
      _NextEventsPageFetched event, Emitter<EventOverviewState> emit) async {
    if (state.hasReachedMax) return;

    final failureOrSuccess = await _eventFacade.getEvents(
      state.eventFilters,
      pageSize: pageSize,
      offset: state.events.length,
    );

    failureOrSuccess.fold(
      (failure) => emit(
        state.copyWith(status: CubitStatus.failure),
      ),
      (events) => emit(
        state.copyWith(
          status: CubitStatus.success,
          events: List.of(state.events)..addAll(events),
          hasReachedMax: events.length != pageSize,
        ),
      ),
    );
  }
}
