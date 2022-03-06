import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:raver/application/clubs/clubs_overview/clubs_overview_cubit.dart';
import 'package:raver/domain/clubs/filters/club_filter.dart';
import 'package:raver/domain/clubs/filters/club_filters_settings.dart';

part 'club_filters_cubit.freezed.dart';
part 'club_filters_state.dart';

class ClubFiltersCubit extends Cubit<ClubFiltersState> {
  final ClubsOverviewCubit? _clubsOverviewCubit;

  ClubFiltersCubit(this._clubsOverviewCubit)
      : super(const ClubFiltersState.initial());

  void onSearchFieldSubmitted(String value) {
    state.map(initial: (initial) {
      final filters = ClubFilter(
        phrase: value,
        clubFilterSettings: ClubFilterSettings.empty(),
      );
      _clubsOverviewCubit!.getClubs(filters);
    }, filtersUpdated: (state) {
      final filters = state.clubFilter
          .mapOrNull((value) => value.copyWith(phrase: value.phrase));
      _clubsOverviewCubit!.getClubs(filters!);
    });
  }

  void onFilterDetailsUpdated() {
    state.mapOrNull(filtersUpdated: (state) {
      final filters = state.clubFilter.mapOrNull((value) =>
          value.copyWith(clubFilterSettings: value.clubFilterSettings));
      _clubsOverviewCubit!.getClubs(filters!);
    });
  }
}
