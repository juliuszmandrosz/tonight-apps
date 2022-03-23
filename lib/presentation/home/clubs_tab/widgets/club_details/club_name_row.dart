import 'package:flutter/material.dart';
import 'package:raver/domain/clubs/club_entity.dart';

import 'club_details_favorite_button.dart';

class ClubNameRow extends StatelessWidget {
  final Club club;

  const ClubNameRow({Key? key, required this.club}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(club.clubName, style: theme.textTheme.titleMedium),
        ClubDetailsFavoriteButton(
          clubId: club.id,
        )
      ],
    );
  }
}
