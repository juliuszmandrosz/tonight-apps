import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:raver/application/profile/profile_cubit.dart';
import 'package:raver/application/profile/profile_cubit_hub.dart';
import 'package:raver_common/raver_common.dart';
import 'package:raver_events/raver_events.dart';

part 'user_event_favorites_cubit.freezed.dart';
part 'user_event_favorites_state.dart';

class UserEventFavoritesCubit extends Cubit<UserEventFavoritesState> {
  final UserEventFacade _eventFacade;
  final ProfileBroadcastSubject _profileBroadcastSubject;

  UserEventFavoritesCubit(this._eventFacade, this._profileBroadcastSubject)
      : super(UserEventFavoritesState.initial());

  void getFavorites() async {
    _initBroadcastListener();
  }

  void changePageIndex(int index) {
    emit(state.copyWith(currentVisibleIndex: index));
  }

  Future<void> _refreshIdsList(ProfileState profileState) async {
    if (profileState.status == CubitStatus.success &&
        state.status != CubitStatus.loading) {
      emit(state.copyWith(status: CubitStatus.loading));

      final eventsFromProfile = profileState.user.favoriteEventIds;
      final currentIdList = state.events.map((element) => element.id).toList();

      final eventIdsToBeFetched =
          _getEventIdsDifference(currentIdList, eventsFromProfile);

      if (eventIdsToBeFetched.isEmpty) {
        final eventsToEmit =
            _clearUnnecessaryEvents(state.events, eventsFromProfile);
        emit(state.copyWith(status: CubitStatus.success, events: eventsToEmit));
        return;
      }

      final favoriteEvents =
          await _eventFacade.getEventsByIds(eventIdsToBeFetched);

      favoriteEvents.fold(
        (failure) => emit(
          state.copyWith(status: CubitStatus.failure),
        ),
        (events) => emit(
          state.copyWith(
            status: CubitStatus.success,
            events: List.of(state.events)..addAll(events),
          ),
        ),
      );
    }
  }

  List<Event> _clearUnnecessaryEvents(
      List<Event> currentFavoriteEvents, List<String> eventIdsFromProfile) {
    //if list from message is shorter but still contains same elements already we have, so we need to remove them
    return currentFavoriteEvents
        .where((event) => eventIdsFromProfile.contains(event.id))
        .toList();
  }

  List<String> _getEventIdsDifference(
      List<String> previousList, List<String> currentList) {
    //remove all duplicates from new list (that comes from message) - we already fetched them
    return currentList
        .where((idFromData) => !previousList.contains(idFromData))
        .toList();
  }

  void _initBroadcastListener() {
    _profileBroadcastSubject.getSubject().listen((profileState) {
      _refreshIdsList(profileState);
    });
  }
}
