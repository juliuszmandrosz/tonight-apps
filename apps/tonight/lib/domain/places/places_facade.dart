import 'package:dartz/dartz.dart';
import 'package:tonight/domain/places/city_entity.dart';
import 'package:tonight/domain/places/places_failure.dart';

abstract class PlacesFacade {
  Future<Either<PlacesFailure, List<City>>> getCities(String query);
}
