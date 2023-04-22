import 'dart:async';

import 'package:common/common.dart';
import 'package:dartz/dartz.dart';
import 'package:events/domain/domain.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'event_overview_bloc.freezed.dart';
part 'event_overview_event.dart';
part 'event_overview_state.dart';

const _pageSize = 20;

class EventOverviewBloc extends Bloc<EventOverviewEvent, EventOverviewState> {
  final CommonEventFacade _eventFacade;

  EventOverviewBloc(this._eventFacade) : super(EventOverviewState.initial()) {
    on<_NextEventsPageFetched>(
      _onNextEventsPageFetched,
      transformer: throttleDroppable(),
    );

    on<_EventsFetched>((event, emit) => _onEventsFetched(event, emit));

    on<_EventToStateAdded>((event, emit) => _onEventToStateAdded(event, emit));

    on<_EventInStateUpdated>(
        (event, emit) => _onEventInStateUpdated(event, emit));

    on<_EventInStateDeleted>(
        (event, emit) => _onEventInStateDeleted(event, emit));
  }

  Future<void> _onEventsFetched(
    _EventsFetched event,
    Emitter<EventOverviewState> emit,
  ) async {
    emit(state.copyWith(status: CubitStatus.loading));

    final failureOrSuccess = await _eventFacade.getEvents(
      event.filters,
      event.sortModel,
      pageSize: _pageSize,
    );

    failureOrSuccess.fold(
      (failure) => emit(
        state.copyWith(
          status: CubitStatus.failure,
          failure: some(failure),
        ),
      ),
      (events) => emit(
        state.copyWith(
          status: CubitStatus.success,
          events: events,
          hasReachedMax: events.length != _pageSize,
          eventFilters: event.filters,
          sortModel: event.sortModel,
        ),
      ),
    );
  }

  Future<void> _onNextEventsPageFetched(
      _NextEventsPageFetched event, Emitter<EventOverviewState> emit) async {
    if (state.hasReachedMax || state.events.isEmpty) return;

    emit(state.copyWith(nextPageStatus: CubitStatus.loading));

    final failureOrSuccess = await _eventFacade.getEvents(
      state.eventFilters,
      state.sortModel,
      pageSize: _pageSize,
      offset: state.events.length,
    );

    failureOrSuccess.fold(
      (failure) => emit(
        state.copyWith(
          nextPageStatus: CubitStatus.failure,
          failure: some(failure),
        ),
      ),
      (events) => emit(
        state.copyWith(
          nextPageStatus: CubitStatus.success,
          events: [...state.events, ...events],
          hasReachedMax: events.length != _pageSize,
        ),
      ),
    );
  }

  _onEventToStateAdded(
    _EventToStateAdded event,
    Emitter<EventOverviewState> emit,
  ) {
    final eventsCopy = [...state.events];
    eventsCopy.add(event.event);
    _sortEventsByStartDate(eventsCopy);
    emit(state.copyWith(events: eventsCopy));
  }

  _sortEventsByStartDate(List<Event> events) {
    events.sort((a, b) {
      final firstDate = a.eventStartDateTime;
      final secondDate = b.eventStartDateTime;

      return firstDate.compareTo(secondDate);
    });
  }

  _onEventInStateUpdated(
    _EventInStateUpdated event,
    Emitter<EventOverviewState> emit,
  ) {
    final eventsCopy = [...state.events];
    final index = eventsCopy.indexOf(event.oldEvent);
    eventsCopy[index] = event.updatedEvent;
    _sortEventsByStartDate(eventsCopy);
    emit(state.copyWith(events: eventsCopy));
  }

  _onEventInStateDeleted(
    _EventInStateDeleted event,
    Emitter<EventOverviewState> emit,
  ) {
    final eventsCopy = [...state.events];
    eventsCopy.remove(event.event);
    emit(state.copyWith(events: eventsCopy));
  }
}
