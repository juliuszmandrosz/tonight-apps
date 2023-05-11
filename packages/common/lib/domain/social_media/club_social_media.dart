import 'package:common/constants/social_media_constants.dart';
import 'package:common/domain/social_media/social_media_entity.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:translations/generated/l10n.dart';

final Map<String, SocialMedia> clubSocialMedia = {
  facebook: SocialMedia(
    name: facebook,
    label: S().facebook,
    icon: FontAwesomeIcons.facebookF,
  ),
  instagram: SocialMedia(
    name: instagram,
    label: S().instagram,
    icon: FontAwesomeIcons.instagram,
  ),
  tikTok: SocialMedia(
    name: tikTok,
    label: S().tikTok,
    icon: FontAwesomeIcons.tiktok,
  ),
};
