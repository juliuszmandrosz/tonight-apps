import 'package:auto_size_text/auto_size_text.dart';
import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:tonight/domain/artists/artist_entity.dart';

class ArtistNameRow extends StatelessWidget {
  final Artist artist;

  const ArtistNameRow({super.key, required this.artist});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Expanded(
          child: AutoSizeText(
            artist.artistName,
            style: context.titleLarge,
            maxLines: 3,
          ),
        ),
      ],
    );
  }
}
