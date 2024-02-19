import 'package:cached_network_image/cached_network_image.dart';
import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tonight/domain/artists/artist_entity.dart';

class ArtistCard extends StatelessWidget {
  final Artist artist;
  final String heroTag;
  final bool isFavoriteCard;
  final double height;

  ArtistCard({
    super.key,
    required this.artist,
    required String heroPhrase,
    this.isFavoriteCard = false,
    this.height = 250,
  }) : heroTag = '$heroPhrase-${artist.id}';

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
                    imageUrl: artist.artistPhotoUrl,
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
                          artist.artistName,
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
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
