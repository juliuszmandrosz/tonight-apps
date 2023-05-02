import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:tonight/presentation/core/tonight_headline.dart';
import 'package:translations/raver_translations.dart';

class CanceledEventMessage extends StatelessWidget {
  const CanceledEventMessage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      color: context.surfaceColor,
      width: MediaQuery.of(context).size.width,
      child: TonightHeadline(
        text: S().eventCancelled,
        isSmallerVersion: true,
      ),
    );
  }
}
