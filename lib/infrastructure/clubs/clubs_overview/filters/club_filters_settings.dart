import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:raver/infrastructure/clubs/clubs_overview/filters/filter_values/from_review_avg.dart';

part 'club_filters_settings.freezed.dart';

@freezed
abstract class ClubFilterSettings with _$ClubFilterSettings {
  const ClubFilterSettings._();

  factory ClubFilterSettings({required FromReviewAvg fromReviewAvg}) =
      _ClubFilterSettings;

  factory ClubFilterSettings.empty() = _ClubFilterSettingsEmpty;
}
