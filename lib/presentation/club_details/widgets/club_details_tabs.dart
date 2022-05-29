import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:raver/presentation/club_details/widgets/club_details_tabs/club_details.dart';
import 'package:raver/presentation/club_details/widgets/club_details_tabs/club_events.dart';
import 'package:raver/presentation/club_details/widgets/club_details_tabs/club_opinions.dart';
import 'package:raver/presentation/club_details/widgets/club_details_tabs/club_rewards.dart';
import 'package:raver_clubs/raver_clubs.dart';
import 'package:raver_translations/raver_translations.dart';

class ClubDetailsTabs extends StatelessWidget {
  const ClubDetailsTabs({Key? key, required this.club}) : super(key: key);

  final Club club;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Column(
        children: [
          TabBar(
            labelPadding: const EdgeInsets.symmetric(horizontal: 5.0),
            tabs: [
              Tab(
                icon: const FaIcon(FontAwesomeIcons.fire),
                child: AutoSizeText(
                  S().events(2),
                  textAlign: TextAlign.center,
                  maxLines: 1,
                ),
              ),
              Tab(
                icon: const FaIcon(FontAwesomeIcons.trophy),
                child: AutoSizeText(
                  S().rewards(2),
                  textAlign: TextAlign.center,
                  maxLines: 1,
                ),
              ),
              Tab(
                icon: const FaIcon(FontAwesomeIcons.circleInfo),
                child: AutoSizeText(
                  S().details,
                  textAlign: TextAlign.center,
                  maxLines: 1,
                ),
              ),
              Tab(
                icon: const Icon(Icons.reviews),
                child: AutoSizeText(
                  S().opinions(2),
                  textAlign: TextAlign.center,
                  maxLines: 1,
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),
          Expanded(
            child: TabBarView(
              physics: const NeverScrollableScrollPhysics(),
              children: [
                ClubEvents(
                  clubId: club.id,
                ),
                const ClubRewards(),
                ClubDetails(
                  aboutUs: club.aboutUs,
                  phoneNumber: club.phoneNumber,
                  socialMedia: club.socialMedia,
                ),
                ClubOpinions(
                  clubId: club.id,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
