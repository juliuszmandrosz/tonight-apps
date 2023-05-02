import 'package:auto_route/auto_route.dart';
import 'package:common/extensions/build_context_extensions.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tonight/domain/wall_photos/wall_photo_entity.dart';
import 'package:tonight/presentation/routes/app_router.gr.dart';
import 'package:translations/raver_translations.dart';

class UserWallPhotoRateButton extends StatelessWidget {
  final WallPhoto photo;
  final double width;

  const UserWallPhotoRateButton({
    required this.photo,
    required this.width,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: ElevatedButton.icon(
        onPressed: () => photo.isVerified
            ? context.pushRoute(ReviewRoute(eventId: photo.eventId))
            : context.showSnackbarMessage(S().photoNotVerifiedYet),
        label: Text(S().rateEvent),
        icon: const FaIcon(
          FontAwesomeIcons.solidStar,
          size: 20,
        ),
      ),
    );
  }
}
