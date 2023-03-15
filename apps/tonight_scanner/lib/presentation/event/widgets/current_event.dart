import 'package:auto_size_text/auto_size_text.dart';
import 'package:common/common.dart';
import 'package:events/events.dart';
import 'package:flutter/material.dart';

class CurrentEvent extends StatelessWidget {
  final Event event;

  const CurrentEvent({
    required this.event,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AutoSizeText(
      event.eventName,
      maxLines: 4,
      textAlign: TextAlign.center,
      style: context.headlineSmall,
    );
  }
}
