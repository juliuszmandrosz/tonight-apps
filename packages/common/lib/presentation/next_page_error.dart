import 'package:flutter/material.dart';
import 'package:translations/raver_translations.dart';

class NextPageError extends StatelessWidget {
  final VoidCallback retryCallback;

  const NextPageError({
    required this.retryCallback,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('${S().nextPageError},'),
        TextButton(
          onPressed: retryCallback,
          child: Text('${S().tryAgain.toLowerCase()}.'),
        ),
      ],
    );
  }
}
