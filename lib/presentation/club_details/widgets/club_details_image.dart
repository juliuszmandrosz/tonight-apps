import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:raver/presentation/club_details/widgets/back_button.dart';
import 'package:raver_common/raver_common.dart';

class ClubDetailsImage extends StatelessWidget {
  final String imageUrl;
  final String? heroTag;

  const ClubDetailsImage(
      {Key? key, required this.imageUrl, required this.heroTag})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: SizedBox(
            height: 220,
            child: Stack(
              children: [
                Align(
                  child: Hero(
                    tag: heroTag ?? '',
                    //this just wont animate hero
                    child: CachedNetworkImage(
                      progressIndicatorBuilder:
                          (context, url, downloadProgress) => SizedBox(
                        height: 220,
                        child: Center(
                          child: SpinKitThreeBounce(
                            color: context.onSurfaceColor,
                            size: 24,
                          ),
                        ),
                      ),
                      imageUrl: imageUrl,
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
                ),
                const Positioned(
                  top: 5,
                  left: 5,
                  child: BackButtonWidget(),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
