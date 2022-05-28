import 'package:flutter/material.dart';
import 'package:raver/presentation/club_details/widgets/club_details_tabs/club_buy_ticket.dart';
import 'package:raver/presentation/club_details/widgets/club_details_tabs/club_details.dart';
import 'package:raver/presentation/club_details/widgets/club_details_tabs/club_events.dart';
import 'package:raver/presentation/club_details/widgets/club_details_tabs/club_opinions.dart';
import 'package:raver/presentation/club_details/widgets/club_details_tabs/club_photos.dart';
import 'package:raver/presentation/club_details/widgets/club_details_tabs/club_rewards.dart';
import 'package:raver_clubs/raver_clubs.dart';
import 'package:raver_translations/generated/generated.dart';

class ClubDetailsTabs extends StatelessWidget {
  const ClubDetailsTabs({Key? key, required this.club}) : super(key: key);

  final Club club;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: DefaultTabController(
        length: 6,
        child: Column(
          children: [
            TabBar(
              isScrollable: true,
              tabs: [
                Tab(text: S().events(2)),
                Tab(text: S().buyTicket),
                Tab(text: S().milestones),
                Tab(text: S().details),
                Tab(text: S().opinions(2)),
                Tab(text: S().photos(2))
              ],
            ),
            Expanded(
              child: TabBarView(
                physics: const NeverScrollableScrollPhysics(),
                children: [
                  ClubEvents(
                    clubId: club.id,
                  ),
                  const ClubBuyTicket(),
                  const ClubRewards(),
                  ClubDetails(
                    aboutUs: club.aboutUs,
                    phoneNumber: club.phoneNumber,
                    socialMedia: club.socialMedia,
                  ),
                  ClubOpinions(
                    clubId: club.id,
                  ),
                  ClubPhotos(
                    clubId: club.id,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
