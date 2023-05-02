import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:translations/raver_translations.dart';

class OrContinueWith extends StatelessWidget {
  const OrContinueWith({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      S().orContinueWith,
      maxLines: 1,
      style: context.titleSmall.copyWith(
        color: context.secondaryColor,
      ),
    );
  }
}
