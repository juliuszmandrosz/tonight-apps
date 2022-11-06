class PhraseFilter {
  final String phrase;
  final bool isQueryByCityAvailable;

  PhraseFilter({
    required this.phrase,
    this.isQueryByCityAvailable = true,
  });

  PhraseFilter copyWith({
    String? phrase,
    bool? isQueryByCityAvailable,
  }) {
    return PhraseFilter(
      phrase: phrase ?? this.phrase,
      isQueryByCityAvailable:
          isQueryByCityAvailable ?? this.isQueryByCityAvailable,
    );
  }
}
