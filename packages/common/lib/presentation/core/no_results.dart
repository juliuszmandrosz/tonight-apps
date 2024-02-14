import 'package:common/extensions/typography_extensions.dart';
import 'package:flutter/material.dart';
import 'package:translations/translations.dart';

class NoResults extends StatelessWidget {
  final String message;
  final VoidCallback onRefresh;

  const NoResults({
    required this.message,
    required this.onRefresh,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            message,
            style: context.titleMedium,
          ),
          const SizedBox(height: 20),
          OutlinedButton(
            onPressed: onRefresh,
            child: Text(S().refresh),
          ),
        ],
      ),
    );
  }
}
