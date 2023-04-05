import 'package:flutter/material.dart';
import 'package:tonight/domain/wall_photos/wall_photo_entity.dart';
import 'package:tonight/presentation/wall_photos/widgets/wall_photo_image.dart';

class WallPhotoCard extends StatelessWidget {
  final WallPhoto wallPhoto;

  const WallPhotoCard({required this.wallPhoto, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => {},
      child: Card(
        child: Column(
          children: [
            WallPhotoImage(wallPhoto: wallPhoto),
          ],
        ),
      ),
    );
  }
}
