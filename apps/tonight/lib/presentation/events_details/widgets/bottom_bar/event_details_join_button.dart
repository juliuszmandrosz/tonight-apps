import 'package:auto_route/auto_route.dart';
import 'package:common/extensions/router_extensions.dart';
import 'package:events/domain/events/event_entity.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tonight/presentation/routes/app_router.gr.dart';
import 'package:translations/translations.dart';

class EventDetailsJoinButton extends StatelessWidget {
  final Event event;

  const EventDetailsJoinButton({
    required this.event,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton.extended(
      onPressed: () {
        final previousRouteName = context.previousRoute?.name;
        previousRouteName == EventRoomRoute.name
            ? context.popRoute()
            : context.pushRoute(EventRoomRoute(event: event));
      },
      icon: const FaIcon(FontAwesomeIcons.arrowRightToBracket),
      label: Text(S().join),
    );
  }
}
