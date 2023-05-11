import 'package:dartz/dartz.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:tonight/domain/festivals/festival_entity.dart';
import 'package:tonight/domain/festivals/festival_facade.dart';
import 'package:tonight/domain/festivals/festival_failure.dart';

class FirebaseFestivalFacade implements FestivalFacade {
  @override
  Future<Either<FestivalFailure, List<Festival>>> fetchFestivals({
    int pageSize = 20,
    int offset = 0,
  }) async {
    return right([]);
  }

  @override
  Future<Either<FestivalFailure, List<Festival>>> fetchNearestFestivalsInRange({
    required LatLng userLocation,
    required double radius,
    int pageSize = 10,
  }) async {
    return right([]);
  }
}
