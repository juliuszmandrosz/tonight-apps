import 'package:common/common.dart';
import 'package:dartz/dartz.dart';
import 'package:events/events.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tonight/application/events/event_filters/menu_event_filter.dart';
import 'package:translations/translations.dart';

part 'event_filters_cubit.freezed.dart';
part 'event_filters_state.dart';

class EventFiltersCubit extends Cubit<EventFiltersState> {
  EventFiltersCubit() : super(EventFiltersState.initial());

  initFilters(EventFilters filters) {
    emit(state.copyWith(filters: filters));
  }

  void submitMenuFilters() {
    final appliedFilters = <MenuEventFilter, IFilter>{};
    final minAgesFilter = state.filters.minAgesFilter;
    final priceRangeFilter = state.filters.priceRangeFilter;
    final showOnlyConcertsFilter = state.filters.showOnlyConcertsFilter;
    final allowedOutfitsFilter = state.filters.allowedOutfitsFilter;
    final musicalGenresFilter = state.filters.musicalGenresFilter;
    final maxDistanceFilter = state.filters.maxDistanceFilter;

    if (minAgesFilter.minAges.isNotEmpty) {
      appliedFilters[MenuEventFilter.minAge] = minAgesFilter;
    }
    if (priceRangeFilter.minPrice != 0 || priceRangeFilter.maxPrice != null) {
      appliedFilters[MenuEventFilter.price] = priceRangeFilter;
    }
    if (showOnlyConcertsFilter.showOnlyConcerts) {
      appliedFilters[MenuEventFilter.showOnlyConcerts] = showOnlyConcertsFilter;
    }
    if (allowedOutfitsFilter.allowedOutfits.isNotEmpty) {
      appliedFilters[MenuEventFilter.dressCode] = allowedOutfitsFilter;
    }
    if (musicalGenresFilter.musicalGenres.isNotEmpty) {
      appliedFilters[MenuEventFilter.music] = musicalGenresFilter;
    }
    if (!maxDistanceFilter.enabled && maxDistanceFilter.userLocation.isSome()) {
      appliedFilters[MenuEventFilter.showWholeWorld] = maxDistanceFilter;
    }

    if (appliedFilters.containsKey(MenuEventFilter.price)) {
      final price = state.filters.priceRangeFilter;
      if (price.maxPrice != null && price.maxPrice! < price.minPrice) {
        emit(state.copyWith(snackbarMessage: some(S().invalidPriceRange)));
        emit(state.copyWith(snackbarMessage: none()));
        return;
      }
    }

    emit(
      state.copyWith(
        appliedFilters: appliedFilters,
        isSubmitting: true,
      ),
    );
  }

  void changePriceRange(int? minValue, int? maxValue) {
    final currentFilters = state.filters.copyWith(
      priceRangeFilter: PriceRangeFilter(
        minPrice: minValue ?? 0,
        maxPrice: maxValue,
      ),
    );
    emit(state.copyWith(filters: currentFilters));
  }

  void changeMinAges(int value) {
    final minAgesFilter = state.filters.minAgesFilter;
    final minAgesCopy = [...minAgesFilter.minAges];

    minAgesCopy.contains(value)
        ? minAgesCopy.remove(value)
        : minAgesCopy.add(value);

    final currentFilters = state.filters.copyWith(
      minAgesFilter: MinAgesFilter(minAges: minAgesCopy),
    );

    emit(state.copyWith(filters: currentFilters));
  }

  void changeMusicalGenres(String value) {
    final musicalGenresFilter = state.filters.musicalGenresFilter;
    final musicalGenresCopy = [...musicalGenresFilter.musicalGenres];

    musicalGenresCopy.contains(value)
        ? musicalGenresCopy.remove(value)
        : musicalGenresCopy.add(value);

    final currentFilters = state.filters.copyWith(
      musicalGenresFilter:
          MusicalGenresFilter(musicalGenres: musicalGenresCopy),
    );
    emit(state.copyWith(filters: currentFilters));
  }

  void changeAllowedOutfits(String value) {
    final allowedOutfits = state.filters.allowedOutfitsFilter;
    final allowedOutfitsCopy = [...allowedOutfits.allowedOutfits];

    allowedOutfitsCopy.contains(value)
        ? allowedOutfitsCopy.remove(value)
        : allowedOutfitsCopy.add(value);

    final currentFilters = state.filters.copyWith(
      allowedOutfitsFilter:
          AllowedOutfitsFilter(allowedOutfits: allowedOutfitsCopy),
    );

    emit(state.copyWith(filters: currentFilters));
  }

  void changeIsConcertValue(bool value) {
    final currentFilters = state.filters.copyWith(
      showOnlyConcertsFilter: ShowOnlyConcertsFilter(showOnlyConcerts: value),
    );

    emit(state.copyWith(filters: currentFilters));
  }

  void changeShowWholeWorldValue(bool value) {
    final maxDistanceFilter = state.filters.maxDistanceFilter;
    if (maxDistanceFilter.userLocation.isNone() && !value) {
      emit(
        state.copyWith(snackbarMessage: some(S().enableLocationAndResetApp)),
      );
      emit(state.copyWith(snackbarMessage: none()));
      return;
    }
    final currentFilters = state.filters.copyWith(
      maxDistanceFilter: maxDistanceFilter.copyWith(enabled: !value),
    );
    emit(state.copyWith(filters: currentFilters));
  }
}
