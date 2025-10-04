import 'package:common/presentation/tonight_info_row.dart';
import 'package:flutter/material.dart';

class StepsCounterInfo extends StatelessWidget {
  const StepsCounterInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return TonightInfoRow(
      info: 'The number of steps you have taken in the event room.',
    );
  }
}
