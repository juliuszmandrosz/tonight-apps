import 'package:flutter/material.dart';

class ReadOnlyReviewContent extends StatelessWidget {
  final String content;

  const ReadOnlyReviewContent({Key? key, required this.content})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: TextField(
            maxLines: 4,
            readOnly: true,
            controller: TextEditingController(text: content),
            onChanged: (value) {},
          ),
        )
      ],
    );
  }
}
