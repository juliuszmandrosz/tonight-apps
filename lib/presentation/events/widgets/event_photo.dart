import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:raver_common/raver_common.dart';
import 'package:raver_events/raver_events.dart';

class EventPhoto extends StatelessWidget {
  final Event event;
  final String heroTag;

  const EventPhoto({
    required this.event,
    required this.heroTag,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: heroTag,
      child: CachedNetworkImage(
        progressIndicatorBuilder: (context, url, downloadProgress) => SizedBox(
          height: 250,
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
          height: 250,
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
