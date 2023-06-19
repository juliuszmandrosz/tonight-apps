import 'package:flutter/material.dart';
import 'package:tonight/presentation/clubs/widgets/club_city_picker_field.dart';
import 'package:tonight/presentation/clubs/widgets/club_search_field.dart';

class ClubsSliverAppBar extends StatelessWidget {
  const ClubsSliverAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        ClubSearchField(),
        SizedBox(height: 12),
        ClubCityPickerField(),
      ],
    );
  }
}
