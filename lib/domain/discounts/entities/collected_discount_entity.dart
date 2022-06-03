import 'package:equatable/equatable.dart';
import 'package:uuid/uuid.dart';

class CollectedDiscount extends Equatable {
  final String id;
  final int percentageOff;
  final int quantity;

  CollectedDiscount({
    String? id,
    required this.percentageOff,
    required this.quantity,
  }) : id = id ?? const Uuid().v1();

  @override
  List<Object?> get props => [
        id,
        percentageOff,
        quantity,
      ];

  CollectedDiscount copyWith({
    int? percentageOff,
    int? quantity,
  }) {
    return CollectedDiscount(
      id: id,
      percentageOff: percentageOff ?? this.percentageOff,
      quantity: quantity ?? this.quantity,
    );
  }
}
