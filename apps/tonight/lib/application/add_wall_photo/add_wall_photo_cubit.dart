import 'dart:io';

import 'package:clubs/domain/club/club_entity.dart';
import 'package:clubs/domain/club/user_club_facade.dart';
import 'package:common/common.dart';
import 'package:dartz/dartz.dart';
import 'package:events/domain/events/event_entity.dart';
import 'package:events/domain/events/user_event_facade.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:tonight/domain/wall_photos/wall_photo_facade.dart';
import 'package:tonight/domain/wall_photos/wall_photo_failure.dart';

part 'add_wall_photo_cubit.freezed.dart';
part 'add_wall_photo_state.dart';

class AddWallPhotoCubit extends Cubit<AddWallPhotoState> {
  final UserClubFacade _clubFacade;
  final UserEventFacade _eventFacade;
  final WallPhotoFacade _wallPhotoFacade;

  AddWallPhotoCubit(
    this._clubFacade,
    this._eventFacade,
    this._wallPhotoFacade,
  ) : super(AddWallPhotoState.initial());

  addPhotoToState(String photoPath) {
    emit(
      state.copyWith(photo: some(File(photoPath))),
    );
  }

  Future<void> fetchNearestClubs(Future<LatLng> userLocation) async {
    emit(state.copyWith(fetchNearestClubStatus: CubitStatus.loading));
    final location = await Future.value(userLocation);
    emit(state.copyWith(userLocation: some(location)));
    final result = await _clubFacade.fetchNearestClubsInRange(
      userLocation: location,
      radius: 5,
    );

    result.fold(
      (failure) => emit(
        state.copyWith(
          fetchNearestClubStatus: CubitStatus.failure,
        ),
      ),
      (clubs) => emit(
        state.copyWith(
          nearestClubs: clubs,
          fetchNearestClubStatus: CubitStatus.success,
          selectedClub: clubs.isEmpty ? none() : some(clubs.first),
        ),
      ),
    );
  }

  selectClub(Club club) async {
    emit(state.copyWith(selectedClub: some(club)));
  }

  selectEvent(Event event) {
    emit(state.copyWith(selectedEvent: some(event)));
  }

  fetchLiveEventsFromClub(Club club) async {
    emit(
      state.copyWith(
        fetchLiveEventsStatus: CubitStatus.loading,
        selectedEvent: none(),
      ),
    );
    final result = await _eventFacade.fetchLiveEventsFromClub(club.id);
    result.fold(
      (failure) => emit(
        state.copyWith(
          fetchLiveEventsStatus: CubitStatus.failure,
        ),
      ),
      (events) => emit(
        state.copyWith(
          fetchLiveEventsStatus: CubitStatus.success,
          liveEventsFromSelectedClub: events,
          selectedEvent: events.isEmpty ? none() : some(events.first),
        ),
      ),
    );
  }

  Future<void> addPhoto() async {
    if (state.selectedEvent.isNone()) {
      // TODO - add translation
      _showSnackbarMessage('Proszę wybrać wydarzenie');
      return;
    }
    emit(state.copyWith(addPhotoStatus: CubitStatus.loading));
    final selectedEvent = state.selectedEvent.getOrCrash();
    final photoBytes = await state.photo.getOrCrash().readAsBytes();
    final compressedPhoto = await compressImage(
      photoBytes,
      quality: 90,
      minHeight: 1350,
      minWidth: 1024,
    );
    final flippedPhoto = await flipImageHorizontallyAsync(compressedPhoto);
    if (flippedPhoto.isNone()) {
      emit(state.copyWith(addPhotoStatus: CubitStatus.failure));
      // TODO - add translation
      _showSnackbarMessage('Nie udało się dodać zdjęcia');
      return;
    }
    final result = await _wallPhotoFacade.addPhoto(
      clubId: selectedEvent.clubId,
      clubName: selectedEvent.clubName,
      eventId: selectedEvent.id,
      eventName: selectedEvent.eventName,
      eventEndDateTime: selectedEvent.eventEndDateTime,
      photo: flippedPhoto.getOrCrash(),
      location: state.userLocation.fold(() => null, (location) => location),
    );
    result.fold(
      (failure) {
        emit(state.copyWith(addPhotoStatus: CubitStatus.failure));
        _showSnackbarMessage(failure.message);
      },
      (_) => emit(state.copyWith(addPhotoStatus: CubitStatus.success)),
    );
  }

  _showSnackbarMessage(String message) {
    emit(state.copyWith(snackbarMessage: some(message)));
    emit(state.copyWith(snackbarMessage: none()));
  }
}
