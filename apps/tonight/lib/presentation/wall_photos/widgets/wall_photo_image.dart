import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:tonight/domain/wall_photos/wall_photo_entity.dart';

class WallPhotoImage extends StatelessWidget {
  final WallPhoto wallPhoto;

  const WallPhotoImage({required this.wallPhoto, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final photoHeight = constraints.maxWidth;
        return NetworkPhoto(
          photoUrl: wallPhoto.photoUrl,
          photoHeight: photoHeight,
          loaderSize: 24,
        );
      },
    );
  }
}
