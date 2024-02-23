import 'package:auto_size_text/auto_size_text.dart';
import 'package:clubs/clubs.dart';
import 'package:common/extensions/color_extensions.dart';
import 'package:common/extensions/typography_extensions.dart';
import 'package:flutter/material.dart';
import 'package:tonight/application/core/extensions/bloc_extensions.dart';
import 'package:tonight/presentation/club_details/widgets/club_details_tabs/club_details.dart';
import 'package:tonight/presentation/club_details/widgets/club_details_tabs/club_events.dart';
import 'package:tonight/presentation/club_details/widgets/club_details_tabs/club_reviews.dart';
import 'package:tonight/presentation/utils/show_sign_in_dialog.dart';
import 'package:translations/translations.dart';

class ClubDetailsTabs extends StatelessWidget {
  final Club club;
  final TabController tabController;

  const ClubDetailsTabs({
    required this.club,
    required this.tabController,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: TabBar(
            onTap: (index) async {
              if (index == 1 &&
                  context.readAuthCubit.checkIfUserIsAnonymous()) {
                tabController.animateTo(tabController.previousIndex);
                await showSignInDialog(context);
              }
            },
            controller: tabController,
            dividerColor: Colors.transparent,
            isScrollable: true,
            labelPadding: const EdgeInsets.symmetric(horizontal: 8),
            padding: const EdgeInsets.only(bottom: 12),
            labelColor: context.secondaryColor,
            labelStyle: context.titleSmall,
            unselectedLabelColor: context.secondaryColor.withOpacity(0.6),
            indicatorColor: context.secondaryColor,
            indicator: BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: context.secondaryColor,
                  width: 1,
                ),
              ),
            ),
            tabs: [
              Tab(
                child: AutoSizeText(
                  S().events(2),
                  textAlign: TextAlign.center,
                  maxLines: 1,
                ),
              ),
              // Tab(
              //   child: AutoSizeText(
              //     S().rewards(2),
              //     textAlign: TextAlign.center,
              //     maxLines: 1,
              //   ),
              // ),
              Tab(
                child: AutoSizeText(
                  S().details,
                  textAlign: TextAlign.center,
                  maxLines: 1,
                ),
              ),
              Tab(
                child: AutoSizeText(
                  S().opinions(2),
                  textAlign: TextAlign.center,
                  maxLines: 1,
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: TabBarView(
              controller: tabController,
              physics: const NeverScrollableScrollPhysics(),
              children: [
                ClubEvents(
                  clubId: club.id,
                ),
                // const ClubRewards(),
                ClubDetails(
                  aboutUs: club.aboutUs,
                  phoneNumber: club.phoneNumber,
                  socialMedia: club.socialMedia,
                ),
                ClubReviews(clubId: club.id),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
