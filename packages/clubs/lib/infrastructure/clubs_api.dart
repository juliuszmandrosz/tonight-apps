import 'package:clubs/clubs.dart';
import 'package:common/constants/constants.dart';
import 'package:dio/dio.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

abstract class ClubsApi {
  Future<List<dynamic>> getClubs(
    ClubFilters filters,
    int pageSize,
    int offset,
  );

  Future<List<dynamic>> fetchNearestClubsInRange({
    required LatLng userLocation,
    required double radius,
    int pageSize = 10,
  });
}

class ClubsApiImpl implements ClubsApi {
  final Dio _dio;

  ClubsApiImpl(this._dio);

  @override
  Future<List<dynamic>> getClubs(
    ClubFilters filters,
    int pageSize,
    int offset,
  ) async {
    final filterBy = filters.buildFilters();
    final pageNumber = ((offset + 1) / pageSize).ceil();
    final sortBy = _getEventsSortBy(filters);
    final queryBy = _getQueryBy(filters);

    const endpoint = 'clubs/getClubs';

    final data = {
      'query': filters.phraseFilter.phrase,
      'queryBy': queryBy,
      'filterBy': filterBy,
      'pageNumber': pageNumber,
      'pageSize': pageSize,
      'sortBy': sortBy,
    };

    final result = await _dio.post(endpoint, data: data);

    return result.data as List<dynamic>;
  }

  @override
  Future<List<dynamic>> fetchNearestClubsInRange({
    required LatLng userLocation,
    required double radius,
    int pageSize = 10,
  }) async {
    final lat = userLocation.latitude;
    final lng = userLocation.longitude;

    final sortBy = _getSortByLocationString(
      latitude: lat,
      longitude: lng,
    );

    final filterBy = 'location:($lat, $lng, $radius km)';

    const endpoint = 'clubs/getClubs';

    final data = {
      'query': '',
      'queryBy': '',
      'pageNumber': 1,
      'pageSize': pageSize,
      'filterBy': filterBy,
      'sortBy': sortBy,
    };

    final result = await _dio.post(endpoint, data: data);

    return result.data as List<dynamic>;
  }

  String _getQueryBy(ClubFilters clubFilters) {
    return 'clubName';
  }

  String _getEventsSortBy(ClubFilters clubFilters) {
    final userLocation = clubFilters.maxDistanceFilter.userLocation;

    if (userLocation.isNotEmpty) {
      return _getSortByLocationString(
        latitude: userLocation[latitude]!,
        longitude: userLocation[longitude]!,
      );
    }

    return 'reviewCount:desc, reviewAvg:desc';
  }

  _getSortByLocationString({
    required double latitude,
    required double longitude,
  }) {
    return 'location($latitude, $longitude):asc';
  }
}
