import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:raver/application/events/event_overview/event_overview_bloc.dart';
import 'package:raver/domain/events/filters/event_filter.dart';

part 'event_filters_cubit.freezed.dart';
part 'event_filters_state.dart';

class EventFiltersCubit extends Cubit<EventFiltersState> {
  final EventOverviewBloc? _eventOverviewBloc;

  EventFiltersCubit(this._eventOverviewBloc)
      : super(const EventFiltersState.initial());

  void onSearchFieldSubmitted(String value) {
    state.map(initial: (initial) {
      final filters = EventFilter(
        phrase: value,
      );
      _eventOverviewBloc!.add(EventOverviewEvent.eventsFetched(filters));
    }, filtersUpdated: (state) {
      final filters = state.eventFilter
          .mapOrNull((value) => value.copyWith(phrase: value.phrase));
      _eventOverviewBloc!.add(EventOverviewEvent.eventsFetched(filters!));
    });
  }
}
