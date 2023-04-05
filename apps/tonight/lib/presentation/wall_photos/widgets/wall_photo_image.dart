import 'package:cached_network_image/cached_network_image.dart';
import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:tonight/domain/wall_photos/wall_photo_entity.dart';

class WallPhotoImage extends StatelessWidget {
  final WallPhoto wallPhoto;

  const WallPhotoImage({required this.wallPhoto, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      final photoHeight = constraints.maxWidth - 10;
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
        imageUrl: wallPhoto.photoUrl,
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
    });
  }
}
