class PhraseFilter {
  final String phrase;

  PhraseFilter({
    required this.phrase,
  });

  PhraseFilter copyWith({
    String? phrase,
  }) {
    return PhraseFilter(phrase: phrase ?? this.phrase);
  }
}
