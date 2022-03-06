import 'package:flutter/material.dart';
import 'package:raver/presentation/home/widgets/club_search_field.dart';

import 'club_search_field.dart';

class ClubSearchBar extends StatelessWidget {
  const ClubSearchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        const Expanded(
          child: ClubSearchField(),
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.settings),
        ),
      ],
    );
  }
}
