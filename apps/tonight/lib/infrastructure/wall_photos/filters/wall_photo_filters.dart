import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tonight/infrastructure/wall_photos/filters/show_only_other_users_photos_filter.dart';
import 'package:tonight/infrastructure/wall_photos/filters/show_photos_from_clubs_in_range_filter.dart';
import 'package:tonight/infrastructure/wall_photos/filters/show_photos_from_live_events_filter.dart';
import 'package:tonight/infrastructure/wall_photos/filters/wall_photo_phrase_filter.dart';

part 'wall_photo_filters.freezed.dart';

@freezed
class WallPhotoFilters with _$WallPhotoFilters {
  const WallPhotoFilters._();

  factory WallPhotoFilters({
    required WallPhotoPhraseFilter phraseFilter,
    required ShowPhotosFromLiveEventsFilter showPhotosFromLiveEventsFilter,
    required ShowOnlyOtherUsersPhotosFilter showOnlyOtherUsersPhotosFilter,
    required ShowPhotosFromClubsInRangeFilter showPhotosFromClubsInRangeFilter,
  }) = _WallPhotoFilters;

  factory WallPhotoFilters.empty() => WallPhotoFilters(
        phraseFilter: WallPhotoPhraseFilter.empty(),
        showPhotosFromLiveEventsFilter: ShowPhotosFromLiveEventsFilter(),
        showOnlyOtherUsersPhotosFilter: ShowOnlyOtherUsersPhotosFilter.empty(),
        showPhotosFromClubsInRangeFilter:
            ShowPhotosFromClubsInRangeFilter.empty(),
      );

  String buildFilters() {
    var query = '';

    final filterList = [
      showPhotosFromClubsInRangeFilter,
      showPhotosFromLiveEventsFilter,
      showOnlyOtherUsersPhotosFilter,
    ];

    for (final filter in filterList) {
      final previousQuery = query;
      query = filter.buildFilters(query);
      if (filter != filterList.last && previousQuery != query) {
        query += ' && ';
      }
    }
    return query;
  }
}
