import 'dart:io';

import 'package:formz/formz.dart';
import 'package:translations/translations.dart';

enum EventPhotoError {
  empty,
  wrongSize,
}

final eventPhotoErrorMessages = {
  EventPhotoError.empty: S().pleaseAddPhoto,
  EventPhotoError.wrongSize: S().maxPhotoSize,
};

class EventPhoto extends FormzInput<File?, EventPhotoError> {
  final int? photoSize;

  const EventPhoto.pure(this.photoSize) : super.pure(null);

  const EventPhoto.dirty({
    required this.photoSize,
    File? value,
  }) : super.dirty(value);

  @override
  EventPhotoError? validator(File? value) {
    if (value == null || value.path.isEmpty) {
      return EventPhotoError.empty;
    }

    if (photoSize != null && photoSize! > 1024 * 1024) {
      return EventPhotoError.wrongSize;
    }

    return null;
  }
}
