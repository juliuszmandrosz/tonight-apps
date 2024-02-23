import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:tonight/domain/collectives/collective_entity.dart';
import 'package:tonight/presentation/club_details/widgets/club_details_tabs/details/club_detail_tile.dart';

class CollectiveDetails extends StatelessWidget {
  final Collective collective;

  const CollectiveDetails({
    super.key,
    required this.collective,
  });

  @override
  Widget build(BuildContext context) {
    final clubDetailTiles = <Widget>[];

    if (collective.bio.isNotEmpty) {
      clubDetailTiles.add(
        ClubDetailTile(
          title: 'Bio',
          subtitle: collective.bio,
        ),
      );
    }

    if (collective.musicalGenres.isNotEmpty) {
      clubDetailTiles.add(
        ClubDetailTile(
          title: 'Genres',
          subtitle: collective.musicalGenres.join(', '),
        ),
      );
    }

    if (collective.cities.isNotEmpty) {
      clubDetailTiles.add(
        ClubDetailTile(
          title: 'Cities',
          subtitle: collective.cities.map((c) => c.name).join(', '),
        ),
      );
    }

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
          DetailsSocialMediaRow(socialMedia: collective.socialMedia),
        ],
      ),
    );
  }
}
