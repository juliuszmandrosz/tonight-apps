import 'package:auto_size_text/auto_size_text.dart';
import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:tonight/domain/artists/artist_entity.dart';

class ArtistLocationRow extends StatelessWidget {
  final Artist artist;

  const ArtistLocationRow({super.key, required this.artist});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: AutoSizeText(
            artist.cityName,
            style: context.titleMedium.copyWithSecondaryColor(),
            maxLines: 2,
          ),
        ),
      ],
    );
  }
}
