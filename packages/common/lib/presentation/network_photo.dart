import 'package:cached_network_image/cached_network_image.dart';
import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class NetworkPhoto extends StatelessWidget {
  final String photoUrl;
  final double photoHeight;
  final double loaderSize;

  const NetworkPhoto({
    required this.photoUrl,
    this.photoHeight = 160,
    this.loaderSize = 16,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      progressIndicatorBuilder: (context, url, downloadProgress) => SizedBox(
        height: photoHeight,
        child: Center(
          child: SpinKitThreeBounce(
            color: context.onSurfaceColor,
            size: loaderSize,
          ),
        ),
      ),
      imageUrl: photoUrl,
      errorWidget: (context, url, error) => const Icon(Icons.error),
      imageBuilder: (context, imageProvider) => Container(
        height: photoHeight,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: imageProvider,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
