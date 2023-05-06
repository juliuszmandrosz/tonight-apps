import 'package:auto_route/auto_route.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:tonight/domain/wall_photos/wall_photo_entity.dart';
import 'package:tonight/presentation/routes/app_router.gr.dart';
import 'package:tonight/presentation/wall_photos/widgets/wall_photo_report_button.dart';

class WallPhotoUserRow extends StatelessWidget {
  final WallPhoto wallPhoto;

  const WallPhotoUserRow({required this.wallPhoto, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const containerSize = 40.0;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4.0),
      child: InkWell(
        onTap: () => context.pushRoute(
          UserDetailsRoute(userId: wallPhoto.userId),
        ),
        child: Row(
          children: [
            ProfilePictureContainer(
              imageSize: containerSize,
              profilePictureUrl: wallPhoto.userProfilePhotoUrl,
              username: wallPhoto.username,
              textStyle: context.titleSmall,
              backgroundColor: context.surfaceColor,
              textColor: context.onSurfaceColor,
            ),
            const SizedBox(width: 8),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AutoSizeText(
                    wallPhoto.username,
                    style: context.titleSmall,
                    maxLines: 1,
                  ),
                  const SizedBox(height: 4),
                  AutoSizeText(
                    '${wallPhoto.venueName} • '
                    '${context.formatDateTimeToLocaleHM(wallPhoto.createdAt)}',
                    style: context.labelSmall.copyWith(
                      color: context.secondaryColor,
                    ),
                    maxLines: 1,
                    softWrap: true,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
            const SizedBox(width: 8),
            WallPhotoReportButton(photo: wallPhoto),
          ],
        ),
      ),
    );
  }
}
