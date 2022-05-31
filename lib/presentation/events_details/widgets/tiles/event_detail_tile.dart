import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:raver_common/raver_common.dart';

class EventDetailTile extends StatelessWidget {
  final IconData icon;
  final String label;
  final String value;

  const EventDetailTile({
    required this.icon,
    required this.label,
    required this.value,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: context.surfaceColor,
        borderRadius: BorderRadius.circular(24),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: FaIcon(
              icon,
              size: 40,
            ),
          ),
          const SizedBox(height: 12),
          Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: value.isEmpty
                  ? SpinKitThreeBounce(
                      color: context.onSurfaceColor,
                      size: 18,
                    )
                  : AutoSizeText(
                      value,
                      maxLines: 2,
                      style: context.headline6,
                      textAlign: TextAlign.center,
                    ),
            ),
          ),
          const SizedBox(height: 12),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: AutoSizeText(
              label,
              maxLines: 1,
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
