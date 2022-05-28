import 'package:flutter/cupertino.dart';
import 'package:raver_common/raver_common.dart';
import 'package:raver_events/raver_events.dart';

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

String displayEventTags(BuildContext context, Event event) {
  final musicalGenres = displayMusicalGenres(
    event.musicalGenres,
    EventDetailsSeparator.comma,
  );
  var price = '${event.price}${getCurrencySymbolFromCode(event.currency)}';
  final minAge = '${event.minAge}+';
  final allowedOutfit = event.allowedOutfit;

  return '$minAge, $price, $allowedOutfit, $musicalGenres';
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
