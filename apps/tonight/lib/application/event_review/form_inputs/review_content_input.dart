import 'package:formz/formz.dart';
import 'package:translations/translations.dart';

enum ReviewContentError {
  tooLong,
  tooShort,
}

final reviewContentInputErrorMessages = {
  ReviewContentError.tooLong: S().reviewContentTooLong,
  ReviewContentError.tooShort: S().reviewContentTooShort,
};

class ReviewContentInput extends FormzInput<String, ReviewContentError> {
  final double numberOfStars;

  const ReviewContentInput.pure([this.numberOfStars = 0]) : super.pure('');

  const ReviewContentInput.dirty({
    required this.numberOfStars,
    String value = '',
  }) : super.dirty(value);

  @override
  ReviewContentError? validator(String value) {
    if (value.length > 1000) {
      return ReviewContentError.tooLong;
    }

    if (numberOfStars < 5 && value.length < 10) {
      return ReviewContentError.tooShort;
    }

    return null;
  }
}
