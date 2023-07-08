import 'package:common/common.dart';
import 'package:flutter/material.dart';

class OrContinueWith extends StatelessWidget {
  const OrContinueWith({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      // TODO - add translation
      'Lub zaloguj się za pomocą',
      maxLines: 1,
      style: context.titleSmall.copyWith(
        color: context.secondaryColor,
      ),
    );
  }
}
