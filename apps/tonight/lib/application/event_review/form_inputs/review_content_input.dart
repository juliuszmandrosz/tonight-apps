import 'package:formz/formz.dart';
import 'package:translations/translations.dart';

enum ReviewContentError {
  long,
}

final reviewContentInputErrorMessages = {
  ReviewContentError.long: S().reviewContentTooLong
};

class ReviewContentInput extends FormzInput<String, ReviewContentError> {
  const ReviewContentInput.pure() : super.pure('');

  const ReviewContentInput.dirty([String value = '']) : super.dirty(value);

  @override
  ReviewContentError? validator(String value) {
    if (value.length > 1000) {
      return ReviewContentError.long;
    }
    return null;
  }
}
