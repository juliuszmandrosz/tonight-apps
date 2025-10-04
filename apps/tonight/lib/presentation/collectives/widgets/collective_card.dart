import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tonight/domain/collectives/collective_entity.dart';
import 'package:tonight/presentation/routes/app_router.gr.dart';
import 'package:translations/translations.dart';

class CollectiveCard extends StatelessWidget {
  final Collective collective;
  final String heroTag;
  final bool isFavoriteCard;
  final double height;

  CollectiveCard({
    super.key,
    required this.collective,
    required String heroPhrase,
    this.isFavoriteCard = false,
    this.height = 250,
  }) : heroTag = '$heroPhrase-${collective.id}';

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => context.pushRoute(
        CollectiveDetailsRoute(collective: collective, heroTag: heroTag),
      ),
      child: Card(
        color: context.backgroundColor,
        clipBehavior: Clip.antiAlias,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
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
                    imageUrl: collective.collectivePhotoUrl,
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
                // Positioned(
                //   top: 5,
                //   right: 5,
                //   child: ClubFavoriteButton(club: _collective),
                // ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(12),
              child: Column(
                children: [
                  Row(
                    children: [
                      // const FaIcon(
                      //   FontAwesomeIcons.circleInfo,
                      //   size: 18,
                      // ),
                      // const SizedBox(width: 10),
                      Expanded(
                        child: Text(
                          collective.collectiveName,
                          style: context.titleSmall,
                          softWrap: false,
                          overflow: TextOverflow.fade,
                          maxLines: 1,
                        ),
                      ),
                    ],
                  ),
                  // const SizedBox(height: 12),
                  // Row(
                  //   children: [
                  //     const FaIcon(
                  //       FontAwesomeIcons.locationDot,
                  //       size: 18,
                  //     ),
                  //     const SizedBox(width: 10),
                  //     Expanded(
                  //       child: Text(
                  //         _collective.locationString,
                  //         style: context.titleSmall,
                  //         softWrap: false,
                  //         overflow: TextOverflow.fade,
                  //         maxLines: 1,
                  //       ),
                  //     ),
                  //   ],
                  // ),
                  if (!isFavoriteCard)
                    Column(
                      children: [
                        const SizedBox(height: 8),
                        Row(
                          children: [
                            RatingBarIndicator(
                              rating: collective.reviewAvg,
                              itemCount: 5,
                              itemSize: 18,
                              direction: Axis.horizontal,
                              itemBuilder: (context, index) =>
                                  const FaIcon(FontAwesomeIcons.solidStar),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Text(
                                collective.reviewAvg.toStringAsFixed(1),
                                style: context.titleSmall,
                              ),
                            ),
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: Text(
                                  '${collective.reviewCount} ${S().opinions(collective.reviewCount)}',
                                  style: context.titleSmall,
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
