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

String displayEventTags(
    BuildContext context, Event event, EventTickets? eventTickets) {
  var price = '${_getPrice(event, eventTickets)}'
      '${getCurrencySymbolFromCode(event.currency)}';
  final minAge = '${event.minAge}+';

  // TODO - add translation
  return 'Wiek $minAge, wejście $price';
}

_getPrice(Event event, EventTickets? eventTickets) {
  if (eventTickets == null) {
    return event.price;
  }

  return eventTickets.getCurrentPool().ticketPrice;
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
