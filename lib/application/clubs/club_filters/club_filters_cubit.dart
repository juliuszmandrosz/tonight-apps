import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:raver/application/clubs/clubs_overview/clubs_overview_bloc.dart';
import 'package:raver/domain/clubs/filters/club_filters.dart';

part 'club_filters_cubit.freezed.dart';
part 'club_filters_state.dart';

class ClubFiltersCubit extends Cubit<ClubFiltersState> {
  final ClubsOverviewBloc _clubsOverviewBloc;

  ClubFiltersCubit(this._clubsOverviewBloc) : super(ClubFiltersState.initial());

  void searchFieldSubmitted(String value) {
    _clubsOverviewBloc.add(
        ClubsOverviewEvent.clubsFetched(state.filter.copyWith(phrase: value)));
  }

  //TODO: Filters functionality will be done in future pr ~ 09.03.2022
  void filterDetailsUpdated() {}
}
