import 'package:common/extensions/build_context_extensions.dart';
import 'package:common/utils/url_utils.dart';
import 'package:events/domain/events/event_entity.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:translations/translations.dart';

class EventDetailsBottomBarCheckout extends StatelessWidget {
  final Event event;

  const EventDetailsBottomBarCheckout({
    required this.event,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () async {
        final result = await launchURL(Uri.parse(event.ticketsUrl!));
        result.fold(
          () {},
          (_) => context.showSnackbarMessage(S().serverError),
        );
      },
      icon: const FaIcon(FontAwesomeIcons.ticket),
    );
  }
}
