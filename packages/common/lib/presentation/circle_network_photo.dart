import 'package:cached_network_image/cached_network_image.dart';
import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class CircleNetworkPhoto extends StatelessWidget {
  final double containerSize;
  final String photoUrl;

  const CircleNetworkPhoto({
    required this.containerSize,
    required this.photoUrl,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      progressIndicatorBuilder: (context, url, downloadProgress) =>
          CircleAvatar(
        radius: containerSize,
        child: SpinKitThreeBounce(
          color: context.onSurfaceColor,
          size: 12,
        ),
      ),
      imageUrl: photoUrl,
      errorWidget: (context, url, error) => const Icon(Icons.error),
      imageBuilder: (context, imageProvider) => CircleAvatar(
        radius: containerSize,
        backgroundImage: imageProvider,
      ),
    );
  }
}
