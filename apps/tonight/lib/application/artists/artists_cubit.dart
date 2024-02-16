import 'package:bloc/bloc.dart';
import 'package:common/application/cubit_status.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tonight/domain/artists/artist_entity.dart';
import 'package:tonight/domain/artists/artist_facade.dart';

part 'artists_cubit.freezed.dart';
part 'artists_state.dart';

class ArtistsCubit extends Cubit<ArtistsState> {
  final ArtistFacade _artistFacade;

  ArtistsCubit(this._artistFacade) : super(ArtistsState.initial());

  Future<void> getArtists() async {
    emit(state.copyWith(getArtistsStatus: CubitStatus.loading));
    final result = await _artistFacade.getArtists();
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
