import 'package:flutter/material.dart';
import 'package:tonight/presentation/club_details/widgets/club_details_tabs/details/about_club_tile.dart';
import 'package:tonight/presentation/club_details/widgets/club_details_tabs/details/club_contact_tile.dart';
import 'package:tonight/presentation/club_details/widgets/club_details_tabs/details/club_social_media_row.dart';

class ClubDetails extends StatelessWidget {
  const ClubDetails({
    Key? key,
    required this.aboutUs,
    required this.phoneNumber,
    required this.socialMedia,
  }) : super(key: key);

  final String? aboutUs;
  final String phoneNumber;
  final Map<String, String> socialMedia;

  @override
  Widget build(BuildContext context) {
    final clubDetailTiles = [
      ClubContactTile(phoneNumber: phoneNumber),
      AboutClubTile(aboutUs: aboutUs),
    ];

    return SingleChildScrollView(
      child: Column(
        children: [
          ListView.separated(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            separatorBuilder: (context, i) => const Divider(),
            itemCount: clubDetailTiles.length + 1,
            itemBuilder: (context, i) => i >= clubDetailTiles.length
                ? const SizedBox()
                : clubDetailTiles[i],
          ),
          const SizedBox(height: 20),
          ClubSocialMediaRow(socialMedia: socialMedia),
        ],
      ),
    );
  }
}
