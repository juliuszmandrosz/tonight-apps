import 'package:auto_route/auto_route.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:raver/presentation/core/raver_headline.dart';
import 'package:raver/presentation/routes/app_router.dart';
import 'package:raver_common/raver_common.dart';
import 'package:raver_events/raver_events.dart';

class EventDetailsClubName extends StatelessWidget {
  final Event event;

  const EventDetailsClubName({
    required this.event,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      dense: true,
      contentPadding: const EdgeInsets.only(left: 0.0, right: 0.0),
      title: const Align(
        alignment: Alignment.centerLeft,
        child: RaverHeadline(text: 'Club name', isSmallerVersion: true),
      ),
      subtitle: Padding(
        padding: const EdgeInsets.only(top: 15),
        child: AutoSizeText(
          event.clubName,
          style: context.subtitle1.copyWith(color: context.secondaryColor),
        ),
      ),
      trailing: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          IconButton(
            onPressed: () => AutoRouter.of(context).push(
              ClubDetailsRoute(clubId: event.clubId),
            ),
            icon: const FaIcon(FontAwesomeIcons.circleInfo),
          ),
        ],
      ),
    );
  }
}
