import 'package:freezed_annotation/freezed_annotation.dart';

part 'event_filters_entity.freezed.dart';

@freezed
class EventFilters with _$EventFilters {
  const EventFilters._();

  factory EventFilters({
    required String phrase,
    required int minPrice,
    required List<int> minAges,
    required List<String> musicalGenres,
    required List<String> allowedOutfits,
    required Map<String, double> userLocation,
    required int maxDistance,
    required String cityId,
    required String cityName,
    required bool isMaxDistanceOption,
    required bool showOnlyLive,
    required bool showOnlyUpcoming,
    required bool showOnlyPast,
    required DateTime startDate,
    required DateTime? endDate,
    required DateTime? day,
    required int? maxPrice,
    required bool? isConcert,
    required String? clubId,
  }) = _EventFilters;

  factory EventFilters.empty() => EventFilters(
    phrase: '',
    minAges: [],
    musicalGenres: [],
    allowedOutfits: [],
    minPrice: 0,
    userLocation: {},
    cityId: '',
    cityName: '',
    maxDistance: 50,
    isMaxDistanceOption: true,
    showOnlyLive: false,
    showOnlyUpcoming: false,
    showOnlyPast: false,
    startDate: DateTime.now(),
    endDate: null,
    day: null,
    maxPrice: null,
    isConcert: null,
    clubId: null,
  );
}
