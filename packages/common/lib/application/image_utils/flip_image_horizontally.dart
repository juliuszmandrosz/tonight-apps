import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:image/image.dart' as img;

Future<Option<Uint8List>> flipImageHorizontallyAsync(Uint8List image) async {
  return await compute(_flipImageHorizontally, image);
}

Option<Uint8List> _flipImageHorizontally(Uint8List image) {
  img.Image? inputImage = img.decodeImage(image);

  if (inputImage == null) {
    return none();
  }

  final flippedImage = img.flip(
    inputImage,
    direction: img.FlipDirection.horizontal,
  );

  final result = img.encodeJpg(flippedImage);

  return some(result);
}
