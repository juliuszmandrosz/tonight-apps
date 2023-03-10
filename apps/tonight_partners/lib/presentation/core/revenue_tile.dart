import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:raver_common/raver_common.dart';

class RevenueTile extends StatelessWidget {
  final IconData icon;
  final String value;
  final String label;
  final bool isFirst;

  const RevenueTile({
    required this.icon,
    required this.value,
    required this.label,
    this.isFirst = false,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: isFirst ? context.primaryColor : context.surfaceColor,
        borderRadius: BorderRadius.circular(24),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Icon(
              icon,
              size: 40,
            ),
          ),
          const SizedBox(height: 12),
          Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: AutoSizeText(
                value,
                maxLines: 1,
                style: context.headline5,
                textAlign: TextAlign.center,
              ),
            ),
          ),
          const SizedBox(height: 12),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: AutoSizeText(
              label.toLowerCase(),
              maxLines: 1,
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
