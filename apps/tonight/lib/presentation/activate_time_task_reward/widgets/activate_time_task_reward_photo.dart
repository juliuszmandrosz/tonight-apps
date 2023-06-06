import 'package:cached_network_image/cached_network_image.dart';
import 'package:common/extensions/color_extensions.dart';
import 'package:common/extensions/responsive_extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class ActivateTimeTaskRewardPhoto extends StatelessWidget {
  final String photoUrl;

  const ActivateTimeTaskRewardPhoto({
    required this.photoUrl,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final photoHeight = context.height * 0.55;
    return CachedNetworkImage(
      progressIndicatorBuilder: (context, url, downloadProgress) => SizedBox(
        height: photoHeight,
        child: Center(
          child: SpinKitThreeBounce(
            color: context.onSurfaceColor,
            size: 24,
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
