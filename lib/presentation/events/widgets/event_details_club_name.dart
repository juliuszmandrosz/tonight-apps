import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:raver/domain/events/event_entity.dart';
import 'package:raver/presentation/config/themes/default_theme/default_colors.dart';

class EventDetailsClubName extends StatelessWidget {
  final Event event;

  const EventDetailsClubName({
    required this.event,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          event.clubName,
          style: textTheme.headline1,
        ),
        const SizedBox(width: 10),
        IconButton(
          onPressed: () {
            // TODO - handle this
          },
          icon: const FaIcon(
            FontAwesomeIcons.infoCircle,
            color: DefaultColors.primaryColor,
          ),
        ),
      ],
    );
  }
}
