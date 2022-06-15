import 'package:flutter/material.dart';
import 'package:raver_common/raver_common.dart';
import 'package:shimmer/shimmer.dart';

class EventShimmer extends StatelessWidget {
  const EventShimmer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: double.infinity,
                  height: 10,
                  color: context.onSurfaceColor,
                ),
                const SizedBox(height: 10),
                Container(
                  width: 200,
                  height: 10,
                  color: context.onSurfaceColor,
                ),
              ],
            ),
          ),
          const SizedBox(width: 20),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: const [
              Icon(Icons.chevron_right_rounded),
            ],
          ),
        ],
      ),
      baseColor: context.surfaceColor,
      highlightColor: context.secondaryColor,
    );
  }
}
