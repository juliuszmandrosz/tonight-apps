import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:raver_common/raver_common.dart';
import 'package:shimmer/shimmer.dart';

class EventShimmer extends StatelessWidget {
  const EventShimmer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO - fix shimmer
    return Shimmer.fromColors(
      child: ListTile(
        dense: true,
        contentPadding: const EdgeInsets.only(left: 0.0, right: 0.0),
        title: AutoSizeText(
          '',
          style: context.headline6,
          maxLines: 2,
        ),
        subtitle: Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Text(
            '',
            style: context.subtitle1,
          ),
        ),
        trailing: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Icon(Icons.chevron_right_rounded),
          ],
        ),
      ),
      baseColor: context.primaryColor,
      highlightColor: context.onSurfaceColor,
    );
  }
}
