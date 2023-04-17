import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:image/image.dart' as img;

Future<Option<Uint8List>> flipImageVerticallyAsync(Uint8List image) async {
  return await compute(_flipImageVertically, image);
}

Option<Uint8List> _flipImageVertically(Uint8List image) {
  img.Image? inputImage = img.decodeImage(image);

  if (inputImage == null) {
    return none();
  }

  final flippedImage = img.flip(
    inputImage,
    direction: img.FlipDirection.vertical,
  );

  final result = img.encodeJpg(flippedImage);

  return some(result);
}
