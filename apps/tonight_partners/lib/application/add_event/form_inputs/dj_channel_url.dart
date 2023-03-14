import 'package:formz/formz.dart';
import 'package:translations/generated/l10n.dart';
import 'package:validators/validators.dart';

enum DjChannelUrlError { empty, invalidUrl, notYoutube }

final djChannelUrlErrorMessages = {
  DjChannelUrlError.empty: S().enterDjChannelYoutubeUrl,
  DjChannelUrlError.invalidUrl: S().invalidUrl,
  DjChannelUrlError.notYoutube: S().enterYoutubeLink,
};

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

    if (!RegExp('^(https?\:\/\/)?((www\.)?youtube\.com|youtu\.be)\/.+\$')
        .hasMatch(value)) {
      return DjChannelUrlError.notYoutube;
    }

    return null;
  }
}
