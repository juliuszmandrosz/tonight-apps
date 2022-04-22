import 'package:flutter/material.dart';
import 'package:raver/presentation/commons/icons/raver_icon_button.dart';
import 'package:raver/presentation/commons/icons/social_icon_with_title.dart';
import 'package:raver_common/raver_common.dart';
import 'package:raver_translations/raver_translations.dart';

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
                      padding: const EdgeInsets.symmetric(vertical: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: socialMedia.entries.map((element) {
                          if (clubSocialMedia.containsKey(element.key) &&
                              element.value.isNotEmpty) {
                            return SocialIconWithTitle(
                              socialMedia: clubSocialMedia[element.key]!,
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
