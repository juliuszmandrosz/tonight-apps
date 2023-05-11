import 'package:auto_route/auto_route.dart';
import 'package:common/extensions/build_context_extensions.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tonight/domain/wall_photos/wall_photo_entity.dart';
import 'package:tonight/presentation/routes/app_router.gr.dart';
import 'package:translations/translations.dart';

class UserWallPhotoRateButton extends StatelessWidget {
  final WallPhoto photo;

  const UserWallPhotoRateButton({required this.photo, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton.extended(
      onPressed: () => photo.isVerified
          ? context.pushRoute(ReviewRoute(eventId: photo.eventId))
          : context.showSnackbarMessage(S().photoNotVerifiedYet),
      icon: const FaIcon(
        FontAwesomeIcons.solidStar,
        size: 20,
      ),
      label: Text(S().rate),
    );
  }
}
