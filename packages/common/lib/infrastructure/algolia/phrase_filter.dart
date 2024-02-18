class PhraseFilter {
  final String phrase;

  PhraseFilter({
    required this.phrase,
  });

  factory PhraseFilter.empty() => PhraseFilter(phrase: '');

  PhraseFilter copyWith({
    String? phrase,
  }) {
    return PhraseFilter(phrase: phrase ?? this.phrase);
  }
}
