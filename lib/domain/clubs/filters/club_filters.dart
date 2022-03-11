import 'package:freezed_annotation/freezed_annotation.dart';

import 'club_filters_settings.dart';

part 'club_filter.freezed.dart';

@freezed
abstract class ClubFilters with _$ClubFilter {
  const ClubFilters._();

  factory ClubFilters({
    required String phrase,
    required ClubFilterSettings clubFilterSettings,
  }) = _ClubFilter;

  factory ClubFilters.empty() => ClubFilters(
        phrase: "",
        clubFilterSettings: ClubFilterSettings.empty(),
      );
}
