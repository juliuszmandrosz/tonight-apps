import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:raver/presentation/core/image_back_button.dart';
import 'package:raver/presentation/core/image_share_button.dart';
import 'package:raver_common/raver_common.dart';

class DetailsHeroImage extends StatelessWidget {
  final String imageUrl;
  final String? heroTag;
  final String sharePath;

  const DetailsHeroImage({
    Key? key,
    required this.imageUrl,
    required this.heroTag,
    required this.sharePath,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: SizedBox(
            height: 250,
            child: Stack(
              children: [
                Align(
                  child: Hero(
                    tag: heroTag ?? '',
                    //this just wont animate hero
                    child: CachedNetworkImage(
                      progressIndicatorBuilder:
                          (context, url, downloadProgress) => SizedBox(
                        height: 250,
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
                        height: 250,
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
                  top: 10,
                  left: 10,
                  child: ImageBackButton(),
                ),
                Positioned(
                  top: 10,
                  right: 10,
                  child: ImageShareButton(path: sharePath),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
