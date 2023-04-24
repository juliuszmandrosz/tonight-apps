import 'dart:async';

import 'package:common/common.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tonight/domain/wall_photos/wall_photo_entity.dart';
import 'package:tonight/domain/wall_photos/wall_photo_facade.dart';

part 'wall_photos_bloc.freezed.dart';
part 'wall_photos_event.dart';
part 'wall_photos_state.dart';

const _pageSize = 15;

class WallPhotosBloc extends Bloc<WallPhotosEvent, WallPhotosState> {
  final WallPhotoFacade _wallPhotoFacade;

  WallPhotosBloc(this._wallPhotoFacade) : super(WallPhotosState.initial()) {
    on<_WallPhotosFetched>(_onWallPhotosFetched);
    on<_NextPagePhotosFetched>(
      _onNextPagePhotosFetched,
      transformer: throttleDroppable(),
    );
  }

  FutureOr<void> _onWallPhotosFetched(
    _WallPhotosFetched event,
    Emitter<WallPhotosState> emit,
  ) async {
    emit(state.copyWith(getPhotosStatus: CubitStatus.loading));

    final result = await _wallPhotoFacade.getPhotos(pageSize: _pageSize);

    result.fold(
      (failure) => emit(state.copyWith(getPhotosStatus: CubitStatus.failure)),
      (photos) => emit(
        state.copyWith(
          getPhotosStatus: CubitStatus.success,
          photos: photos,
          hasReachedMax: photos.length != _pageSize,
        ),
      ),
    );
  }

  FutureOr<void> _onNextPagePhotosFetched(
    _NextPagePhotosFetched event,
    Emitter<WallPhotosState> emit,
  ) async {
    if (state.hasReachedMax || state.photos.isEmpty) return;

    emit(state.copyWith(nextPageStatus: CubitStatus.loading));

    final result = await _wallPhotoFacade.getPhotos(
      pageSize: _pageSize,
      offset: state.photos.length,
    );

    result.fold(
      (failure) => emit(state.copyWith(nextPageStatus: CubitStatus.failure)),
      (photos) => emit(
        state.copyWith(
          nextPageStatus: CubitStatus.success,
          photos: [...state.photos, ...photos],
          hasReachedMax: photos.length != _pageSize,
        ),
      ),
    );
  }
}
