import 'package:formz/formz.dart';
import 'package:raver_partners/application/add_event/add_event_cubit.dart';
import 'package:raver_translations/generated/l10n.dart';

enum ArtistNameError { empty, tooLong }

final artistNameErrorMessages = {
  ArtistNameError.empty: S().enterArtistName,
  ArtistNameError.tooLong: S().nameTooLong,
};

String? getArtistNameErrorMessage(AddEventState state) {
  if (state.artistName.valid || state.status != FormzStatus.invalid) {
    return null;
  }

  return artistNameErrorMessages[state.artistName.error];
}

class ArtistName extends FormzInput<String, ArtistNameError> {
  const ArtistName.pure() : super.pure('');

  const ArtistName.dirty([String value = '']) : super.dirty(value);

  @override
  ArtistNameError? validator(String value) {
    if (value.isEmpty) {
      return ArtistNameError.empty;
    }

    if (value.length > 50) {
      return ArtistNameError.tooLong;
    }

    return null;
  }
}
