import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:translations/translations.dart';

class NextPageError extends StatelessWidget {
  final VoidCallback retryCallback;

  const NextPageError({
    required this.retryCallback,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Wrap(
      alignment: WrapAlignment.center,
      children: [
        Text(
          '${S().nextPageError},',
          style: context.bodySmall,
        ),
        TextButton(
          onPressed: retryCallback,
          child: Text(
            '${S().tryAgain.toLowerCase()}.',
            style: context.bodySmall.copyWith(
              color: context.primaryColor,
            ),
          ),
        ),
      ],
    );
  }
}
