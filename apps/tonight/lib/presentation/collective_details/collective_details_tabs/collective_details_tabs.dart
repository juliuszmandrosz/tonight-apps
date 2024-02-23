import 'package:auto_size_text/auto_size_text.dart';
import 'package:common/extensions/color_extensions.dart';
import 'package:common/extensions/typography_extensions.dart';
import 'package:flutter/material.dart';
import 'package:tonight/domain/collectives/collective_entity.dart';
import 'package:tonight/presentation/collective_details/collective_details_tabs/collective_artits.dart';
import 'package:tonight/presentation/collective_details/collective_details_tabs/collective_details.dart';
import 'package:tonight/presentation/collective_details/collective_details_tabs/collective_events.dart';
import 'package:tonight/presentation/collective_details/collective_details_tabs/collective_reviews.dart';
import 'package:translations/translations.dart';

class CollectiveDetailsTabs extends StatelessWidget {
  final Collective collective;
  final TabController tabController;

  const CollectiveDetailsTabs({
    required this.collective,
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
              const Tab(
                // TODO - add translation
                child: AutoSizeText(
                  'Residents',
                  textAlign: TextAlign.center,
                  maxLines: 1,
                ),
              ),
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
                CollectiveEvents(collectiveId: collective.id),
                CollectiveArtists(collectiveId: collective.id),
                CollectiveDetails(collective: collective),
                CollectiveReviews(collectiveId: collective.id),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
