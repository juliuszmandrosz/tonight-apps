import 'package:formz/formz.dart';
import 'package:raver_translations/generated/l10n.dart';
import 'package:validators/validators.dart';

enum FacebookUrlError { empty, invalidUrl, notFacebook }

final facebookUrlErrorMessages = {
  FacebookUrlError.empty: S().enterFacebookUrl,
  FacebookUrlError.invalidUrl: S().invalidUrl,
  FacebookUrlError.notFacebook: S().enterFacebookLink,
};

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

    if (!RegExp(
      '(?:(?:http|https):\/\/)?(?:www.)?'
      'facebook.com\/(?:(?:\w)*#!\/)?(?:pages\/)?'
      '(?:[?\w\-]*\/)?(?:profile.php\?id=(?=\d.*))?([\w\-]*)?',
    ).hasMatch(value)) {
      return FacebookUrlError.notFacebook;
    }

    return null;
  }
}
