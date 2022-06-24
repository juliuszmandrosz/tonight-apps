import 'package:flutter/material.dart';
import 'package:raver_common/raver_common.dart';
import 'package:raver_translations/raver_translations.dart';

class ReadOnlyReviewContent extends StatelessWidget {
  final String content;

  const ReadOnlyReviewContent({Key? key, required this.content})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: Text(
            S().yourOpinion,
            style: context.headline6,
          ),
        ),
        const SizedBox(height: 20),
        Align(
          alignment: Alignment.centerLeft,
          child: Text(
            content,
            style: context.bodyText2.copyWith(color: context.secondaryColor),
          ),
        )
      ],
    );
  }
}
