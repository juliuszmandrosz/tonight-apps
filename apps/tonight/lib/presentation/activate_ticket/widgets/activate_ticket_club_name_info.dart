import 'package:common/extensions/typography_extensions.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ActivateTicketClubNameInfo extends StatelessWidget {
  final String clubName;

  const ActivateTicketClubNameInfo({
    required this.clubName,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const FaIcon(FontAwesomeIcons.building, size: 24),
        const SizedBox(width: 16),
        Expanded(
          child: Text(
            clubName,
            style: context.headlineSmall,
          ),
        ),
      ],
    );
  }
}
