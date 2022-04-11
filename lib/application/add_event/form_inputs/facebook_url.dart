import 'package:formz/formz.dart';
import 'package:raver_partners/application/add_event/add_event_cubit.dart';
import 'package:raver_translations/generated/l10n.dart';
import 'package:validators/validators.dart';

enum FacebookUrlError { empty, invalidUrl, notFacebook }

final facebookUrlErrorMessages = {
  FacebookUrlError.empty: S().enterFacebookUrl,
  FacebookUrlError.invalidUrl: S().invalidUrl,
  FacebookUrlError.notFacebook: S().enterFacebookLink,
};

String? getFacebookUrlErrorMessage(AddEventState state) {
  if (!state.isFacebookUrlEnabled) return null;

  if (state.facebookUrl.valid || state.status != FormzStatus.invalid) {
    return null;
  }

  return facebookUrlErrorMessages[state.facebookUrl.error];
}

class FacebookUrl extends FormzInput<String, FacebookUrlError> {
  const FacebookUrl.pure() : super.pure('');

  const FacebookUrl.dirty([String value = '']) : super.dirty(value);

  @override
  FacebookUrlError? validator(String value) {
    if (value.isEmpty) {
      return FacebookUrlError.empty;
    }

    if (!isURL(value)) {
      return FacebookUrlError.invalidUrl;
    }

    if (!value.contains('facebook')) {
      return FacebookUrlError.notFacebook;
    }

    return null;
  }
}
