import 'package:auto_route/auto_route.dart';
import 'package:common/extensions/color_extensions.dart';
import 'package:common/extensions/typography_extensions.dart';
import 'package:common/presentation/profile_picture_container.dart';
import 'package:events/domain/events/event_entity.dart';
import 'package:flutter/material.dart';
import 'package:tonight/presentation/routes/app_router.gr.dart';

class EventClubPhoto extends StatelessWidget {
  final Event event;

  const EventClubPhoto({
    required this.event,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: 0.9,
      child: InkWell(
        onTap: () => context.pushRoute(
          ClubDetailsRoute(clubId: event.clubId),
        ),
        child: ProfilePictureContainer(
          imageSize: 45,
          profilePictureUrl: event.clubPhotoUrl,
          username: event.clubName,
          textStyle: context.titleSmall,
          backgroundColor: context.surfaceColor,
          textColor: context.onSurfaceColor,
        ),
      ),
    );
  }
}
