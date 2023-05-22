import 'dart:async';

import 'package:common/common.dart';
import 'package:dartz/dartz.dart';
import 'package:events/domain/events/event_entity.dart';
import 'package:events/domain/events/user_event_facade.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tonight/domain/wall_photos/wall_photo_entity.dart';
import 'package:tonight/domain/wall_photos/wall_photo_facade.dart';
import 'package:tonight/domain/wall_photos/wall_photo_failure.dart';
import 'package:translations/translations.dart';

part 'event_photos_bloc.freezed.dart';
part 'event_photos_event.dart';
part 'event_photos_state.dart';

const _pageSize = 15;

class EventPhotosBloc extends Bloc<EventPhotosEvent, EventPhotosState> {
  final WallPhotoFacade _wallPhotoFacade;
  final UserEventFacade _eventFacade;

  EventPhotosBloc(this._wallPhotoFacade, this._eventFacade)
      : super(EventPhotosState.initial()) {
    on<_PhotosFetched>(_onPhotosFetched);
    on<_PhotosRefreshed>(_onPhotosRefreshed);
    on<_NextPagePhotosFetched>(
      _onNextPagePhotosFetched,
      transformer: throttleDroppable(),
    );
    on<_PhotoAdded>(_onPhotoAdded);
    on<_PhotoReported>(_onPhotoReported);
  }

  FutureOr<void> _onPhotosFetched(
    _PhotosFetched event,
    Emitter<EventPhotosState> emit,
  ) async {
    final initEventResult = await _initEventInState(
      emit: emit,
      eventId: event.eventId,
      event: event.event,
    );
    if (initEventResult == null) return;
    emit(state.copyWith(getPhotosStatus: CubitStatus.loading));
    final result = await _wallPhotoFacade.getEventPhotos(
      eventId: event.eventId,
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

  Future<void> _onPhotoReported(
    _PhotoReported event,
    Emitter<EventPhotosState> emit,
  ) async {
    final photoIdsBeforeReport = [...state.reportingPhotoIds, event.photo.id];
    emit(state.copyWith(reportingPhotoIds: photoIdsBeforeReport));

    final failureOrSuccess =
        await _wallPhotoFacade.reportWallPhoto(event.photo);

    final photoIdsAfterReport = [...state.reportingPhotoIds]
      ..remove(event.photo.id);

    emit(state.copyWith(reportingPhotoIds: photoIdsAfterReport));

    failureOrSuccess.fold(
      (failure) => _emitPhotoReportFailure(failure, emit),
      (success) => _emitPhotoReportSuccess(emit),
    );
  }

  _emitPhotoReportSuccess(Emitter<EventPhotosState> emit) {
    emit(state.copyWith(snackbarMessage: some(S().photoReportedSuccessfully)));
    emit(state.copyWith(snackbarMessage: none()));
  }

  _emitPhotoReportFailure(
    WallPhotoFailure failure,
    Emitter<EventPhotosState> emit,
  ) {
    emit(state.copyWith(snackbarMessage: some(failure.message)));
    emit(state.copyWith(snackbarMessage: none()));
  }

  Future<Event?> _initEventInState({
    required Emitter<EventPhotosState> emit,
    required String eventId,
    Event? event,
  }) async {
    if (event != null) {
      emit(state.copyWith(event: some(event)));
      return event;
    }
    final result = await _eventFacade.getEventById(eventId);
    return result.fold(
      (_) {
        emit(state.copyWith(getPhotosStatus: CubitStatus.failure));
        return null;
      },
      (event) {
        emit(state.copyWith(event: some(event)));
        return event;
      },
    );
  }
}
