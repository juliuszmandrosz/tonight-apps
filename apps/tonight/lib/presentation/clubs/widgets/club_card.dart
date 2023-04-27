import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:clubs/clubs.dart';
import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tonight/presentation/clubs/widgets/club_favorite_button.dart';
import 'package:tonight/presentation/routes/app_router.gr.dart';
import 'package:translations/translations.dart';

class ClubCard extends StatelessWidget {
  final Club _club;
  final String heroTag;
  final bool isFavoriteCard;
  final double height;

  ClubCard({
    Key? key,
    required Club club,
    required String heroPhrase,
    this.isFavoriteCard = false,
    this.height = 250,
  })  : _club = club,
        heroTag = '$heroPhrase-${club.id}',
        super(key: key);

  @override
  Widget build(BuildContext context) {
    final clubReviewAvg = _club.reviewAvg;
    return InkWell(
      onTap: () {
        context.router.push(
          ClubDetailsRoute(
            club: _club,
            heroTag: heroTag,
          ),
        );
      },
      child: Card(
        color: context.backgroundColor,
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
                  tag: heroTag,
                  child: CachedNetworkImage(
                    progressIndicatorBuilder:
                        (context, url, downloadProgress) => SizedBox(
                      height: height,
                      child: Center(
                        child: SpinKitThreeBounce(
                          color: context.onSurfaceColor,
                          size: 24,
                        ),
                      ),
                    ),
                    imageUrl: _club.clubImageUrl,
                    errorWidget: (context, url, error) =>
                        const Icon(Icons.error),
                    imageBuilder: (context, imageProvider) => Container(
                      height: height,
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
                  child: ClubFavoriteButton(club: _club),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(12),
              child: Column(
                children: [
                  Row(
                    children: [
                      const FaIcon(
                        FontAwesomeIcons.building,
                        size: 18,
                      ),
                      const SizedBox(width: 10),
                      Expanded(
                        child: Text(
                          _club.clubName,
                          style: context.titleMedium,
                          softWrap: false,
                          overflow: TextOverflow.fade,
                          maxLines: 1,
                        ),
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
                      Expanded(
                        child: Text(
                          _club.locationString,
                          style: context.titleMedium,
                          softWrap: false,
                          overflow: TextOverflow.fade,
                          maxLines: 1,
                        ),
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
                                style: context.bodyMedium,
                              ),
                            ),
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: Text(
                                  '${_club.reviewCount} ${S().opinions(_club.reviewCount)}',
                                  style: context.bodyMedium,
                                  softWrap: false,
                                  overflow: TextOverflow.fade,
                                  maxLines: 1,
                                ),
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
