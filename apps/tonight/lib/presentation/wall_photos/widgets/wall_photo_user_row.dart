import 'package:auto_size_text/auto_size_text.dart';
import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'package:tonight/domain/wall_photos/wall_photo_entity.dart';

class WallPhotoUserRow extends StatelessWidget {
  final WallPhoto wallPhoto;

  const WallPhotoUserRow({required this.wallPhoto, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const containerSize = 50.0;
    return Row(
      children: [
        Container(
          padding: EdgeInsets.zero,
          height: containerSize,
          width: containerSize,
          decoration: BoxDecoration(
            color: context.onSurfaceColor,
            shape: BoxShape.circle,
          ),
          child: wallPhoto.userProfilePhotoUrl.isNotNullOrEmpty
              ? CircleNetworkPhoto(
                  photoUrl: wallPhoto.userProfilePhotoUrl!,
                  containerSize: containerSize,
                )
              : Center(
                  child: Text(
                    wallPhoto.username.toUpperCase().substring(0, 2),
                    style: context.titleMedium.copyWith(
                      color: context.surfaceColor,
                    ),
                  ),
                ),
        ),
        const SizedBox(width: 16),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AutoSizeText(
              wallPhoto.username,
              style: context.titleMedium,
            ),
            const SizedBox(height: 8),
            Text(
              timeago.format(
                wallPhoto.createdAt,
                locale: Intl.getCurrentLocale(),
              ),
              style: context.titleSmall.copyWith(
                color: context.secondaryColor,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
