import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:raver_common/constants/social_media_constants.dart';
import 'package:raver_common/domain/social_media/social_media_entity.dart';
import 'package:raver_translations/generated/l10n.dart';

final Map<String, SocialMedia> eventSocialMedia = {
  facebook: SocialMedia(
    label: S().facebookEvent,
    icon: FontAwesomeIcons.facebook,
  ),
  djChannel: SocialMedia(
    label: S().djYoutubeChannel,
    icon: FontAwesomeIcons.youtube,
  ),
};
