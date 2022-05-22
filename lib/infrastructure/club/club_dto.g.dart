// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'club_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ClubDto _$$_ClubDtoFromJson(Map<String, dynamic> json) => _$_ClubDto(
      clubName: json['clubName'] as String,
      clubImageUrl: json['clubImageUrl'] as String,
      reviewCount: json['reviewCount'] as int? ?? 0,
      reviewAvg: (json['reviewAvg'] as num?)?.toDouble() ?? 0,
      locationString: json['locationString'] as String,
      cityId: json['cityId'] as String,
      acceptedCurrency: json['acceptedCurrency'] as String,
      phoneNumber: json['phoneNumber'] as String,
      location: (json['location'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(k, (e as num).toDouble()),
      ),
      socialMedia: (json['socialMedia'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, e as String),
          ) ??
          const {},
      aboutUs: json['aboutUs'] as String?,
    );

Map<String, dynamic> _$$_ClubDtoToJson(_$_ClubDto instance) =>
    <String, dynamic>{
      'clubName': instance.clubName,
      'clubImageUrl': instance.clubImageUrl,
      'reviewCount': instance.reviewCount,
      'reviewAvg': instance.reviewAvg,
      'locationString': instance.locationString,
      'cityId': instance.cityId,
      'acceptedCurrency': instance.acceptedCurrency,
      'phoneNumber': instance.phoneNumber,
      'location': instance.location,
      'socialMedia': instance.socialMedia,
      'aboutUs': instance.aboutUs,
    };
