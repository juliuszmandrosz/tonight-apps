import 'dart:html';
import 'package:dartz/dartz.dart';
import 'package:raver/domain/core/value_failures.dart';
import 'package:raver/domain/core/value_object.dart';

class ClubImage extends ValueObject<File?> {
  @override
  final Either<ValueFailure<File>, File?> value;

  factory ClubImage(File? image) {
    return ClubImage._(right(image));
  }

  const ClubImage._(this.value);
}
