import 'package:flutter/material.dart';
import 'package:raver/presentation/core/raver_headline.dart';
import 'package:raver_common/raver_common.dart';
import 'package:raver_translations/raver_translations.dart';

class CanceledEventMessage extends StatelessWidget {
  const CanceledEventMessage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      color: context.surfaceColor,
      width: MediaQuery.of(context).size.width,
      child: RaverHeadline(
        text: S().eventCancelled,
        isSmallerVersion: true,
      ),
    );
  }
}
