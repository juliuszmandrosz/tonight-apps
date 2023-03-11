import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:raver/presentation/club_details/widgets/club_details_favorite_button.dart';
import 'package:raver_clubs/raver_clubs.dart';
import 'package:raver_common/raver_common.dart';

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
            style: context.headline5,
            maxLines: 3,
          ),
        ),
        ClubDetailsFavoriteButton(club: club)
      ],
    );
  }
}
