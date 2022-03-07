import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:raver/presentation/commons/icons/raver_icon_button.dart';
import 'package:raver/presentation/commons/utils/url_utils.dart';
import 'package:raver/presentation/home/clubs_tab/widgets/club_details_tabs/details/social_icon_with_title.dart';

import 'details/details_section.dart';

Map<String, IconData> iconMap = {
  "Facebook": FontAwesomeIcons.facebook,
  "Instagram": FontAwesomeIcons.instagram,
  "TikTok": FontAwesomeIcons.tiktok,
};

class ClubDetails extends StatelessWidget {
  const ClubDetails({
    Key? key,
    required this.aboutUs,
    required this.phoneNumber,
    this.socialMedia,
  }) : super(key: key);

  final String? aboutUs;
  final String phoneNumber;
  final Map<String, String>? socialMedia;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(left: 15, right: 15),
        child: Column(
          children: [
            aboutUs != null
                ? DetailsSection(
                    content: Text(
                      aboutUs!,
                      softWrap: true,
                    ),
                    title: "About Us",
                  )
                : Container(),
            DetailsSection(
              content: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(phoneNumber),
                  RaverIconButton(
                    onPressed: () async {
                      var result = await launchPhoneCall(phoneNumber);
                      if (result.isSome()) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text(
                                "Error while launching phone app, check permissions"),
                          ),
                        );
                      }
                    },
                    icon: const Icon(Icons.phone),
                  )
                ],
              ),
              title: "Contact",
            ),
            socialMedia != null
                ? DetailsSection(
                    content: Padding(
                      padding: const EdgeInsets.only(left: 20, right: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: socialMedia!.entries.map((element) {
                          if (iconMap.containsKey(element.key)) {
                            return SocialIconWithTitle(
                              iconData: iconMap[element.key]!,
                              title: element.key,
                              url: element.value,
                            );
                          }
                          //This should never happen, but just in case
                          return const SizedBox.shrink();
                        }).toList(),
                      ),
                    ),
                    title: "Social Media",
                  )
                : Container()
          ],
        ),
      ),
    );
  }
}
