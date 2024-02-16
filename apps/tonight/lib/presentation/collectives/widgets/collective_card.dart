import 'package:cached_network_image/cached_network_image.dart';
import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tonight/domain/collectives/collective_entity.dart';
import 'package:translations/translations.dart';

class CollectiveCard extends StatelessWidget {
  final Collective _collective;
  final String heroTag;
  final bool isFavoriteCard;
  final double height;

  CollectiveCard({
    super.key,
    required Collective collective,
    required String heroPhrase,
    this.isFavoriteCard = false,
    this.height = 250,
  })  : _collective = collective,
        heroTag = '$heroPhrase-${collective.id}';

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
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
                    imageUrl: _collective.collectivePhotoUrl,
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
                      const FaIcon(
                        FontAwesomeIcons.circleInfo,
                        size: 18,
                      ),
                      const SizedBox(width: 10),
                      Expanded(
                        child: Text(
                          _collective.collectiveName,
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
                        const SizedBox(height: 12),
                        Row(
                          children: [
                            RatingBarIndicator(
                              rating: _collective.reviewAvg,
                              itemCount: 5,
                              itemSize: 18,
                              direction: Axis.horizontal,
                              itemBuilder: (context, index) =>
                                  const FaIcon(FontAwesomeIcons.solidStar),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Text(
                                _collective.reviewAvg.toStringAsFixed(1),
                                style: context.titleSmall,
                              ),
                            ),
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: Text(
                                  '${_collective.reviewCount} ${S().opinions(_collective.reviewCount)}',
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
