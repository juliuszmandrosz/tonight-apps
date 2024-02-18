import 'package:common/infrastructure/algolia/phrase_filter.dart';
import 'package:events/events.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'event_filters_cubit.freezed.dart';
part 'event_filters_state.dart';

class EventFiltersCubit extends Cubit<EventFiltersState> {
  final EventOverviewBloc _eventOverviewBloc;

  EventFiltersCubit(this._eventOverviewBloc)
      : super(EventFiltersState.initial());

  void submitSearchField(String value) async {
    final currentFilters = _eventOverviewBloc.state.eventFilters.copyWith(
      phraseFilter: PhraseFilter(phrase: value),
    );

    final currentSortModel = _eventOverviewBloc.state.sortModel;

    emit(state.copyWith(filters: currentFilters));

    _eventOverviewBloc.add(
      EventOverviewEvent.eventsFetched(
        currentFilters,
        currentSortModel,
      ),
    );
  }
}
