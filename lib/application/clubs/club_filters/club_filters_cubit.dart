import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:raver/application/clubs/clubs_overview/clubs_overview_bloc.dart';
import 'package:raver/application/core/user_location/user_location_cubit.dart';
import 'package:raver_clubs/raver_clubs.dart';

part 'club_filters_cubit.freezed.dart';
part 'club_filters_state.dart';

class ClubFiltersCubit extends Cubit<ClubFiltersState> {
  final ClubsOverviewBloc _clubsOverviewBloc;
  final UserLocationCubit _userLocationCubit;

  ClubFiltersCubit(
    this._clubsOverviewBloc,
    this._userLocationCubit,
  ) : super(ClubFiltersState.initial());

  void submitSearchField(String value) {
    final filters = ClubFilters.empty().copyWith(
      phraseFilter: PhraseFilter(phrase: value),
      maxDistanceFilter: state.filters.maxDistanceFilter.copyWith(
        enabled: false,
      ),
    );

    emit(
      state.copyWith(
        filters: filters,
        isFilterApplied: true,
        isMenuFilterApplied: false,
      ),
    );

    _setUserLocation();

    _clubsOverviewBloc.add(
      ClubsOverviewEvent.clubsFetched(
        state.filters.copyWith(
          phraseFilter: PhraseFilter(phrase: value),
        ),
      ),
    );
  }

  void changeMaxDistance(int value) {
    final currentFilters = state.filters.copyWith(
      maxDistanceFilter:
          state.filters.maxDistanceFilter.copyWith(maxDistance: value),
    );
    emit(state.copyWith(filters: currentFilters));
  }

  void changeCurrency(String value) {
    final currentFilters = state.filters.copyWith(
      currencyFilter: CurrencyFilter(currency: value.toLowerCase()),
    );
    emit(state.copyWith(filters: currentFilters));
  }

  submitFilters({bool isMenuFilterApplied = false}) {
    final currentFilters = state.filters.copyWith(
      phraseFilter: PhraseFilter(phrase: ''),
      maxDistanceFilter: state.filters.maxDistanceFilter.copyWith(
        enabled: true,
      ),
    );

    _setUserLocation();

    emit(
      state.copyWith(
        filters: currentFilters,
        isMenuFilterApplied: isMenuFilterApplied,
        isFilterApplied: true,
      ),
    );

    _clubsOverviewBloc.add(ClubsOverviewEvent.clubsFetched(state.filters));
  }

  void resetFilters() {
    emit(
      state.copyWith(
        filters: ClubFilters.empty(),
        isFilterApplied: false,
        isMenuFilterApplied: false,
      ),
    );
    _setUserLocation();
    _clubsOverviewBloc.add(ClubsOverviewEvent.clubsFetched(state.filters));
  }

  _setUserLocation() {
    final locationState = _userLocationCubit.state;

    locationState.userLocation.fold(
      () => {},
      (location) {
        final currentFilters = state.filters.copyWith(
          maxDistanceFilter: state.filters.maxDistanceFilter.copyWith(
            userLocation: location,
          ),
        );

        emit(state.copyWith(filters: currentFilters));
      },
    );
  }
}
