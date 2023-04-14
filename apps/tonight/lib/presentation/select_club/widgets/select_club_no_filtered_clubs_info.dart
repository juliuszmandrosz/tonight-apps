import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:translations/translations.dart';

class SelectClubNoFilteredClubsInfo extends StatelessWidget {
  const SelectClubNoFilteredClubsInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        S().clubs(0),
        style: context.titleMedium.copyWith(
          color: context.secondaryColor,
        ),
      ),
    );
  }
}
