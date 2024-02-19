// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_app_links_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserAppLinksDtoImpl _$$UserAppLinksDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$UserAppLinksDtoImpl(
      facebook: json['facebook'] as String,
      instagram: json['instagram'] as String,
      tikTok: json['tikTok'] as String,
      discord: json['discord'] as String,
      privacyPolicy: json['privacyPolicy'] as String,
      termsOfService: json['termsOfService'] as String,
    );

Map<String, dynamic> _$$UserAppLinksDtoImplToJson(
        _$UserAppLinksDtoImpl instance) =>
    <String, dynamic>{
      'facebook': instance.facebook,
      'instagram': instance.instagram,
      'tikTok': instance.tikTok,
      'discord': instance.discord,
      'privacyPolicy': instance.privacyPolicy,
      'termsOfService': instance.termsOfService,
    };
