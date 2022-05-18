import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:raver_translations/raver_translations.dart';

class OrContinueWith extends StatelessWidget {
  const OrContinueWith({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AutoSizeText(
      S().orContinueWith,
      maxLines: 1,
    );
  }
}
