import 'package:flutter/material.dart';
import 'package:raver/domain/clubs/club_entity.dart';
import 'package:raver/presentation/home/clubs_tab/widgets/club_details_tabs/club_buy_ticket.dart';
import 'package:raver/presentation/home/clubs_tab/widgets/club_details_tabs/club_details.dart';
import 'package:raver/presentation/home/clubs_tab/widgets/club_details_tabs/club_events.dart';
import 'package:raver/presentation/home/clubs_tab/widgets/club_details_tabs/club_milestones.dart';
import 'package:raver/presentation/home/clubs_tab/widgets/club_details_tabs/club_opinions.dart';
import 'package:raver/presentation/home/clubs_tab/widgets/club_details_tabs/club_photos.dart';

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
            const TabBar(
              isScrollable: true,
              tabs: [
                Tab(
                  text: 'Events',
                ),
                Tab(
                  text: 'Buy ticket',
                ),
                Tab(
                  text: 'Milestones',
                ),
                Tab(
                  text: 'Details',
                ),
                Tab(
                  text: 'Opinions',
                ),
                Tab(
                  text: 'Photos',
                ),
              ],
            ),
            Expanded(
              child: TabBarView(
                children: [
                  ClubEvents(),
                  ClubBuyTicket(),
                  ClubMilestones(),
                  ClubDetails(
                    aboutUs: club.aboutUs,
                    phoneNumber: club.phoneNumber,
                    socialMedia: club.socialMedia,
                  ),
                  ClubOpinions(
                    reviews: club.reviews,
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
