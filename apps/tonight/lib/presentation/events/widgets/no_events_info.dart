import 'package:common/extensions/typography_extensions.dart';
import 'package:flutter/material.dart';
import 'package:translations/translations.dart';

class NoEventsInfo extends StatelessWidget {
  final Function(BuildContext context) onEventsRefreshed;

  const NoEventsInfo({
    required this.onEventsRefreshed,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            S().events(0),
            style: context.titleSmall,
          ),
          const SizedBox(height: 20),
          OutlinedButton(
            onPressed: () => onEventsRefreshed(context),
            child: Text(S().refresh),
          ),
        ],
      ),
    );
  }
}
