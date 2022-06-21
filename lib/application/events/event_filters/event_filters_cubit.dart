import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:raver/application/core/user_location/user_location_cubit.dart';
import 'package:raver_events/domain/filters/filter/currency_filter.dart';
import 'package:raver_events/raver_events.dart';

part 'event_filters_cubit.freezed.dart';
part 'event_filters_state.dart';

class EventFiltersCubit extends Cubit<EventFiltersState> {
  final EventOverviewBloc _eventOverviewBloc;
  final UserLocationCubit _userLocationCubit;

  EventFiltersCubit(this._eventOverviewBloc, this._userLocationCubit)
      : super(EventFiltersState.initial());

  void submitSearchField(String value) async {
    final currentFilters = state.filters.copyWith(
      phraseFilter: PhraseFilter(phrase: value),
    );

    emit(
      state.copyWith(
        filters: currentFilters,
        isFilterApplied: true,
      ),
    );

    if (state.filters.maxDistanceFilter.enabled) {
      _setUserLocation();
    }

    _eventOverviewBloc.add(EventOverviewEvent.eventsFetched(
      currentFilters,
      _eventOverviewBloc.state.sortModel,
    ));
  }

  void submitFilters({
    bool isDateFilterApplied = false,
    bool isMenuFilterApplied = false,
  }) async {
    if (state.filters.maxDistanceFilter.enabled) {
      _setUserLocation();
    }

    if (state.isDateFilterApplied) {
      isDateFilterApplied = true;
    }

    if (state.isMenuFilterApplied) {
      isMenuFilterApplied = true;
    }

    emit(
      state.copyWith(
        isDateFilterApplied: isDateFilterApplied,
        isMenuFilterApplied: isMenuFilterApplied,
        isFilterApplied: true,
      ),
    );

    _eventOverviewBloc.add(
      EventOverviewEvent.eventsFetched(
        state.filters,
        _eventOverviewBloc.state.sortModel,
      ),
    );
  }

  void changeIsMaxDistanceOption(bool value) {
    final currentFilters = state.filters.copyWith(
        maxDistanceFilter:
            state.filters.maxDistanceFilter.copyWith(enabled: value));
    emit(state.copyWith(filters: currentFilters));
  }

  void changeMaxDistance(int value) {
    final currentFilters = state.filters.copyWith(
        maxDistanceFilter:
            state.filters.maxDistanceFilter.copyWith(maxDistance: value));
    emit(state.copyWith(filters: currentFilters));
  }

  void changeCity(String cityId, String cityName) {
    final currentFilters = state.filters.copyWith(
      cityFilter: CityFilter(
        cityId: cityId,
        cityName: cityName,
      ),
    );
    emit(state.copyWith(filters: currentFilters));
  }

  void changeCityName(String value) {
    final currentFilters = state.filters.copyWith(
        cityFilter: state.filters.cityFilter.copyWith(cityName: value));
    emit(state.copyWith(filters: currentFilters));
  }

  void changePriceRange(int? minValue, int? maxValue) {
    final currentFilters = state.filters.copyWith(
        priceRangeFilter: PriceRangeFilter(
      minPrice: minValue ?? 0,
      maxPrice: maxValue,
    ));
    emit(state.copyWith(filters: currentFilters));
  }

  void changeMinAges(int value) {
    final minAgesFilter = state.filters.minAgesFilter;
    final minAgesCopy = [...minAgesFilter.minAges];

    minAgesCopy.contains(value)
        ? minAgesCopy.remove(value)
        : minAgesCopy.add(value);

    final currentFilters = state.filters
        .copyWith(minAgesFilter: MinAgesFilter(minAges: minAgesCopy));
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
    final currentFilters = state.filters
        .copyWith(isConcertFilter: IsConcertFilter(isConcert: value));
    emit(state.copyWith(filters: currentFilters));
  }

  void changeDay(DateTime day) {
    final currentFilters = state.filters
        .copyWith(dateRangeFilter: DateRangeFilter(fromDate: day, toDate: day));
    emit(state.copyWith(filters: currentFilters));
  }

  void changeCurrency(String value) {
    final currentFilters = state.filters.copyWith(
      currencyFilter: CurrencyFilter(currency: value.toLowerCase()),
    );
    emit(state.copyWith(filters: currentFilters));
  }

  void resetFilters() {
    emit(
      state.copyWith(
        filters: EventFilters.empty(),
        isFilterApplied: false,
        isMenuFilterApplied: false,
        isDateFilterApplied: false,
      ),
    );

    _setUserLocation();
    _eventOverviewBloc.add(
        EventOverviewEvent.eventsFetched(state.filters, SortModel.empty()));
  }

  _setUserLocation() {
    final locationState = _userLocationCubit.state;

    locationState.userLocation.fold(
      () => {},
      (location) {
        final currentFilters = state.filters.copyWith(
          maxDistanceFilter:
              state.filters.maxDistanceFilter.copyWith(userLocation: location),
        );

        emit(state.copyWith(filters: currentFilters));
      },
    );
  }
}
