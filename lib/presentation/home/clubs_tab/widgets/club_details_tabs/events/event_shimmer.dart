import 'package:flutter/material.dart';
import 'package:raver/presentation/config/themes/default_theme/default_colors.dart';
import 'package:shimmer/shimmer.dart';

class EventShimmer extends StatelessWidget {
  const EventShimmer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Shimmer.fromColors(
        child: Container(
          decoration: const BoxDecoration(
            color: DefaultColors.primaryColor,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(8),
              bottomRight: Radius.circular(8),
            ),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                decoration: BoxDecoration(
                  color: theme.primaryColor,
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(8),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Text("", style: theme.textTheme.headline2),
                      Text("", style: theme.textTheme.headline3),
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
                      children: [Text("", style: theme.textTheme.headline2)],
                    ),
                    Row(
                      children: [Text("", style: theme.textTheme.headline3)],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
        baseColor: theme.backgroundColor,
        highlightColor: theme.accentColor);
  }
}
