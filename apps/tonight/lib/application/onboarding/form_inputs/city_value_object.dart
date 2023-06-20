import 'package:formz/formz.dart';
import 'package:tonight/domain/places/place_entity.dart';

enum CityError {
  empty,
}

final cityErrorMessages = {
  // TODO - add translations
  CityError.empty: 'Please enter your city',
};

class CityValueObject extends FormzInput<Place?, CityError> {
  const CityValueObject.pure() : super.pure(null);

  const CityValueObject.dirty(Place? value) : super.dirty(value);

  @override
  CityError? validator(Place? value) {
    if (value == null) {
      return CityError.empty;
    }

    if (value.id.isEmpty || value.name.isEmpty) {
      return CityError.empty;
    }

    return null;
  }
}
