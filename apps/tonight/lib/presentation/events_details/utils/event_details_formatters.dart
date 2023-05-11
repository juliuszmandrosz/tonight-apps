import 'package:common/common.dart';
import 'package:events/events.dart';
import 'package:flutter/cupertino.dart';
import 'package:translations/translations.dart';

String displayMusicalGenres(
  List<String> musicalGenres,
  EventDetailsSeparator separator,
) {
  String displayedString = '';
  for (var genre in musicalGenres) {
    displayedString += genre;
    if (genre != musicalGenres.last) {
      displayedString += _addSeparator(separator);
    }
  }
  return displayedString;
}

String displayEventTags(
  BuildContext context,
  Event event,
) {
  var price = '${_getPrice(event)}'
      '${getCurrencySymbolFromCode(event.currency)}';
  final minAge = '${event.minAge}+';

  return '${S().age} $minAge, ${S().entry.toLowerCase()} $price';
}

_getPrice(Event event) {
  return event.price;
}

String _addSeparator(EventDetailsSeparator separator) {
  if (separator == EventDetailsSeparator.comma) {
    return ', ';
  }

  if (separator == EventDetailsSeparator.newLine) {
    return '\n';
  }

  return '';
}

enum EventDetailsSeparator { newLine, comma }
