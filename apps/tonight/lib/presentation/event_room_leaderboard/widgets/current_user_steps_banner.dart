import 'package:auto_size_text/auto_size_text.dart';
import 'package:common/extensions/typography_extensions.dart';
import 'package:flutter/material.dart';

class CurrentUserStepsBanner extends StatelessWidget {
  final int stepCount;

  const CurrentUserStepsBanner({
    super.key,
    required this.stepCount,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Center(
          child: AutoSizeText(
            // TODO - add translations
            'Your number of steps: $stepCount',
            maxLines: 1,
            style: context.titleMedium,
          ),
        ),
      ),
    );
  }
}
