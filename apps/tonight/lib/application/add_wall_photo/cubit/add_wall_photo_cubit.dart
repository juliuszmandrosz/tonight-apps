import 'dart:async';
import 'dart:io';

import 'package:common/common.dart';
import 'package:dartz/dartz.dart';
import 'package:events/domain/events/event_entity.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:path_provider/path_provider.dart';
import 'package:share_plus/share_plus.dart';
import 'package:tonight/application/add_wall_photo/aggregator/add_wall_photo_aggregator/add_wall_photo_aggregator.dart';
import 'package:tonight/application/add_wall_photo/aggregator/add_wall_photo_aggregator/add_wall_photo_failure.dart';
import 'package:tonight/application/add_wall_photo/models/wall_photo_venue_model.dart';
import 'package:tonight/domain/time_tasks/time_task_entity.dart';
import 'package:tonight/domain/wall_photos/wall_photo_entity.dart';
import 'package:translations/translations.dart';
import 'package:uuid/uuid.dart';

part 'add_wall_photo_cubit.freezed.dart';
part 'add_wall_photo_state.dart';

class AddWallPhotoCubit extends Cubit<AddWallPhotoState> {
  final AddWallPhotoAggregator _addWallPhotoAggregator;

  AddWallPhotoCubit(this._addWallPhotoAggregator)
      : super(AddWallPhotoState.initial());

  initState({
    required String photoPath,
    required bool isSelfie,
    required Option<Event> event,
    required Option<TimeTask> timeTask,
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
        timeTask: timeTask,
      ),
    );

    emit(state.copyWith(processPhotoTask: some(_processPhoto())));

    unawaited(state.processPhotoTask.getOrCrash());
  }

  selectVenue(WallPhotoVenue venue) async {
    emit(state.copyWith(selectedVenue: some(venue)));
  }

  selectEvent(Event event) {
    emit(state.copyWith(selectedEvent: some(event)));
  }

  Future<void> addPhoto(BuildContext context) async {
    if (state.timeTask.isSome()) {
      final task = state.timeTask.getOrCrash();
      final now = DateTime.now();
      final durationInMilliseconds = task.durationInMinutes * 60 * 1000;
      final diff = now.difference(task.createdAt).inMilliseconds;

      if (diff > durationInMilliseconds) {
        context.showSnackbarMessage('${S().timeTaskExpired} 😉');
        return;
      }
    }

    if (state.selectedEvent.isNone()) {
      _showSnackbarMessage(S().pleaseSelectEvent);
      return;
    }
    emit(state.copyWith(addPhotoStatus: CubitStatus.loading));
    final selectedEvent = state.selectedEvent.getOrCrash();
    final selectedVenue = state.selectedVenue.getOrCrash();
    final processedPhoto = await state.processPhotoTask.getOrCrash();
    if (processedPhoto.isNone()) {
      emit(state.copyWith(addPhotoStatus: CubitStatus.failure));
      _showSnackbarMessage(S().errorAddingPhoto);
      if (!state.processPhotoStatus.isLoading()) {
        emit(state.copyWith(processPhotoTask: some(_processPhoto())));
        unawaited(state.processPhotoTask.getOrCrash());
      }
      return;
    }
    final result = await _addWallPhotoAggregator.addPhoto(
      event: selectedEvent,
      venue: selectedVenue,
      photo: processedPhoto.getOrCrash(),
      photoLocation: state.userLocation.fold(
        () => null,
        (location) => location,
      ),
      timeTask: state.timeTask.fold(
        () => null,
        (task) => task,
      ),
    );
    result.fold(
      (failure) {
        emit(
          state.copyWith(
            addPhotoStatus: CubitStatus.failure,
            failure: some(failure),
          ),
        );
        _showSnackbarMessage(failure.message);
      },
      (photo) => emit(
        state.copyWith(
          addPhotoStatus: CubitStatus.success,
          result: some(photo),
        ),
      ),
    );
  }

  Future<void> sharePhoto() async {
    emit(state.copyWith(sharePhotoStatus: CubitStatus.loading));
    final processedPhoto = await state.processPhotoTask.getOrCrash();
    if (processedPhoto.isNone()) {
      emit(state.copyWith(sharePhotoStatus: CubitStatus.failure));
      _showSnackbarMessage(S().errorSharingPhoto);
      if (!state.processPhotoStatus.isLoading()) {
        emit(state.copyWith(processPhotoTask: some(_processPhoto())));
        unawaited(state.processPhotoTask.getOrCrash());
      }
      return;
    }
    final tempDir = await getTemporaryDirectory();
    final filePath = '${tempDir.path}/${const Uuid().v1()}}.jpg';
    final file = File(filePath);
    await file.writeAsBytes(processedPhoto.getOrCrash());
    await Share.shareFiles([file.path]);
    emit(state.copyWith(sharePhotoStatus: CubitStatus.success));
  }

  Future<Option<Uint8List>> _processPhoto() async {
    emit(state.copyWith(processPhotoStatus: CubitStatus.loading));
    final photoBytes = await state.photo.getOrCrash().readAsBytes();
    final compressedPhoto = await compressImage(
      photoBytes,
      quality: 90,
      minHeight: 1350,
      minWidth: 1024,
    );
    if (!state.isSelfie) {
      emit(state.copyWith(processPhotoStatus: CubitStatus.success));
      return some(compressedPhoto);
    }
    final flippedPhoto = await flipImageHorizontallyAsync(compressedPhoto);
    return flippedPhoto.fold(
      () {
        emit(state.copyWith(processPhotoStatus: CubitStatus.failure));
        return none();
      },
      (photo) {
        emit(state.copyWith(processPhotoStatus: CubitStatus.success));
        return some(photo);
      },
    );
  }

  _showSnackbarMessage(String message) {
    emit(state.copyWith(snackbarMessage: some(message)));
    emit(state.copyWith(snackbarMessage: none()));
  }
}
