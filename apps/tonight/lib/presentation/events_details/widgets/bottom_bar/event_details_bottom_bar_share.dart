import 'package:common/common.dart';
import 'package:events/domain/events/event_entity.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:share_plus/share_plus.dart';
import 'package:tonight/application/core/build_dynamic_link.dart';

class EventDetailsBottomBarShare extends StatefulWidget {
  final Event event;

  const EventDetailsBottomBarShare({
    required this.event,
    Key? key,
  }) : super(key: key);

  @override
  State<EventDetailsBottomBarShare> createState() =>
      _EventDetailsBottomBarShareState();
}

class _EventDetailsBottomBarShareState
    extends State<EventDetailsBottomBarShare> {
  var _isLoading = false;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 48,
      child: _isLoading
          ? const CircleLoadingIndicator(size: 24)
          : IconButton(
              icon: const FaIcon(FontAwesomeIcons.shareNodes),
              onPressed: _shareEvent,
            ),
    );
  }

  _shareEvent() async {
    if (_isLoading) return;
    setState(() {
      _isLoading = true;
    });
    final sharePath = 'events?eventId=${widget.event.id}';
    final link = await buildDynamicLink(sharePath);
    setState(() {
      _isLoading = false;
    });
    Share.share(link);
  }
}
