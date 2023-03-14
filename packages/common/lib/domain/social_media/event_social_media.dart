import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:common/constants/social_media_constants.dart';
import 'package:common/domain/social_media/social_media_entity.dart';
import 'package:translations/generated/l10n.dart';

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
