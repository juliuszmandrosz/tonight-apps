import 'package:formz/formz.dart';
import 'package:tonight_partners/application/add_event/add_event_cubit.dart';
import 'package:translations/translations.dart';

enum DressCodeError { empty }

final dressCodeErrorMessages = {
  DressCodeError.empty: S().selectDressCode,
};

String? getDressCodeErrorMessage(AddEventState state) {
  if (state.dressCode.valid || state.status != FormzStatus.invalid) {
    return null;
  }

  return dressCodeErrorMessages[state.dressCode.error];
}

class DressCode extends FormzInput<String, DressCodeError> {
  const DressCode.pure() : super.pure('');

  const DressCode.dirty([String value = '']) : super.dirty(value);

  @override
  DressCodeError? validator(String value) {
    if (value.isEmpty) {
      return DressCodeError.empty;
    }

    return null;
  }
}
