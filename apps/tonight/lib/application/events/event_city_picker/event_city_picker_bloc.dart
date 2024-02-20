import 'dart:async';

import 'package:common/domain/available_filters/entities/city_entity.dart';
import 'package:common/infrastructure/algolia/city_filter.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'event_city_picker_bloc.freezed.dart';
part 'event_city_picker_event.dart';
part 'event_city_picker_state.dart';

class EventCityPickerBloc
    extends Bloc<EventCityPickerEvent, EventCityPickerState> {
  EventCityPickerBloc() : super(EventCityPickerState.initial()) {
    on<_PickerInitialized>(_onPickerInitialized);
    on<_CityChanged>(_onCityChanged);
    on<_CityFilterResetted>(_onCityFilterResetted);
    on<_SearchChanged>(_onSearchChanged);
  }

  FutureOr<void> _onPickerInitialized(
    _PickerInitialized event,
    Emitter<EventCityPickerState> emit,
  ) {
    emit(
      state.copyWith(
        filter: event.filter,
        availableCities: event.availableCities,
        filteredCities: event.availableCities,
      ),
    );
  }

  FutureOr<void> _onCityChanged(
    _CityChanged event,
    Emitter<EventCityPickerState> emit,
  ) {
    final filter = CityFilter(
      cityId: event.cityId,
      cityName: event.cityName,
    );
    emit(
      state.copyWith(
        filter: filter,
        isCityFilterApplied: true,
      ),
    );
  }

  FutureOr<void> _onCityFilterResetted(
    _CityFilterResetted event,
    Emitter<EventCityPickerState> emit,
  ) {
    emit(state.copyWith(filteredCities: [...state.availableCities]));
  }

  FutureOr<void> _onSearchChanged(
    _SearchChanged event,
    Emitter<EventCityPickerState> emit,
  ) async {
    final lowerPhrase = event.phrase.toLowerCase();
    final cities = state.availableCities
        .where((city) => city.name.toLowerCase().contains(lowerPhrase))
        .toList();
    emit(state.copyWith(filteredCities: cities));
  }
}
