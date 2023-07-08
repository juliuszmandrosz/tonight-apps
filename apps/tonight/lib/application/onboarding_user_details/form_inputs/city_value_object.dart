import 'package:formz/formz.dart';
import 'package:tonight/domain/places/place_entity.dart';

enum CityError { empty }

final cityErrorMessages = {};

class CityValueObject extends FormzInput<Place?, CityError> {
  const CityValueObject.pure() : super.pure(null);

  const CityValueObject.dirty(Place? value) : super.dirty(value);

  @override
  CityError? validator(Place? value) {
    return null;
  }
}
