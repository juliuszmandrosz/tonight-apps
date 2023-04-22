class PhraseFilter {
  final String phrase;

  PhraseFilter({required this.phrase});

  factory PhraseFilter.empty() => PhraseFilter(phrase: '');
}
