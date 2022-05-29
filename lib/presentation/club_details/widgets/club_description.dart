import 'package:flutter/material.dart';
import 'package:raver/presentation/club_details/widgets/club_location_row.dart';
import 'package:raver/presentation/club_details/widgets/club_name_row.dart';
import 'package:raver/presentation/club_details/widgets/club_rating_row.dart';
import 'package:raver_clubs/raver_clubs.dart';

class ClubDescription extends StatelessWidget {
  final Club club;

  const ClubDescription({
    Key? key,
    required this.club,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ClubNameRow(club: club),
          ClubLocationRow(club: club),
          ClubRatingRow(
            rating: club.reviewAvg,
            rateCount: club.reviewCount,
          )
        ],
      ),
    );
  }
}
