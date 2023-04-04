import 'package:flutter/material.dart';
import 'package:tonight/presentation/club_details/widgets/club_details_tabs/details/club_detail_tile.dart';
import 'package:translations/translations.dart';

class AboutClubTile extends StatelessWidget {
  final String aboutUs;

  const AboutClubTile({
    required this.aboutUs,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClubDetailTile(
      title: S().aboutUs,
      subtitle: aboutUs,
    );
  }
}
