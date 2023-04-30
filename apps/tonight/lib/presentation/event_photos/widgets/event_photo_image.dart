import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:tonight/domain/wall_photos/wall_photo_entity.dart';

class EventPhotoImage extends StatelessWidget {
  final WallPhoto photo;

  const EventPhotoImage({required this.photo, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final photoHeight = constraints.maxWidth * 1.25;
        return NetworkPhoto(
          photoUrl: photo.photoUrl,
          photoHeight: photoHeight,
          loaderSize: 24,
        );
      },
    );
  }
}
