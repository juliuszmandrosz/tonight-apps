import 'dart:io';

import 'package:formz/formz.dart';
import 'package:raver_translations/raver_translations.dart';

enum EventPhotoError {
  empty,
  wrongSize,
}

final eventPhotoErrorMessages = {
  EventPhotoError.empty: S().pleaseAddPhoto,
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
