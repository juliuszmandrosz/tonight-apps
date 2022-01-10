import 'package:freezed_annotation/freezed_annotation.dart';

import 'club_filters_settings.dart';

part 'club_filter.freezed.dart';

@freezed
abstract class ClubFilter with _$ClubFilter {
  const ClubFilter._();

  factory ClubFilter(
      {required String phrase,
      required ClubFilterSettings clubFilterSettings}) = _ClubFilter;

  factory ClubFilter.empty() = _ClubFilterEmpty;
}
