import 'package:auto_route/auto_route.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:raver/presentation/clubs/widgets/club_favorite_button.dart';
import 'package:raver/presentation/routes/app_router.dart';
import 'package:raver_clubs/raver_clubs.dart';
import 'package:raver_common/raver_common.dart';
import 'package:raver_translations/raver_translations.dart';

class ClubCard extends StatelessWidget {
  final Club _club;
  final String _heroTagPhraseWithIndex;
  final String heroPhrase;
  final bool isFavoriteCard;

  ClubCard({
    Key? key,
    required Club club,
    required int index,
    required this.heroPhrase,
    this.isFavoriteCard = false,
  })  : _club = club,
        _heroTagPhraseWithIndex = heroPhrase + index.toString(),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    final clubReviewAvg = _club.reviewAvg;
    return InkWell(
      onTap: () {
        context.router.push(
          ClubDetailsRoute(club: _club, heroTag: _heroTagPhraseWithIndex),
        );
      },
      child: Card(
        clipBehavior: Clip.antiAlias,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
        child: Column(
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                Hero(
                  tag: _heroTagPhraseWithIndex,
                  child: CachedNetworkImage(
                    progressIndicatorBuilder:
                        (context, url, downloadProgress) => SizedBox(
                      height: 220,
                      child: Center(
                        child: SpinKitThreeBounce(
                          color: context.onSurfaceColor,
                        ),
                      ),
                    ),
                    imageUrl: _club.clubImageUrl,
                    errorWidget: (context, url, error) =>
                        const Icon(Icons.error),
                    imageBuilder: (context, imageProvider) => Container(
                      height: 220,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: imageProvider,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 10,
                  right: 15,
                  child: ClubFavoriteButton(clubId: _club.id),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: Column(
                children: [
                  Row(
                    children: [
                      const FaIcon(
                        FontAwesomeIcons.building,
                        size: 18,
                      ),
                      const SizedBox(width: 10),
                      AutoSizeText(
                        _club.clubName,
                        style: context.subtitle1,
                        maxLines: 1,
                      ),
                    ],
                  ),
                  const SizedBox(height: 15),
                  Row(
                    children: [
                      const FaIcon(
                        FontAwesomeIcons.locationDot,
                        size: 18,
                      ),
                      const SizedBox(width: 10),
                      AutoSizeText(
                        _club.locationString,
                        style: context.subtitle1,
                        maxLines: 1,
                      ),
                    ],
                  ),
                  if (!isFavoriteCard)
                    Column(
                      children: [
                        const SizedBox(height: 15),
                        Row(
                          children: [
                            RatingBarIndicator(
                              rating: clubReviewAvg,
                              itemCount: 5,
                              itemSize: 18,
                              direction: Axis.horizontal,
                              itemBuilder: (context, index) =>
                                  const FaIcon(FontAwesomeIcons.solidStar),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Text(
                                clubReviewAvg.toStringAsFixed(1),
                                style: context.bodyText2,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Text(
                                '${_club.reviewCount} ${S().opinions(_club.reviewCount)}',
                                style: context.bodyText2,
                              ),
                            ),
                          ],
                        ),
                      ],
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
