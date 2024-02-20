import 'package:common/application/cubit_status.dart';
import 'package:common/infrastructure/algolia/city_filter.dart';
import 'package:common/infrastructure/algolia/phrase_filter.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tonight/domain/artists/artist_entity.dart';
import 'package:tonight/domain/artists/artist_facade.dart';
import 'package:tonight/infrastructure/artists/filters/artist_filters.dart';

part 'artists_cubit.freezed.dart';
part 'artists_state.dart';

class ArtistsCubit extends Cubit<ArtistsState> {
  final ArtistFacade _artistFacade;

  ArtistsCubit(this._artistFacade) : super(ArtistsState.initial());

  Future<void> searchArtists(String query) async {
    emit(state.copyWith(getArtistsStatus: CubitStatus.loading));
    final filters =
        state.filters.copyWith(phraseFilter: PhraseFilter(phrase: query));
    final result = await _artistFacade.getArtists(filters);
    result.fold(
      (_) => emit(state.copyWith(getArtistsStatus: CubitStatus.failure)),
      (artists) => emit(
        state.copyWith(
          getArtistsStatus: CubitStatus.success,
          artists: artists,
        ),
      ),
    );
  }

  Future<void> applyCityFilter(CityFilter cityFilter) async {
    emit(state.copyWith(getArtistsStatus: CubitStatus.loading));
    final filters = state.filters.copyWith(cityFilter: cityFilter);
    emit(state.copyWith(filters: filters));
    final result = await _artistFacade.getArtists(filters);
    result.fold(
      (_) => emit(state.copyWith(getArtistsStatus: CubitStatus.failure)),
      (artists) => emit(
        state.copyWith(
          getArtistsStatus: CubitStatus.success,
          artists: artists,
        ),
      ),
    );
  }

  Future<void> refreshArtists() async {
    emit(state.copyWith(getArtistsStatus: CubitStatus.loading));
    final result = await _artistFacade.getArtists(state.filters);
    result.fold(
      (_) => emit(state.copyWith(getArtistsStatus: CubitStatus.failure)),
      (artists) => emit(
        state.copyWith(
          getArtistsStatus: CubitStatus.success,
          artists: artists,
        ),
      ),
    );
  }
}
