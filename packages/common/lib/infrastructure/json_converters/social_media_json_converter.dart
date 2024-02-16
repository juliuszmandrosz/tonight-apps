import 'package:common/common.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

class SocialMediaJsonConverter
    implements JsonConverter<List<SocialMedia>, Map<String, dynamic>> {
  const SocialMediaJsonConverter();

  @override
  List<SocialMedia> fromJson(Map<String, dynamic> socialMedia) {
    return socialMedia.entries
        .where((e) => socialMediaMap.containsKey(e.key))
        .map((e) => socialMediaMap[e.key]!.copyWith(url: e.value))
        .toList();
  }

  @override
  Map<String, dynamic> toJson(List<SocialMedia> socialMedia) {
    return {
      for (final m in socialMedia) m.name: m.url,
    };
  }
}
