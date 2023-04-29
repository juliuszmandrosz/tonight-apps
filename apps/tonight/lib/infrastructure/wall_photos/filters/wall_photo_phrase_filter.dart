class WallPhotoPhraseFilter {
  final String phrase;

  WallPhotoPhraseFilter({required this.phrase});

  factory WallPhotoPhraseFilter.empty() => WallPhotoPhraseFilter(phrase: '');
}
