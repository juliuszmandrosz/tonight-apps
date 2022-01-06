import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:raver/presentation/home/widgets/search_input.dart';

class EventSearchBar extends StatelessWidget {
  final Function _onSearch;

  const EventSearchBar({Key? key, required Function onSearch})
      : this._onSearch = onSearch,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Expanded(
          child: SearchField(
            onSearch: _onSearch,
          ),
        ),
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
