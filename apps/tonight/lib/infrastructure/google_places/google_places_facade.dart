import 'package:common/infrastructure/core/handle_dio_error.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:intl/intl.dart';
import 'package:logger/logger.dart';
import 'package:tonight/domain/places/place_entity.dart';
import 'package:tonight/domain/places/places_facade.dart';
import 'package:tonight/domain/places/places_failure.dart';
import 'package:tonight/infrastructure/google_places/dtos/place_dto.dart';

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
  Future<Either<PlacesFailure, List<Place>>> getPlaces(String query) async {
    try {
      if (query.isEmpty) {
        return Future.value(right(<Place>[]));
      }

      const endpoint = 'googlePlaces/getCities';

      final data = {
        'query': query,
        'locale': Intl.getCurrentLocale(),
      };

      final result = await _dio.post(endpoint, data: data);
      final cities = result.data as List<dynamic>;

      return right(
        cities.map((city) => PlaceDto.fromJson(city).toDomain()).toList(),
      );
    } on DioError catch (e) {
      return left(
        await handleDioError(
          error: e,
          crashlytics: _crashlytics,
          logger: _logger,
          message: e.message,
          unexpectedFailure: const PlacesFailure.unexpected(),
          socketFailure: const PlacesFailure.noConnection(),
        ),
      );
    }
  }
}
