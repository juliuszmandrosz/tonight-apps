import 'package:auto_size_text/auto_size_text.dart';
import 'package:common/extensions/color_extensions.dart';
import 'package:common/extensions/typography_extensions.dart';
import 'package:flutter/material.dart';
import 'package:tonight/domain/artists/artist_entity.dart';
import 'package:tonight/presentation/artist_details/widgets/artist_collectives.dart';
import 'package:tonight/presentation/artist_details/widgets/artist_details.dart';
import 'package:tonight/presentation/artist_details/widgets/artist_events.dart';
import 'package:translations/translations.dart';

class ArtistDetailsTabs extends StatelessWidget {
  final Artist artist;
  final TabController tabController;

  const ArtistDetailsTabs({
    required this.artist,
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
            dividerColor: Colors.transparent,
            controller: tabController,
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
              Tab(
                child: AutoSizeText(
                  S().details,
                  textAlign: TextAlign.center,
                  maxLines: 1,
                ),
              ),
              const Tab(
                // TODO - add translation
                child: AutoSizeText(
                  'Collectives',
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
                ArtistEvents(artistId: artist.id),
                ArtistDetails(artist: artist),
                ArtistCollectives(artistId: artist.id),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
