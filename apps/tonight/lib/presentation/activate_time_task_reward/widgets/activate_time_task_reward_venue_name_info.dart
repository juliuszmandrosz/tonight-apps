import 'package:common/extensions/typography_extensions.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ActivateTimeTaskRewardVenueNameInfo extends StatelessWidget {
  final String venueName;

  const ActivateTimeTaskRewardVenueNameInfo({
    required this.venueName,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const FaIcon(FontAwesomeIcons.building, size: 20),
          const SizedBox(width: 12),
          Expanded(
            child: Text(
              venueName,
              style: context.titleLarge,
            ),
          ),
        ],
      ),
    );
  }
}
