import 'package:equatable/equatable.dart';
import 'package:uuid/uuid.dart';

class PartnerDiscount extends Equatable {
  final String id;
  final int requiredExclusiveEventsSales;
  final int percentageOff;

  PartnerDiscount({
    String? id,
    required this.requiredExclusiveEventsSales,
    required this.percentageOff,
  }) : id = id ?? const Uuid().v1();

  @override
  List<Object?> get props => [
        id,
        requiredExclusiveEventsSales,
        percentageOff,
      ];

  PartnerDiscount copyWith({
    int? requiredExclusiveEventsSales,
    int? percentageOff,
  }) {
    return PartnerDiscount(
      id: id,
      requiredExclusiveEventsSales:
          requiredExclusiveEventsSales ?? this.requiredExclusiveEventsSales,
      percentageOff: percentageOff ?? this.percentageOff,
    );
  }
}
