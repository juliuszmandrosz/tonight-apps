import 'package:common/common.dart';
import 'package:events/events.dart';
import 'package:flutter/material.dart';
import 'package:tonight/presentation/core/tonight_headline.dart';
import 'package:translations/translations.dart';

class EventDetailsPriceList extends StatelessWidget {
  final Event event;

  const EventDetailsPriceList({
    required this.event,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          dense: true,
          contentPadding: const EdgeInsets.only(left: 0.0, right: 0.0),
          title: Align(
            alignment: Alignment.centerLeft,
            child: TonightHeadline(text: S().price, isSmallerVersion: true),
          ),
          subtitle: Padding(
            padding: const EdgeInsets.only(top: 15),
            child: Text(
              event.priceList,
              style: context.titleMedium.copyWithSecondaryColor(),
            ),
          ),
        ),
      ],
    );
  }
}
