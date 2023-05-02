import 'dart:io';
import 'dart:typed_data';

import 'package:clubs/domain/club/user_club_facade.dart';
import 'package:common/common.dart';
import 'package:dartz/dartz.dart';
import 'package:events/domain/events/event_entity.dart';
import 'package:events/domain/events/user_event_facade.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:tonight/application/add_wall_photo/wall_photo_venue_model.dart';
import 'package:tonight/domain/wall_photos/wall_photo_facade.dart';
import 'package:tonight/domain/wall_photos/wall_photo_failure.dart';
import 'package:translations/raver_translations.dart';

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

  initState({
    required String photoPath,
    required bool isSelfie,
    required Option<Event> event,
  }) {
    emit(
      state.copyWith(
        photo: some(File(photoPath)),
        isSelfie: isSelfie,
        initialEvent: event,
        selectedEvent: event,
        selectedVenue: event.fold(
          () => none(),
          (v) => some(WallPhotoVenue.fromEvent(v)),
        ),
      ),
    );
  }

  Future<void> fetchNearestClubs(Future<LatLng> userLocation) async {
    emit(state.copyWith(fetchNearestClubStatus: CubitStatus.loading));
    final location = await Future.value(userLocation);
    emit(state.copyWith(userLocation: some(location)));
    final result = await _clubFacade.fetchNearestClubsInRange(
      userLocation: location,
      radius: 1,
    );

    result.fold(
      (failure) => emit(
        state.copyWith(
          fetchNearestClubStatus: CubitStatus.failure,
        ),
      ),
      (clubs) => emit(
        state.copyWith(
          nearestVenues: clubs.map((c) => WallPhotoVenue.fromClub(c)).toList(),
          fetchNearestClubStatus: CubitStatus.success,
          selectedVenue: clubs.isEmpty
              ? none()
              : some(WallPhotoVenue.fromClub(clubs.first)),
        ),
      ),
    );
  }

  selectVenue(WallPhotoVenue venue) async {
    emit(state.copyWith(selectedVenue: some(venue)));
  }

  selectEvent(Event event) {
    emit(state.copyWith(selectedEvent: some(event)));
  }

  fetchLiveEventsFromClub(WallPhotoVenue venue) async {
    emit(
      state.copyWith(
        fetchLiveEventsStatus: CubitStatus.loading,
        selectedEvent: none(),
      ),
    );
    final result = await _eventFacade.fetchLiveEventsFromClub(venue.venueId);
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
      _showSnackbarMessage(S().pleaseSelectEvent);
      return;
    }
    emit(state.copyWith(addPhotoStatus: CubitStatus.loading));
    final selectedEvent = state.selectedEvent.getOrCrash();
    final venueLocation = state.selectedVenue.getOrCrash().venueLocation;
    final processedPhoto = await _processPhoto();
    if (processedPhoto.isNone()) {
      emit(state.copyWith(addPhotoStatus: CubitStatus.failure));
      _showSnackbarMessage(S().errorAddingPhoto);
      return;
    }
    final result = await _wallPhotoFacade.addPhoto(
      venueId: selectedEvent.clubId,
      venueName: selectedEvent.clubName,
      eventId: selectedEvent.id,
      eventName: selectedEvent.eventName,
      eventEndDateTime: selectedEvent.eventEndDateTime,
      photo: processedPhoto.getOrCrash(),
      venueLocation: venueLocation,
      photoLocation: state.userLocation.fold(
        () => null,
        (location) => location,
      ),
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

  Future<Option<Uint8List>> _processPhoto() async {
    final photoBytes = await state.photo.getOrCrash().readAsBytes();
    final compressedPhoto = await compressImage(
      photoBytes,
      quality: 90,
      minHeight: 1350,
      minWidth: 1024,
    );
    if (!state.isSelfie) return some(compressedPhoto);
    final flippedPhoto = await flipImageHorizontallyAsync(compressedPhoto);
    return flippedPhoto.fold(
      () => none(),
      (photo) => some(photo),
    );
  }
}
