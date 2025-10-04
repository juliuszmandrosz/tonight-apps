import 'package:auto_route/auto_route.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tonight/domain/artists/artist_entity.dart';
import 'package:tonight/presentation/routes/app_router.gr.dart';

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
      onTap: () => context.pushRoute(
        ArtistDetailsRoute(artist: artist, heroTag: heroTag),
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
                Positioned(
                  bottom: 15,
                  right: 15,
                  left: 15,
                  child: Container(
                    decoration: BoxDecoration(
                      color: context.surfaceColor.withOpacity(0.9),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: AutoSizeText(
                        artist.artistName,
                        style: context.titleSmall,
                        textAlign: TextAlign.center,
                        softWrap: true,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(12),
              child: Column(
                children: [
                  // Row(
                  //   children: [
                  //     Expanded(
                  //       child: Text(
                  //         artist.artistName,
                  //         style: context.titleSmall,
                  //         softWrap: false,
                  //         overflow: TextOverflow.fade,
                  //         maxLines: 1,
                  //       ),
                  //     ),
                  //   ],
                  // ),
                  // const SizedBox(height: 12),
                  Row(
                    children: [
                      const FaIcon(
                        FontAwesomeIcons.locationDot,
                        size: 18,
                      ),
                      const SizedBox(width: 10),
                      Expanded(
                        child: Text(
                          artist.cityName,
                          style: context.titleSmall,
                          softWrap: false,
                          overflow: TextOverflow.fade,
                          maxLines: 1,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 12),
                  Row(
                    children: [
                      const FaIcon(
                        FontAwesomeIcons.recordVinyl,
                        size: 18,
                      ),
                      const SizedBox(width: 10),
                      Text(
                        artist.musicalGenres.join(', '),
                        style: context.titleSmall,
                        softWrap: false,
                        overflow: TextOverflow.fade,
                        maxLines: 1,
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
