import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:common/common.dart';
import 'package:events/events.dart';
import 'package:translations/translations.dart';

class EventDetailsDressCode extends StatelessWidget {
  final Event event;

  const EventDetailsDressCode({
    required this.event,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      dense: true,
      contentPadding: const EdgeInsets.only(left: 0.0, right: 0.0),
      title: Align(
        alignment: Alignment.centerLeft,
        child: AutoSizeText(
          S().dressCode,
          style: context.headline6,
          maxLines: 1,
        ),
      ),
      subtitle: Padding(
        padding: const EdgeInsets.only(top: 15),
        child: Text(
          event.allowedOutfit,
          style: context.subtitle1.copyWith(color: context.secondaryColor),
        ),
      ),
    );
  }
}
