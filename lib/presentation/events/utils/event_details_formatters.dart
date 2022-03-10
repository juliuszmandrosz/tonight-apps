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
