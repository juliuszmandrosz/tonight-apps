import 'package:flutter/material.dart';
import 'package:common/common.dart';
import 'package:translations/raver_translations.dart';

class RewardProgressBar extends StatelessWidget {
  final int currentEntries;
  final int requiredEntries;

  const RewardProgressBar({
    Key? key,
    required this.currentEntries,
    required this.requiredEntries,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final percentProgress =
        _calculatePercentProgress(currentEntries, requiredEntries);
    return SizedBox(
      height: 30,
      child: Stack(
        fit: StackFit.expand,
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(10),
              bottomRight: Radius.circular(10),
            ),
            child: LinearProgressIndicator(
              value: percentProgress,
              valueColor: AlwaysStoppedAnimation(context.primaryColor),
            ),
          ),
          Center(
            child: Text(
                '$currentEntries/$requiredEntries ${S().entries(requiredEntries)}'),
          ),
        ],
      ),
    );
  }
}

_calculatePercentProgress(int currentValue, int maxValue) {
  return (currentValue / maxValue);
}
