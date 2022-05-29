import 'package:flutter/material.dart';

class ReadOnlyReviewContent extends StatelessWidget {
  final String content;

  const ReadOnlyReviewContent({Key? key, required this.content})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      maxLines: null,
      readOnly: true,
      controller: TextEditingController(text: content),
      onChanged: null,
      enabled: false,
    );
  }
}
