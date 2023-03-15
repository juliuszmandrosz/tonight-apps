import 'package:auto_size_text/auto_size_text.dart';
import 'package:clubs/clubs.dart';
import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:tonight/presentation/club_details/widgets/club_details_favorite_button.dart';

class ClubNameRow extends StatelessWidget {
  final Club club;

  const ClubNameRow({Key? key, required this.club}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: AutoSizeText(
            club.clubName,
            style: context.headlineSmall,
            maxLines: 3,
          ),
        ),
        ClubDetailsFavoriteButton(club: club)
      ],
    );
  }
}
