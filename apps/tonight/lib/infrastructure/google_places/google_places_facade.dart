import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:intl/intl.dart';
import 'package:logger/logger.dart';
import 'package:tonight/domain/places/city_entity.dart';
import 'package:tonight/domain/places/places_facade.dart';
import 'package:tonight/domain/places/places_failure.dart';
import 'package:tonight/infrastructure/google_places/dtos/city_dto.dart';

class GooglePlacesFacade implements PlacesFacade {
  final Dio _dio;
  final Logger _logger;
  final FirebaseCrashlytics _crashlytics;

  GooglePlacesFacade({
    required Dio dio,
    required Logger logger,
    required FirebaseCrashlytics firebaseCrashlytics,
  })  : _dio = dio,
        _logger = logger,
        _crashlytics = firebaseCrashlytics;

  @override
  Future<Either<PlacesFailure, List<City>>> getCities(String query) async {
    try {
      if (query.isEmpty) {
        return Future.value(right(<City>[]));
      }

      const endpoint = 'googlePlaces/getCities';

      final data = {
        'query': query,
        'locale': Intl.getCurrentLocale(),
      };

      final result = await _dio.post(endpoint, data: data);
      final cities = result.data as List<dynamic>;

      return right(
        cities.map((city) => CityDto.fromJson(city).toDomain()).toList(),
      );
    } on DioError catch (e) {
      _logger.e('Dio error getting cities EXCEPTION: $e');
      await _crashlytics.recordError(e, StackTrace.current);
      return left(const PlacesFailure.unexpected());
    }
  }
}
