import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:translations/translations.dart';

class ActivateTimeTaskRewardValidUntilInfo extends StatelessWidget {
  final DateTime validUntil;

  const ActivateTimeTaskRewardValidUntilInfo({
    required this.validUntil,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      '${S().timeForActivationTo}: ${context.formatDateTimeToLocaleYMDHM(validUntil)}',
      style: context.labelSmall.copyWithSecondaryColor(),
      textAlign: TextAlign.center,
    );
  }
}
