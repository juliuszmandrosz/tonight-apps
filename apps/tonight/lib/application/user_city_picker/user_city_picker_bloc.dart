import 'dart:async';

import 'package:common/application/bloc_throttle_debounce.dart';
import 'package:common/application/cubit_status.dart';
import 'package:common/extensions/cubit_status_extensions.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tonight/domain/places/place_entity.dart';
import 'package:tonight/domain/places/places_facade.dart';
import 'package:tonight/domain/places/places_failure.dart';

part 'user_city_picker_bloc.freezed.dart';
part 'user_city_picker_event.dart';
part 'user_city_picker_state.dart';

class UserCityPickerBloc
    extends Bloc<UserCityPickerEvent, UserCityPickerState> {
  final PlacesFacade _placesFacade;

  UserCityPickerBloc(this._placesFacade)
      : super(UserCityPickerState.initial()) {
    on<_PlacePicked>(_onPlacePicked);
    on<_SearchResetted>(_onSearchResetted);
    on<_SearchChanged>(
      _onSearchChanged,
      transformer: throttleDroppable(),
    );
  }

  FutureOr<void> _onPlacePicked(
    _PlacePicked event,
    Emitter<UserCityPickerState> emit,
  ) {
    emit(state.copyWith(selectedPlace: some(event.place)));
  }

  FutureOr<void> _onSearchResetted(
    _SearchResetted event,
    Emitter<UserCityPickerState> emit,
  ) {
    emit(
      state.copyWith(
        previousPlacesSearch: '',
        places: [],
      ),
    );
  }

  FutureOr<void> _onSearchChanged(
    _SearchChanged event,
    Emitter<UserCityPickerState> emit,
  ) async {
    if (state.searchPlacesStatus.isLoading()) return;
    if (event.phrase.isEmpty) return emit(state.copyWith(places: []));
    if (event.phrase.length < 3) return;

    emit(
      state.copyWith(
        searchPlacesStatus: CubitStatus.loading,
        placesFailure: none(),
      ),
    );

    final failureOrSuccess = await _placesFacade.getPlaces(event.phrase);

    failureOrSuccess.fold(
      (failure) => emit(
        state.copyWith(
          searchPlacesStatus: CubitStatus.failure,
          previousPlacesSearch: event.phrase,
          placesFailure: some(failure),
        ),
      ),
      (places) => emit(
        state.copyWith(
          searchPlacesStatus: CubitStatus.success,
          places: places,
          previousPlacesSearch: event.phrase,
        ),
      ),
    );
  }
}
