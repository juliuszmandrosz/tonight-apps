import 'dart:async';

import 'package:common/common.dart';
import 'package:dartz/dartz.dart';
import 'package:events/domain/events/event_entity.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tonight/domain/wall_photos/wall_photo_entity.dart';
import 'package:tonight/domain/wall_photos/wall_photo_facade.dart';

part 'event_photos_bloc.freezed.dart';
part 'event_photos_event.dart';
part 'event_photos_state.dart';

const _pageSize = 15;

class EventPhotosBloc extends Bloc<EventPhotosEvent, EventPhotosState> {
  final WallPhotoFacade _wallPhotoFacade;

  EventPhotosBloc(this._wallPhotoFacade) : super(EventPhotosState.initial()) {
    on<_PhotosFetched>(_onPhotosFetched);
    on<_PhotosRefreshed>(_onPhotosRefreshed);
    on<_NextPagePhotosFetched>(
      _onNextPagePhotosFetched,
      transformer: throttleDroppable(),
    );
    on<_PhotoAdded>(_onPhotoAdded);
  }

  FutureOr<void> _onPhotosFetched(
    _PhotosFetched event,
    Emitter<EventPhotosState> emit,
  ) async {
    emit(
      state.copyWith(
        getPhotosStatus: CubitStatus.loading,
        event: some(event.event),
      ),
    );
    final result = await _wallPhotoFacade.getEventPhotos(
      eventId: event.event.id,
      pageSize: _pageSize,
    );
    result.fold(
      (_) => emit(state.copyWith(getPhotosStatus: CubitStatus.failure)),
      (photos) => emit(
        state.copyWith(
          getPhotosStatus: CubitStatus.success,
          photos: photos,
          hasReachedMax: photos.length < _pageSize,
        ),
      ),
    );
  }

  FutureOr<void> _onPhotosRefreshed(
    _PhotosRefreshed event,
    Emitter<EventPhotosState> emit,
  ) async {
    emit(state.copyWith(getPhotosStatus: CubitStatus.loading));
    final result = await _wallPhotoFacade.getEventPhotos(
      eventId: state.event.getOrCrash().id,
      pageSize: _pageSize,
    );
    result.fold(
      (_) => emit(state.copyWith(getPhotosStatus: CubitStatus.failure)),
      (photos) => emit(
        state.copyWith(
          getPhotosStatus: CubitStatus.success,
          photos: photos,
          hasReachedMax: photos.length < _pageSize,
        ),
      ),
    );
  }

  FutureOr<void> _onNextPagePhotosFetched(
    _NextPagePhotosFetched event,
    Emitter<EventPhotosState> emit,
  ) async {
    if (state.hasReachedMax || state.photos.isEmpty) return;
    emit(state.copyWith(nextPageStatus: CubitStatus.loading));
    final result = await _wallPhotoFacade.getEventPhotos(
      eventId: state.event.getOrCrash().id,
      pageSize: _pageSize,
      lastPhoto: state.photos.last,
    );
    result.fold(
      (_) => emit(state.copyWith(nextPageStatus: CubitStatus.failure)),
      (photos) => emit(
        state.copyWith(
          nextPageStatus: CubitStatus.success,
          photos: [...state.photos, ...photos],
          hasReachedMax: photos.length < _pageSize,
        ),
      ),
    );
  }

  FutureOr<void> _onPhotoAdded(
    _PhotoAdded event,
    Emitter<EventPhotosState> emit,
  ) {
    emit(state.copyWith(photos: [event.photo, ...state.photos]));
  }
}
