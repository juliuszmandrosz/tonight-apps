import 'package:equatable/equatable.dart';
import 'package:uuid/uuid.dart';

class Reward extends Equatable {
  final String id;
  final String description;
  final int requiredEntries;

  Reward({
    String? id,
    required this.description,
    required this.requiredEntries,
  }) : id = id ?? const Uuid().v1();

  @override
  List<Object?> get props => [
        id,
        description,
        requiredEntries,
      ];

  Reward copyWith({
    String? description,
    int? requiredEntries,
  }) {
    return Reward(
      description: description ?? this.description,
      requiredEntries: requiredEntries ?? this.requiredEntries,
    );
  }
}
