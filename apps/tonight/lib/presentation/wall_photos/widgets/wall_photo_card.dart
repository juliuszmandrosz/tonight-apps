import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:tonight/domain/wall_photos/wall_photo_entity.dart';
import 'package:tonight/presentation/routes/app_router.gr.dart';
import 'package:tonight/presentation/wall_photos/widgets/wall_photo_details.dart';
import 'package:tonight/presentation/wall_photos/widgets/wall_photo_image.dart';
import 'package:tonight/presentation/wall_photos/widgets/wall_photo_user_row.dart';

class WallPhotoCard extends StatelessWidget {
  final WallPhoto wallPhoto;

  const WallPhotoCard({required this.wallPhoto, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => context.pushRoute(
        EventDetailsRoute(
          eventId: wallPhoto.eventId,
        ),
      ),
      child: Card(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: WallPhotoUserRow(wallPhoto: wallPhoto),
            ),
            WallPhotoImage(wallPhoto: wallPhoto),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: WallPhotoDetails(wallPhoto: wallPhoto),
            ),
          ],
        ),
      ),
    );
  }
}
