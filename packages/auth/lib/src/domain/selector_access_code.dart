import 'package:equatable/equatable.dart';

class SelectorAccessCode extends Equatable {
  final String code;

  const SelectorAccessCode({
    required this.code,
  });

  @override
  List<Object?> get props => [code];
}
