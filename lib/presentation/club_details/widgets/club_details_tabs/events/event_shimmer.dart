import 'package:flutter/material.dart';
import 'package:raver_common/raver_common.dart';
import 'package:shimmer/shimmer.dart';

class EventShimmer extends StatelessWidget {
  const EventShimmer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      child: Container(
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(8),
            bottomRight: Radius.circular(8),
          ),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(8),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Text('', style: context.headline6),
                    Text('', style: context.subtitle1),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [Text('', style: context.headline6)],
                  ),
                  Row(
                    children: [Text('', style: context.subtitle1)],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
      baseColor: context.primaryColor,
      highlightColor: context.onSurfaceColor,
    );
  }
}
