import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:translations/translations.dart';

class OrSignInWith extends StatelessWidget {
  const OrSignInWith({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      S().orSignInWith,
      maxLines: 1,
      style: context.titleSmall.copyWith(
        color: context.secondaryColor,
      ),
    );
  }
}
