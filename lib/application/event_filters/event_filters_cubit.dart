import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:raver_events/raver_events.dart';

part 'event_filters_cubit.freezed.dart';

part 'event_filters_state.dart';

class EventFiltersCubit extends Cubit<EventFiltersState> {
  final EventOverviewBloc _eventOverviewBloc;

  EventFiltersCubit(this._eventOverviewBloc)
      : super(EventFiltersState.initial());

  void submitSearchField(String value) async {
    final currentFilters = state.filters.copyWith(phrase: value);
    final currentSortModel = _eventOverviewBloc.state.sortModel;
    emit(state.copyWith(filters: currentFilters));

    _eventOverviewBloc.add(EventOverviewEvent.eventsFetched(
      currentFilters,
      currentSortModel,
    ));
  }
}
