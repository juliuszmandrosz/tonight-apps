import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:tonight/domain/artists/artist_entity.dart';
import 'package:tonight/presentation/club_details/widgets/club_details_tabs/details/club_detail_tile.dart';

class ArtistDetails extends StatelessWidget {
  final Artist artist;

  const ArtistDetails({
    super.key,
    required this.artist,
  });

  @override
  Widget build(BuildContext context) {
    final clubDetailTiles = <Widget>[];

    if (artist.bio.isNotEmpty) {
      clubDetailTiles.add(
        ClubDetailTile(
          title: 'Bio',
          subtitle: artist.bio,
        ),
      );
    }

    if (artist.musicalGenres.isNotEmpty) {
      clubDetailTiles.add(
        ClubDetailTile(
          title: 'Genres',
          subtitle: artist.musicalGenres.join(', '),
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
          DetailsSocialMediaRow(socialMedia: artist.socialMedia),
        ],
      ),
    );
  }
}
