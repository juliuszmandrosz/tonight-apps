import 'package:formz/formz.dart';
import 'package:raver_partners/application/add_event/add_event_cubit.dart';
import 'package:raver_translations/generated/l10n.dart';

enum MusicalGenresError { empty, maxThree }

final musicalGenresErrorMessages = {
  MusicalGenresError.empty: S().selectMusicalGenres,
  MusicalGenresError.maxThree: S().maxThreeMusicalGenres,
};

String? getMusicalGenresErrorMessage(AddEventState state) {
  if (state.musicalGenres.valid || state.status != FormzStatus.invalid) {
    return null;
  }

  return musicalGenresErrorMessages[state.musicalGenres.error];
}

class MusicalGenres extends FormzInput<List<String>, MusicalGenresError> {
  const MusicalGenres.pure() : super.pure(const []);

  const MusicalGenres.dirty(List<String> value) : super.dirty(value);

  @override
  MusicalGenresError? validator(List<String> value) {
    if (value.isEmpty) {
      return MusicalGenresError.empty;
    }

    // TODO - get max elements from remote config
    if (value.length > 3) {
      return MusicalGenresError.maxThree;
    }

    return null;
  }
}
