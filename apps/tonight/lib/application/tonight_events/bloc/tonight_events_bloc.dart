import 'dart:async';

import 'package:common/common.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tonight/application/tonight_events/aggregator/tonight_events_aggregator.dart';
import 'package:tonight/application/tonight_events/models/tonight_event_model.dart';

part 'tonight_events_bloc.freezed.dart';
part 'tonight_events_event.dart';
part 'tonight_events_state.dart';

const _pageSize = 15;

class TonightEventsBloc extends Bloc<TonightEventsEvent, TonightEventsState> {
  final TonightEventsAggregator _tonightEventsAggregator;

  TonightEventsBloc(this._tonightEventsAggregator)
      : super(TonightEventsState.initial()) {
    on<_EventsFetched>(_onEventsFetched);
    on<_NextPageEventsFetched>(
      _onNextPageEventsFetched,
      transformer: throttleDroppable(),
    );
  }

  FutureOr<void> _onEventsFetched(
    _EventsFetched event,
    Emitter<TonightEventsState> emit,
  ) async {
    emit(state.copyWith(getEventsStatus: CubitStatus.loading));

    final result =
        await _tonightEventsAggregator.fetchTonightEvents(pageSize: _pageSize);

    result.fold(
      (failure) => emit(state.copyWith(getEventsStatus: CubitStatus.failure)),
      (events) => emit(
        state.copyWith(
          getEventsStatus: CubitStatus.success,
          events: events,
          hasReachedMax: events.length != _pageSize,
        ),
      ),
    );
  }

  FutureOr<void> _onNextPageEventsFetched(
    _NextPageEventsFetched event,
    Emitter<TonightEventsState> emit,
  ) async {
    if (state.hasReachedMax || state.events.isEmpty) return;

    emit(state.copyWith(nextPageStatus: CubitStatus.loading));

    final result = await _tonightEventsAggregator.fetchTonightEvents(
      pageSize: _pageSize,
      offset: state.events.length,
    );

    result.fold(
      (failure) => emit(state.copyWith(nextPageStatus: CubitStatus.failure)),
      (events) => emit(
        state.copyWith(
          nextPageStatus: CubitStatus.success,
          events: [...state.events, ...events],
          hasReachedMax: events.length != _pageSize,
        ),
      ),
    );
  }
}
