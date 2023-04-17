import 'dart:typed_data';

import 'package:flutter_image_compress/flutter_image_compress.dart';

Future<Uint8List> compressImage(
  Uint8List file, {
  int minWidth = 512,
  int minHeight = 512,
  int quality = 80,
  int rotate = 0,
}) async {
  var result = await FlutterImageCompress.compressWithList(
    file,
    minWidth: minWidth,
    minHeight: minHeight,
    quality: quality,
    rotate: rotate,
  );
  return result;
}
