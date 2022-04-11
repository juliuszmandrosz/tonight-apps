import 'package:formz/formz.dart';
import 'package:raver_partners/application/add_event/add_event_cubit.dart';
import 'package:raver_translations/generated/l10n.dart';
import 'package:validators/validators.dart';

enum DjChannelUrlError { empty, invalidUrl, notYoutube }

final djChannelUrlErrorMessages = {
  DjChannelUrlError.empty: S().enterDjChannelUrl,
  DjChannelUrlError.invalidUrl: S().invalidUrl,
  DjChannelUrlError.notYoutube: S().enterYoutubeLink,
};

String? getDjChannelUrlErrorMessage(AddEventState state) {
  if (!state.isDjChannelUrlEnabled) return null;

  if (state.djChannelUrl.valid || state.status != FormzStatus.invalid) {
    return null;
  }

  return djChannelUrlErrorMessages[state.djChannelUrl.error];
}

class DjChannelUrl extends FormzInput<String, DjChannelUrlError> {
  const DjChannelUrl.pure() : super.pure('');

  const DjChannelUrl.dirty([String value = '']) : super.dirty(value);

  @override
  DjChannelUrlError? validator(String value) {
    if (value.isEmpty) {
      return DjChannelUrlError.empty;
    }

    if (!isURL(value)) {
      return DjChannelUrlError.invalidUrl;
    }

    if (!value.contains('youtube')) {
      return DjChannelUrlError.notYoutube;
    }

    return null;
  }
}
