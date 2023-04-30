import 'package:auto_route/auto_route.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'package:tonight/domain/wall_photos/wall_photo_entity.dart';
import 'package:tonight/presentation/routes/app_router.gr.dart';

class EventPhotoUserRow extends StatelessWidget {
  final WallPhoto photo;

  const EventPhotoUserRow({required this.photo, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const containerSize = 40.0;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4.0),
      child: InkWell(
        onTap: () => context.pushRoute(
          UserDetailsRoute(userId: photo.userId),
        ),
        child: Row(
          children: [
            ProfilePictureContainer(
              imageSize: containerSize,
              profilePictureUrl: photo.userProfilePhotoUrl,
              username: photo.username,
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
                    photo.username,
                    style: context.titleSmall,
                    maxLines: 1,
                  ),
                  const SizedBox(height: 4),
                  AutoSizeText(
                    // TODO - add translation
                    '${photo.venueName} • ${timeago.format(
                      photo.createdAt,
                      locale: Intl.getCurrentLocale(),
                    )}',
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
          ],
        ),
      ),
    );
  }
}
