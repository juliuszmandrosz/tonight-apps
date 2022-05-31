import 'dart:io';

import 'package:formz/formz.dart';

enum EventPhotoError {
  empty,
  wrongSize,
}

final eventPhotoErrorMessages = {
  // TODO - add translations
  EventPhotoError.empty: 'Dodaj zdjęcie',
  EventPhotoError.wrongSize: 'Zły rozmiar',
};

class EventPhoto extends FormzInput<File?, EventPhotoError> {
  const EventPhoto.pure() : super.pure(null);

  const EventPhoto.dirty(File? value) : super.dirty(value);

  @override
  EventPhotoError? validator(File? value) {
    if (value == null || value.path.isEmpty) {
      return EventPhotoError.empty;
    }

    return null;
  }
}
