import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:raver_common/raver_common.dart';
import 'package:raver_translations/raver_translations.dart';

class SearchEventsInfo extends StatelessWidget {
  const SearchEventsInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const FaIcon(FontAwesomeIcons.circleInfo, size: 18),
        const SizedBox(width: 15),
        Flexible(
          child: AutoSizeText(
            S().typeEventClubOrArtistName,
            maxLines: 1,
            style: context.bodyText2.copyWith(color: context.secondaryColor),
          ),
        ),
      ],
    );
  }
}
