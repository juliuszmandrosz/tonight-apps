import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class EventSearchBar extends StatelessWidget {
  const EventSearchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        // const Expanded(
        //   //TODO: Replace with event search field
        //   child: ClubSearchField(),
        // ),
        IconButton(
          onPressed: () {},
          icon: const FaIcon(FontAwesomeIcons.calendarAlt),
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.settings),
        ),
      ],
    );
  }
}
