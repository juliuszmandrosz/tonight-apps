import 'package:common/application/cubit_status.dart';
import 'package:events/domain/domain.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tonight/domain/collectives/collective_entity.dart';
import 'package:tonight/domain/collectives/collective_facade.dart';

part 'artist_details_cubit.freezed.dart';
part 'artist_details_state.dart';

class ArtistDetailsCubit extends Cubit<ArtistDetailsState> {
  final UserEventFacade _eventFacade;
  final CollectiveFacade _collectiveFacade;

  ArtistDetailsCubit(
    this._eventFacade,
    this._collectiveFacade,
  ) : super(ArtistDetailsState.initial());

  Future<void> getUpcomingEvents(String artistId) async {
    emit(state.copyWith(getEventsStatus: CubitStatus.loading));
    final result = await _eventFacade.getUpcomingEventsForArtist(artistId);
    result.fold(
      (failure) => emit(state.copyWith(getEventsStatus: CubitStatus.failure)),
      (events) => emit(
        state.copyWith(
          getEventsStatus: CubitStatus.success,
          events: events,
        ),
      ),
    );
  }

  Future<void> getCollectives(String artistId) async {
    emit(state.copyWith(getCollectivesStatus: CubitStatus.loading));
    final result = await _collectiveFacade.getCollectivesForArtist(artistId);
    result.fold(
      (failure) =>
          emit(state.copyWith(getCollectivesStatus: CubitStatus.failure)),
      (collectives) => emit(
        state.copyWith(
          getCollectivesStatus: CubitStatus.success,
          collectives: collectives,
        ),
      ),
    );
  }
}
