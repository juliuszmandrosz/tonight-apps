import 'package:formz/formz.dart';
import 'package:raver_translations/generated/l10n.dart';

enum EventNameError { empty, tooLong, tooShort, specialCharacter }

final eventNameErrorMessages = {
  EventNameError.empty: S().enterEventName,
  EventNameError.tooLong: S().nameTooLong,
  EventNameError.tooShort: S().nameTooShort,
};

class EventName extends FormzInput<String, EventNameError> {
  const EventName.pure() : super.pure('');

  const EventName.dirty([String value = '']) : super.dirty(value);

  @override
  EventNameError? validator(String value) {
    if (value.isEmpty) {
      return EventNameError.empty;
    }

    if (value.length < 3) {
      return EventNameError.tooShort;
    }

    if (value.length > 100) {
      return EventNameError.tooLong;
    }

    return null;
  }
}
