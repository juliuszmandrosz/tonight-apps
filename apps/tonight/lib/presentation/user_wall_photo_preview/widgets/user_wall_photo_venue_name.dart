import 'package:auto_route/auto_route.dart';
import 'package:common/extensions/color_extensions.dart';
import 'package:common/extensions/typography_extensions.dart';
import 'package:common/presentation/dense_list_tile.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tonight/domain/wall_photos/wall_photo_entity.dart';
import 'package:tonight/presentation/routes/app_router.gr.dart';

class UserWallPhotoVenueName extends StatelessWidget {
  final WallPhoto photo;

  const UserWallPhotoVenueName({required this.photo, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DenseListTile(
      onTap: () => context.pushRoute(
        ClubDetailsRoute(clubId: photo.venueId),
      ),
      leading: FaIcon(
        FontAwesomeIcons.locationDot,
        color: context.secondaryColor,
        size: 20,
      ),
      title: Text(
        photo.venueName,
        style: context.titleSmall.copyWith(
          color: context.secondaryColor,
        ),
      ),
      trailing: FaIcon(
        FontAwesomeIcons.chevronRight,
        size: 16,
        color: context.secondaryColor,
      ),
    );
  }
}
