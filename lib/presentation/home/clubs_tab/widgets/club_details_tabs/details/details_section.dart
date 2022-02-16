import 'package:flutter/material.dart';

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
    var theme = Theme.of(context);
    return Column(
      children: [
        Row(
          children: [
            Text(
              title,
              style: theme.textTheme.bodyText1,
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsetsDirectional.only(top: 10, bottom: 15),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(child: content),
            ],
          ),
        )
      ],
    );
  }
}
