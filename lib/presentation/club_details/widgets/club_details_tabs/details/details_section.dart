import 'package:flutter/material.dart';
import 'package:raver_common/raver_common.dart';

class DetailsSection extends StatelessWidget {
  const DetailsSection({
    Key? key,
    required this.title,
    required this.content,
  }) : super(key: key);

  final String title;
  final Widget content;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text(
              title,
              style: context.subtitle1,
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsetsDirectional.only(top: 10, bottom: 15),
          child: Row(
            children: [
              Expanded(child: content),
            ],
          ),
        )
      ],
    );
  }
}
