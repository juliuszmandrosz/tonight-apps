import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tonight/presentation/core/tonight_headline.dart';

class UserTonightVoucherExpiredInfo extends StatelessWidget {
  const UserTonightVoucherExpiredInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FaIcon(
            FontAwesomeIcons.circleInfo,
            size: 50,
          ),
          SizedBox(height: 20),
          TonightHeadline(
            // TODO - add translation
            text: 'Voucher Stracił ważność',
          ),
        ],
      ),
    );
  }
}
