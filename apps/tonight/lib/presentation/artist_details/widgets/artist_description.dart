import 'package:flutter/material.dart';
import 'package:tonight/domain/artists/artist_entity.dart';
import 'package:tonight/presentation/artist_details/widgets/artist_location_row.dart';
import 'package:tonight/presentation/artist_details/widgets/artist_name_row.dart';

class ArtistDescription extends StatelessWidget {
  final Artist artist;

  const ArtistDescription({
    super.key,
    required this.artist,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ArtistNameRow(artist: artist),
          const SizedBox(height: 12),
          ArtistLocationRow(artist: artist),
        ],
      ),
    );
  }
}
