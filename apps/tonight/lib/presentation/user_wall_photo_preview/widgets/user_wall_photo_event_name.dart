import 'package:auto_route/auto_route.dart';
import 'package:common/extensions/color_extensions.dart';
import 'package:common/extensions/typography_extensions.dart';
import 'package:common/presentation/dense_list_tile.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tonight/domain/wall_photos/wall_photo_entity.dart';
import 'package:tonight/presentation/routes/app_router.gr.dart';

class UserWallPhotoEventName extends StatelessWidget {
  final WallPhoto photo;

  const UserWallPhotoEventName({required this.photo, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DenseListTile(
      onTap: () => context.pushRoute(
        EventDetailsRoute(eventId: photo.eventId),
      ),
      leading: FaIcon(
        FontAwesomeIcons.fire,
        color: context.secondaryColor,
        size: 20,
      ),
      title: Text(
        photo.eventName,
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
