import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:common/common.dart';
import 'package:events/events.dart';

class EventNameBar extends StatelessWidget {
  final Event event;

  const EventNameBar({required this.event, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: context.surfaceColor.withOpacity(0.9),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: AutoSizeText(
          event.eventName,
          style: context.headline6,
          textAlign: TextAlign.center,
          softWrap: true,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
        ),
      ),
    );
  }
}
