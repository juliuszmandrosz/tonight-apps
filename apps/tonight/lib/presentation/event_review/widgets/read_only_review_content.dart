import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:translations/raver_translations.dart';

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
            style: context.titleLarge,
          ),
        ),
        const SizedBox(height: 20),
        Align(
          alignment: Alignment.centerLeft,
          child: Text(
            content,
            style: context.bodyMedium.copyWith(color: context.secondaryColor),
          ),
        )
      ],
    );
  }
}
