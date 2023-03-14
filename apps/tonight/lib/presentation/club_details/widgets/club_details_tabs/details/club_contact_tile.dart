import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tonight/presentation/club_details/widgets/club_details_tabs/details/club_detail_tile.dart';
import 'package:translations/translations.dart';

class ClubContactTile extends StatelessWidget {
  final String phoneNumber;

  const ClubContactTile({
    required this.phoneNumber,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClubDetailTile(
      title: S().contact,
      subtitle: phoneNumber,
      onTap: () async {
        var result = await launchPhoneCall(phoneNumber);
        if (result.isSome()) {
          context.showSnackbarMessage(S().errorMakingCall);
        }
      },
      trailing: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          FaIcon(FontAwesomeIcons.phone),
        ],
      ),
    );
  }
}
