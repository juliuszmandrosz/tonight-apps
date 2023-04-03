import 'dart:io';
import 'dart:typed_data';

import 'package:common/application/image_utils/compress_image.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/foundation.dart';

Future<Uint8List?> pickImage(String dialogTitle) async {
  final result = await FilePicker.platform.pickFiles(
    allowMultiple: false,
    type: FileType.image,
    dialogTitle: dialogTitle,
  );

  if (result == null) return null;

  var file = File(result.files.first.path!);

  final imageBytes = await file.readAsBytes();

  final compressedImage = await compressImage(imageBytes);

  return compressedImage;
}
