import 'package:equatable/equatable.dart';

class PhraseFilter extends Equatable {
  final String phrase;

  const PhraseFilter({
    required this.phrase,
  });

  factory PhraseFilter.empty() => const PhraseFilter(phrase: '');

  PhraseFilter copyWith({
    String? phrase,
  }) {
    return PhraseFilter(phrase: phrase ?? this.phrase);
  }

  @override
  List<Object?> get props => [phrase];
}
