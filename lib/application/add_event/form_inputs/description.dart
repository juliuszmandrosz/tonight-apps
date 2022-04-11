import 'package:formz/formz.dart';
import 'package:raver_partners/application/add_event/add_event_cubit.dart';
import 'package:raver_translations/raver_translations.dart';

enum DescriptionError { tooLong }

final descriptionErrorMessages = {
  DescriptionError.tooLong: S().descTooLong,
};

String? getDescriptionErrorMessage(AddEventState state) {
  if (state.eventName.valid || state.status != FormzStatus.invalid) {
    return null;
  }

  return descriptionErrorMessages[state.eventName.error];
}

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
