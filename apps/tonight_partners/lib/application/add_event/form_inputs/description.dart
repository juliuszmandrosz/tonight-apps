import 'package:formz/formz.dart';
import 'package:translations/raver_translations.dart';

enum DescriptionError { tooLong }

final descriptionErrorMessages = {
  DescriptionError.tooLong: S().descTooLong,
};

class Description extends FormzInput<String, DescriptionError> {
  const Description.pure() : super.pure('');

  const Description.dirty([String value = '']) : super.dirty(value);

  @override
  DescriptionError? validator(String value) {
    if (value.length > 1000) {
      return DescriptionError.tooLong;
    }

    return null;
  }
}
