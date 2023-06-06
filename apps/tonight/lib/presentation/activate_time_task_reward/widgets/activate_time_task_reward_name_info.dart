import 'package:common/extensions/typography_extensions.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ActivateTimeTaskRewardNameInfo extends StatelessWidget {
  final String timeTaskName;

  const ActivateTimeTaskRewardNameInfo({
    required this.timeTaskName,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const FaIcon(FontAwesomeIcons.circleInfo, size: 20),
          const SizedBox(width: 12),
          Expanded(
            child: Text(
              timeTaskName,
              style: context.titleLarge,
            ),
          ),
        ],
      ),
    );
  }
}
