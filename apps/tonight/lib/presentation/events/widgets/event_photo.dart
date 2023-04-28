import 'package:cached_network_image/cached_network_image.dart';
import 'package:common/common.dart';
import 'package:events/events.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class EventPhoto extends StatelessWidget {
  final Event event;
  final String heroTag;
  final double height;

  const EventPhoto({
    required this.event,
    required this.heroTag,
    required this.height,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: heroTag,
      child: CachedNetworkImage(
        progressIndicatorBuilder: (context, url, downloadProgress) => SizedBox(
          height: height,
          child: Center(
            child: SpinKitThreeBounce(
              color: context.onSurfaceColor,
              size: 24,
            ),
          ),
        ),
        imageUrl: event.eventPhotoUrl,
        errorWidget: (context, url, error) => const Icon(Icons.error),
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
    );
  }
}
