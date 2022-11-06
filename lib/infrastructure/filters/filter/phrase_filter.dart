class PhraseFilter {
  final String phrase;
  final bool isQueryByCityAvailable;

  PhraseFilter({
    required this.phrase,
    this.isQueryByCityAvailable = true,
  });
}
