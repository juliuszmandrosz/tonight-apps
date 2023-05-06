import 'dart:async';

import 'package:common/common.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:tonight/domain/wall_photos/wall_photo_entity.dart';
import 'package:tonight/domain/wall_photos/wall_photo_facade.dart';
import 'package:tonight/domain/wall_photos/wall_photo_failure.dart';

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
    on<_WallPhotosRefreshed>(_onWallPhotosRefreshed);
    on<_WallPhotoReported>(_onWallPhotoReported);
  }

  FutureOr<void> _onWallPhotosFetched(
    _WallPhotosFetched event,
    Emitter<WallPhotosState> emit,
  ) async {
    emit(
      state.copyWith(
        getPhotosStatus: CubitStatus.loading,
        userLocation: event.userLocation,
      ),
    );

    final result = await _wallPhotoFacade.getWallPhotos(
      userLocation: event.userLocation,
      pageSize: _pageSize,
    );

    result.fold(
      (failure) => emit(
        state.copyWith(
          getPhotosStatus: CubitStatus.failure,
          failure: some(failure),
        ),
      ),
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

    final result = await _wallPhotoFacade.getWallPhotos(
      userLocation: state.userLocation,
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

  FutureOr<void> _onWallPhotosRefreshed(
    _WallPhotosRefreshed event,
    Emitter<WallPhotosState> emit,
  ) async {
    emit(
      state.copyWith(getPhotosStatus: CubitStatus.loading),
    );

    final result = await _wallPhotoFacade.getWallPhotos(
      userLocation: state.userLocation,
      pageSize: _pageSize,
    );

    result.fold(
      (failure) => emit(
        state.copyWith(
          getPhotosStatus: CubitStatus.failure,
          failure: some(failure),
        ),
      ),
      (photos) => emit(
        state.copyWith(
          getPhotosStatus: CubitStatus.success,
          photos: photos,
          hasReachedMax: photos.length != _pageSize,
        ),
      ),
    );
  }

  Future<void> _onWallPhotoReported(
    _WallPhotoReported event,
    Emitter<WallPhotosState> emit,
  ) async {
    final photoIdsBeforeReport = [
      ...state.reportingWallPhotoIds,
      event.photo.id,
    ];
    emit(state.copyWith(reportingWallPhotoIds: photoIdsBeforeReport));

    final failureOrSuccess =
        await _wallPhotoFacade.reportWallPhoto(event.photo);

    final photoIdsAfterReport = [...state.reportingWallPhotoIds]
      ..remove(event.photo.id);

    emit(state.copyWith(reportingWallPhotoIds: photoIdsAfterReport));

    failureOrSuccess.fold(
      (failure) => _emitWallPhotoReportFailure(failure, emit),
      (success) => _emitWallPhotoReportSuccess(emit),
    );
  }

  _emitWallPhotoReportSuccess(Emitter<WallPhotosState> emit) {
    // TODO - add translation
    emit(
        state.copyWith(snackbarMessage: some('S().photoReportedSuccessfully')));
    emit(state.copyWith(snackbarMessage: none()));
  }

  _emitWallPhotoReportFailure(
    WallPhotoFailure failure,
    Emitter<WallPhotosState> emit,
  ) {
    emit(state.copyWith(snackbarMessage: some(failure.message)));
    emit(state.copyWith(snackbarMessage: none()));
  }
}
