import 'package:equatable/equatable.dart';

class EventFees extends Equatable {
  final double normal;
  final double exclusive;

  const EventFees({
    required this.normal,
    required this.exclusive,
  });

  @override
  List<Object?> get props => [normal, exclusive];
}
