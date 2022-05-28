import 'package:flutter/material.dart';
import 'package:raver/presentation/club_details/widgets/club_details_favorite_button.dart';
import 'package:raver/presentation/core/raver_headline.dart';
import 'package:raver_clubs/raver_clubs.dart';

class ClubNameRow extends StatelessWidget {
  final Club club;

  const ClubNameRow({Key? key, required this.club}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        RaverHeadline(text: club.clubName),
        ClubDetailsFavoriteButton(clubId: club.id)
      ],
    );
  }
}
