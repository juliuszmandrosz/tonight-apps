import 'package:equatable/equatable.dart';
import 'package:uuid/uuid.dart';

class Selector extends Equatable {
  final String id;
  final String email;

  Selector({
    String? id,
    required this.email,
  }) : id = id ?? const Uuid().v1();

  @override
  List<Object?> get props => [id, email];
}
