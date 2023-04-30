import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:tonight/domain/wall_photos/wall_photo_entity.dart';
import 'package:tonight/presentation/user_wall_photo_preview/widgets/user_wall_photo_event_name.dart';
import 'package:tonight/presentation/user_wall_photo_preview/widgets/user_wall_photo_rate_button.dart';
import 'package:tonight/presentation/user_wall_photo_preview/widgets/user_wall_photo_venue_name.dart';

class UserWallPhotoPreviewPage extends StatelessWidget {
  final WallPhoto photo;
  final String heroTag;

  const UserWallPhotoPreviewPage({
    required this.photo,
    required this.heroTag,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: SafeArea(
        child: LayoutBuilder(
          builder: (context, constraints) {
            final photoHeight = constraints.maxWidth * 1.25;
            return Column(
              children: [
                Hero(
                  tag: heroTag,
                  child: NetworkPhoto(
                    photoUrl: photo.photoUrl,
                    photoHeight: photoHeight,
                  ),
                ),
                const SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    children: [
                      UserWallPhotoVenueName(photo: photo),
                      const SizedBox(height: 16),
                      UserWallPhotoEventName(photo: photo),
                    ],
                  ),
                ),
                const Spacer(),
                UserWallPhotoRateButton(
                  photo: photo,
                  width: constraints.maxWidth * 0.9,
                ),
                const SizedBox(height: 12),
              ],
            );
          },
        ),
      ),
    );
  }
}
