// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_app_links_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserAppLinksDto _$$_UserAppLinksDtoFromJson(Map<String, dynamic> json) =>
    _$_UserAppLinksDto(
      facebook: json['facebook'] as String,
      instagram: json['instagram'] as String,
      tikTok: json['tikTok'] as String,
      privacyPolicy: json['privacyPolicy'] as String,
      termsOfService: json['termsOfService'] as String,
    );

Map<String, dynamic> _$$_UserAppLinksDtoToJson(_$_UserAppLinksDto instance) =>
    <String, dynamic>{
      'facebook': instance.facebook,
      'instagram': instance.instagram,
      'tikTok': instance.tikTok,
      'privacyPolicy': instance.privacyPolicy,
      'termsOfService': instance.termsOfService,
    };
