import 'package:auto_route/auto_route.dart';
import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:tonight/domain/wall_photos/wall_photo_entity.dart';
import 'package:tonight/presentation/routes/app_router.gr.dart';
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
        color: context.backgroundColor,
        clipBehavior: Clip.antiAlias,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8),
              child: WallPhotoUserRow(wallPhoto: wallPhoto),
            ),
            WallPhotoImage(wallPhoto: wallPhoto),
          ],
        ),
      ),
    );
  }
}
