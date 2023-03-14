import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:common/constants/social_media_constants.dart';
import 'package:common/domain/social_media/social_media_entity.dart';
import 'package:translations/generated/l10n.dart';

final Map<String, SocialMedia> clubSocialMedia = {
  facebook: SocialMedia(
    label: S().facebook,
    icon: FontAwesomeIcons.facebookF,
  ),
  instagram: SocialMedia(
    label: S().instagram,
    icon: FontAwesomeIcons.instagram,
  ),
  tikTok: SocialMedia(
    label: S().tikTok,
    icon: FontAwesomeIcons.tiktok,
  ),
};
