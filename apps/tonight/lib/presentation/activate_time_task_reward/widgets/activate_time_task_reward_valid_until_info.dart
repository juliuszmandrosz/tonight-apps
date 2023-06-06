import 'package:common/extensions/build_context_extensions.dart';
import 'package:common/extensions/typography_extensions.dart';
import 'package:flutter/material.dart';

class ActivateTimeTaskRewardValidUntilInfo extends StatelessWidget {
  final DateTime validUntil;

  const ActivateTimeTaskRewardValidUntilInfo({
    required this.validUntil,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      // TODO - add translation
      'Czas na aktywację do: ${context.formatDateTimeToLocaleYMDHM(validUntil)}',
      style: context.titleSmall,
      textAlign: TextAlign.center,
    );
  }
}
