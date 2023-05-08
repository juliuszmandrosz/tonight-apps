import 'dart:async';

import 'package:clubs/infrastructure/filters/filter/city_filter.dart';
import 'package:common/domain/available_filters/entities/city_entity.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'club_city_picker_bloc.freezed.dart';
part 'club_city_picker_event.dart';
part 'club_city_picker_state.dart';

class ClubCityPickerBloc
    extends Bloc<ClubCityPickerEvent, ClubCityPickerState> {
  ClubCityPickerBloc() : super(ClubCityPickerState.initial()) {
    on<_PickerInitialized>(_onPickerInitialized);
    on<_CityChanged>(_onCityChanged);
    on<_CityFilterResetted>(_onCityFilterResetted);
    on<_SearchChanged>(_onSearchChanged);
  }

  FutureOr<void> _onPickerInitialized(
    _PickerInitialized event,
    Emitter<ClubCityPickerState> emit,
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
    Emitter<ClubCityPickerState> emit,
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
    Emitter<ClubCityPickerState> emit,
  ) {
    emit(state.copyWith(filteredCities: [...state.availableCities]));
  }

  FutureOr<void> _onSearchChanged(
    _SearchChanged event,
    Emitter<ClubCityPickerState> emit,
  ) async {
    final lowerPhrase = event.phrase.toLowerCase();
    final cities = state.availableCities
        .where((city) => city.name.toLowerCase().contains(lowerPhrase))
        .toList();
    emit(state.copyWith(filteredCities: cities));
  }
}
