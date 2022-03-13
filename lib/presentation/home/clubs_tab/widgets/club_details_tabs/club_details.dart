import 'package:flutter/material.dart';
import 'package:raver/generated/l10n.dart';
import 'package:raver/presentation/commons/constants/social_media_icons.dart';
import 'package:raver/presentation/commons/icons/raver_icon_button.dart';
import 'package:raver/presentation/commons/utils/url_utils.dart';
import 'package:raver/presentation/home/clubs_tab/widgets/club_details_tabs/details/social_icon_with_title.dart';

import 'details/details_section.dart';

class ClubDetails extends StatelessWidget {
  const ClubDetails({
    Key? key,
    required this.aboutUs,
    required this.phoneNumber,
    required this.socialMedia,
  }) : super(key: key);

  final String? aboutUs;
  final String phoneNumber;
  final Map<String, String> socialMedia;

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
                    title: S().aboutUs,
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
                          SnackBar(
                            content: Text(S().errorMakingCall),
                          ),
                        );
                      }
                    },
                    icon: const Icon(Icons.phone),
                  )
                ],
              ),
              title: S().contact,
            ),
            socialMedia.isNotEmpty
                ? DetailsSection(
                    content: Padding(
                      padding: const EdgeInsets.only(left: 20, right: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: socialMedia.entries.map((element) {
                          if (socialMediaIcons.containsKey(element.key)) {
                            return SocialIconWithTitle(
                              iconData: socialMediaIcons[element.key]!,
                              title: element.key,
                              url: element.value,
                            );
                          }
                          //This should never happen, but just in case
                          return const SizedBox.shrink();
                        }).toList(),
                      ),
                    ),
                    title: S().socialMedia,
                  )
                : Container()
          ],
        ),
      ),
    );
  }
}
