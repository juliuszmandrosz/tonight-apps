import 'package:dartz/dartz.dart';
import 'package:raver/domain/places/city_entity.dart';
import 'package:raver/domain/places/places_failure.dart';

abstract class PlacesFacade {
  Future<Either<PlacesFailure, List<City>>> getCities(String query);
}
