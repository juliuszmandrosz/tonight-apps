import 'dart:async';

import 'package:common/application/cubit_status.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tonight/domain/festivals/festival_entity.dart';
import 'package:tonight/domain/festivals/festival_facade.dart';
import 'package:tonight/domain/festivals/festival_failure.dart';

part 'festivals_bloc.freezed.dart';
part 'festivals_event.dart';
part 'festivals_state.dart';

const _pageSize = 15;

class FestivalsBloc extends Bloc<FestivalsEvent, FestivalsState> {
  final FestivalFacade _festivalFacade;

  FestivalsBloc(this._festivalFacade) : super(FestivalsState.initial()) {
    on<_FestivalsFetched>(_onFestivalsFetched);
    on<_NextPageFestivalsFetched>(_onNextPageFestivalsFetched);
    on<_FestivalsRefreshed>(_onFestivalsRefreshed);
  }

  FutureOr<void> _onFestivalsFetched(
    _FestivalsFetched event,
    Emitter<FestivalsState> emit,
  ) async {
    emit(
      state.copyWith(
        getFestivalsStatus: CubitStatus.loading,
        failure: none(),
      ),
    );

    final result = await _festivalFacade.fetchFestivals(
      pageSize: _pageSize,
    );

    result.fold(
      (failure) => emit(
        state.copyWith(
          getFestivalsStatus: CubitStatus.failure,
          failure: some(failure),
        ),
      ),
      (festivals) => emit(
        state.copyWith(
          getFestivalsStatus: CubitStatus.success,
          festivals: festivals,
          hasReachedMax: festivals.length < _pageSize,
        ),
      ),
    );
  }

  FutureOr<void> _onNextPageFestivalsFetched(
    _NextPageFestivalsFetched event,
    Emitter<FestivalsState> emit,
  ) async {
    if (state.hasReachedMax || state.festivals.isEmpty) return;

    emit(
      state.copyWith(
        nextPageStatus: CubitStatus.loading,
        failure: none(),
      ),
    );

    final result = await _festivalFacade.fetchFestivals(
      pageSize: _pageSize,
      offset: state.festivals.length,
    );

    result.fold(
      (failure) => emit(
        state.copyWith(
          nextPageStatus: CubitStatus.failure,
          failure: some(failure),
        ),
      ),
      (festivals) => emit(
        state.copyWith(
          nextPageStatus: CubitStatus.success,
          festivals: [...state.festivals, ...festivals],
          hasReachedMax: festivals.length < _pageSize,
        ),
      ),
    );
  }

  FutureOr<void> _onFestivalsRefreshed(
    _FestivalsRefreshed event,
    Emitter<FestivalsState> emit,
  ) async {
    emit(
      state.copyWith(
        getFestivalsStatus: CubitStatus.loading,
        failure: none(),
      ),
    );

    final result = await _festivalFacade.fetchFestivals(
      pageSize: _pageSize,
    );

    result.fold(
      (failure) => emit(
        state.copyWith(
          getFestivalsStatus: CubitStatus.failure,
          failure: some(failure),
        ),
      ),
      (festivals) => emit(
        state.copyWith(
          getFestivalsStatus: CubitStatus.success,
          festivals: festivals,
          hasReachedMax: festivals.length < _pageSize,
        ),
      ),
    );
  }
}
