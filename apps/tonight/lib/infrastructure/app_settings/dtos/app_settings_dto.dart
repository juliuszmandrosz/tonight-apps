import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tonight/domain/app_settings/app_settings_entity.dart';

part 'app_settings_dto.freezed.dart';
part 'app_settings_dto.g.dart';

@freezed
class AppSettingsDto with _$AppSettingsDto {
  const AppSettingsDto._();

  const factory AppSettingsDto({
    required int currentChallengePeriod,
  }) = _AppSettingsDto;

  factory AppSettingsDto.fromJson(Map<String, dynamic> json) =>
      _$AppSettingsDtoFromJson(json);

  factory AppSettingsDto.fromFirebase(DocumentSnapshot documentSnapshot) {
    return AppSettingsDto.fromJson(
        documentSnapshot.data() as Map<String, dynamic>);
  }

  factory AppSettingsDto.fromDomain(AppSettings appSettings) => AppSettingsDto(
        currentChallengePeriod: appSettings.currentChallengePeriod,
      );

  AppSettings toDomain() => AppSettings(
        currentChallengePeriod: currentChallengePeriod,
      );
}
