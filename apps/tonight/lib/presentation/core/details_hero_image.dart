import 'package:cached_network_image/cached_network_image.dart';
import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:tonight/presentation/core/image_back_button.dart';

class DetailsHeroImage extends StatelessWidget {
  final String imageUrl;
  final String? heroTag;
  final double height;

  const DetailsHeroImage({
    Key? key,
    required this.imageUrl,
    required this.heroTag,
    required this.height,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: SizedBox(
            height: height,
            child: Stack(
              children: [
                Align(
                  child: Hero(
                    tag: heroTag ?? '',
                    //this just wont animate hero
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
                      imageUrl: imageUrl,
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
                ),
                const Positioned(
                  top: 10,
                  left: 10,
                  child: ImageBackButton(),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
