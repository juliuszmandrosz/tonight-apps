import 'package:common/constants/social_media_constants.dart';
import 'package:common/domain/social_media/social_media_entity.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

final Map<String, SocialMedia> socialMediaMap = {
  facebook: const SocialMedia(
    name: facebook,
    label: 'Facebook',
    icon: FontAwesomeIcons.facebookF,
  ),
  instagram: const SocialMedia(
    name: instagram,
    label: 'Instagram',
    icon: FontAwesomeIcons.instagram,
  ),
  tikTok: const SocialMedia(
    name: tikTok,
    label: 'TikTok',
    icon: FontAwesomeIcons.tiktok,
  ),
  soundCloud: const SocialMedia(
    name: soundCloud,
    label: 'SoundCloud',
    icon: FontAwesomeIcons.soundcloud,
  ),
  spotify: const SocialMedia(
    name: spotify,
    label: 'Spotify',
    icon: FontAwesomeIcons.spotify,
  ),
  youtube: const SocialMedia(
    name: youtube,
    label: 'YouTube',
    icon: FontAwesomeIcons.youtube,
  ),
  discord: const SocialMedia(
    name: discord,
    label: 'Discord',
    icon: FontAwesomeIcons.discord,
  ),
  // legacy
  djChannel: const SocialMedia(
    name: djChannel,
    label: 'SoundCloud',
    icon: FontAwesomeIcons.soundcloud,
  ),
};
