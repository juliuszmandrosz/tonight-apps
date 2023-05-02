import 'package:common/extensions/typography_extensions.dart';
import 'package:flutter/material.dart';
import 'package:translations/translations.dart';

class FailureInfo extends StatelessWidget {
  final VoidCallback retryCallback;
  final bool isSocketException;

  const FailureInfo({
    required this.retryCallback,
    this.isSocketException = false,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            isSocketException
                ? S().lostNetworkConnectionDescription
                : S().serverError,
            style: context.titleSmall,
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 20),
          OutlinedButton(
            onPressed: retryCallback,
            child: Text(S().tryAgain),
          ),
        ],
      ),
    );
  }
}
