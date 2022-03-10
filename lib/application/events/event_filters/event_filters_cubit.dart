import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:raver/application/core/user_location/user_location_cubit.dart';
import 'package:raver/application/events/event_overview/event_overview_bloc.dart';
import 'package:raver/domain/events/filters/event_filters_entity.dart';
import 'package:raver/presentation/commons/constants/location_constants.dart';

part 'event_filters_cubit.freezed.dart';
part 'event_filters_state.dart';

class EventFiltersCubit extends Cubit<EventFiltersState> {
  final EventOverviewBloc _eventOverviewBloc;
  final UserLocationCubit _userLocationCubit;

  EventFiltersCubit(this._eventOverviewBloc, this._userLocationCubit)
      : super(EventFiltersState.initial());

  void submitSearchField(String value) async {
    final currentFilters = state.filters.copyWith(phrase: value);
    emit(state.copyWith(filters: currentFilters));

    if (state.filters.isMaxDistanceOption) {
      _setUserLocation();
    }

    _eventOverviewBloc.add(EventOverviewEvent.eventsFetched(currentFilters));
  }

  void submitFilters() async {
    if (state.filters.isMaxDistanceOption) {
      _setUserLocation();
    }
    _eventOverviewBloc.add(EventOverviewEvent.eventsFetched(state.filters));
  }

  void changeIsMaxDistanceOption(bool value) {
    final currentFilters = state.filters.copyWith(isMaxDistanceOption: value);
    emit(state.copyWith(filters: currentFilters));
  }

  void changeMaxDistance(int value) {
    final currentFilters = state.filters.copyWith(maxDistance: value);
    emit(state.copyWith(filters: currentFilters));
  }

  void changeCity(String cityId, String cityName) {
    final currentFilters = state.filters.copyWith(
      cityId: cityId,
      cityName: cityName,
    );
    emit(state.copyWith(filters: currentFilters));
  }

  void changeCityName(String value) {
    final currentFilters = state.filters.copyWith(cityName: value);
    emit(state.copyWith(filters: currentFilters));
  }

  void changePriceRange(int minValue, int maxValue) {
    final currentFilters = state.filters.copyWith(
      minPrice: minValue,
      maxPrice: maxValue,
    );
    emit(state.copyWith(filters: currentFilters));
  }

  void changeMinAges(int value) {
    final minAges = state.filters.minAges;
    final minAgesCopy = [...minAges];

    minAgesCopy.contains(value)
        ? minAgesCopy.remove(value)
        : minAgesCopy.add(value);

    final currentFilters = state.filters.copyWith(minAges: minAgesCopy);
    emit(state.copyWith(filters: currentFilters));
  }

  void changeMusicalGenres(String value) {
    final musicalGenres = state.filters.musicalGenres;
    final musicalGenresCopy = [...musicalGenres];

    musicalGenresCopy.contains(value)
        ? musicalGenresCopy.remove(value)
        : musicalGenresCopy.add(value);

    final currentFilters = state.filters.copyWith(
      musicalGenres: musicalGenresCopy,
    );
    emit(state.copyWith(filters: currentFilters));
  }

  void changeAllowedOutfits(String value) {
    final allowedOutfits = state.filters.allowedOutfits;
    final allowedOutfitsCopy = [...allowedOutfits];

    allowedOutfitsCopy.contains(value)
        ? allowedOutfitsCopy.remove(value)
        : allowedOutfitsCopy.add(value);

    final currentFilters = state.filters.copyWith(
      allowedOutfits: allowedOutfitsCopy,
    );
    emit(state.copyWith(filters: currentFilters));
  }

  void changeIsConcertValue(bool value) {
    final currentFilters = state.filters.copyWith(isConcert: value);
    emit(state.copyWith(filters: currentFilters));
  }

  void resetFilters() {
    emit(state.copyWith(filters: EventFilters.empty()));
    _setUserLocation();
    _eventOverviewBloc.add(EventOverviewEvent.eventsFetched(state.filters));
  }

  _setUserLocation() {
    final locationState = _userLocationCubit.state;

    locationState.userLocation.fold(
      () => {},
      (location) {
        final currentFilters = state.filters.copyWith(
          userLocation: {
            latitude: location[latitude]!,
            longitude: location[longitude]!
          },
        );

        emit(state.copyWith(filters: currentFilters));
      },
    );
  }
}
