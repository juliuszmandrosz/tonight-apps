import 'package:common/extensions/extensions.dart';
import 'package:flutter/material.dart';
import 'package:tonight/domain/wall_photos/wall_photo_entity.dart';
import 'package:tonight/presentation/event_photos/widgets/event_photo_image.dart';
import 'package:tonight/presentation/event_photos/widgets/event_photo_user_row.dart';

class EventPhotoCard extends StatelessWidget {
  final WallPhoto photo;

  const EventPhotoCard({required this.photo, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: context.backgroundColor,
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        children: [
          const SizedBox(height: 8),
          EventPhotoUserRow(photo: photo),
          const SizedBox(height: 8),
          EventPhotoImage(photo: photo),
        ],
      ),
    );
  }
}
