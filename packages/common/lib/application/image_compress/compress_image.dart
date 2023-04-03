import 'dart:typed_data';

import 'package:flutter_image_compress/flutter_image_compress.dart';

Future<Uint8List> compressImage(Uint8List image) async {
  var result = await FlutterImageCompress.compressWithList(
    image,
    minWidth: 512,
    minHeight: 512,
    quality: 80,
  );
  return result;
}
