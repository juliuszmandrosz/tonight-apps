import 'package:cached_network_image/cached_network_image.dart';
import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class CircleNetworkPhoto extends StatelessWidget {
  final String photoUrl;
  final double containerSize;
  final double loaderSize;

  const CircleNetworkPhoto({
    required this.photoUrl,
    required this.containerSize,
    required this.loaderSize,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      progressIndicatorBuilder: (context, url, downloadProgress) =>
          CircleAvatar(
            radius: containerSize / 2,
            child: SpinKitThreeBounce(
              color: context.onSurfaceColor,
              size: loaderSize,
            ),
          ),
      imageUrl: photoUrl,
      errorWidget: (context, url, error) => const Icon(Icons.error),
      imageBuilder: (context, imageProvider) =>
          CircleAvatar(
            radius: containerSize / 2,
            backgroundImage: imageProvider,
          ),
    );
  }
}
