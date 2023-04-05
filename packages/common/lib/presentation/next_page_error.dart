import 'package:flutter/material.dart';

class NextPageError extends StatelessWidget {
  final VoidCallback retryCallback;

  const NextPageError({
    required this.retryCallback,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO - add translations
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text('Error fetching next page,'),
        TextButton(
          onPressed: retryCallback,
          child: const Text('try again.'),
        ),
      ],
    );
  }
}
