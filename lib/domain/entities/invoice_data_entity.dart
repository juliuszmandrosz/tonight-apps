import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

class InvoiceData extends Equatable {
  final String? name;
  final String? vatNumber;

  const InvoiceData({
    this.name,
    this.vatNumber,
  });

  @override
  List<Object?> get props => [name, vatNumber];

  InvoiceData copyWith({
    Option<String>? name,
    Option<String>? vatNumber,
  }) {
    return InvoiceData(
      name: name != null
          ? name.fold(
              () => null,
              (name) => name,
            )
          : this.vatNumber,
      vatNumber: vatNumber != null
          ? vatNumber.fold(
              () => null,
              (vat) => vat,
            )
          : this.vatNumber,
    );
  }
}
