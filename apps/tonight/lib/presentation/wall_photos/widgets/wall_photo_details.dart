import 'package:common/extensions/typography_extensions.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tonight/domain/wall_photos/wall_photo_entity.dart';

class WallPhotoDetails extends StatelessWidget {
  final WallPhoto wallPhoto;

  const WallPhotoDetails({
    required this.wallPhoto,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            const FaIcon(
              FontAwesomeIcons.building,
              size: 18,
            ),
            const SizedBox(width: 10),
            Expanded(
              child: Text(
                wallPhoto.clubName,
                style: context.titleMedium,
                overflow: TextOverflow.fade,
                maxLines: 1,
                softWrap: false,
              ),
            ),
          ],
        ),
        const SizedBox(height: 15),
        Row(
          children: [
            const FaIcon(
              FontAwesomeIcons.fire,
              size: 18,
            ),
            const SizedBox(width: 10),
            Expanded(
              child: Text(
                wallPhoto.eventName,
                style: context.titleMedium,
                overflow: TextOverflow.fade,
                maxLines: 1,
                softWrap: false,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
