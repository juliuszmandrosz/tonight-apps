import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class EventShimmer extends StatelessWidget {
  const EventShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: context.surfaceColor,
      highlightColor: context.secondaryColor,
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
          const Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(Icons.chevron_right_rounded),
            ],
          ),
        ],
      ),
    );
  }
}
