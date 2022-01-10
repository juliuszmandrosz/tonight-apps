import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:raver/application/clubs/clubs_overview/clubs_overview_bloc.dart';
import 'package:raver/infrastructure/clubs/clubs_overview/filters/club_filter.dart';
import 'package:raver/infrastructure/clubs/clubs_overview/filters/club_filters_settings.dart';

part 'club_filters_bloc.freezed.dart';

part 'club_filters_event.dart';

part 'club_filters_state.dart';

@injectable
class ClubFiltersBloc extends Bloc<ClubFiltersEvent, ClubFiltersState> {
  final ClubsOverviewBloc? _clubsOverviewBloc;

  ClubFiltersBloc(@factoryParam this._clubsOverviewBloc)
      : super(const ClubFiltersState.initial()) {
    on<OnSearchFieldUpdated>(_onSearchFieldUpdated);
    on<OnFilterDetailsUpdated>(_onFilterDetailsUpdated);
  }

  void _onSearchFieldUpdated(
      OnSearchFieldUpdated event, Emitter<ClubFiltersState> emit) {
    state.map(initial: (initial) {
      final clubFilter = ClubFilter(
          phrase: event.value, clubFilterSettings: ClubFilterSettings.empty());
      _clubsOverviewBloc!.add(ClubsOverviewEvent.onFilterUpdated(clubFilter));
    }, filtersUpdated: (state) {
      final clubFilter = state.clubFilter
          .mapOrNull((value) => value.copyWith(phrase: value.phrase));
      _clubsOverviewBloc!.add(ClubsOverviewEvent.onFilterUpdated(clubFilter!));
    });
  }

  void _onFilterDetailsUpdated(
      OnFilterDetailsUpdated event, Emitter<ClubFiltersState> emit) {
    state.maybeMap(filtersUpdated: (state) {
      final clubFilter = state.clubFilter.mapOrNull((value) =>
          value.copyWith(clubFilterSettings: value.clubFilterSettings));
      _clubsOverviewBloc!.add(ClubsOverviewEvent.onFilterUpdated(clubFilter!));
    }, orElse: () {
      /*Never happen*/
    });
  }
}
