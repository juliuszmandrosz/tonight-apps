import 'package:flutter/material.dart';
import 'package:raver/presentation/clubs/widgets/club_search_field.dart';

import '../../clubs/widgets/club_search_field.dart';

class ClubSearchBar extends StatelessWidget {
  const ClubSearchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        Expanded(child: ClubSearchField()),
      ],
    );
  }
}
