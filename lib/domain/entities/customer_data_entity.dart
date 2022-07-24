import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

class CustomerData extends Equatable {
  final String? paymentMethod;
  final String? name;
  final String? vatNumber;

  const CustomerData({
    this.paymentMethod,
    this.name,
    this.vatNumber,
  });

  @override
  List<Object?> get props => [
        paymentMethod,
        name,
        vatNumber,
      ];

  CustomerData copyWith({
    Option<String>? paymentMethod,
    Option<String>? name,
    Option<String>? vatNumber,
  }) {
    return CustomerData(
      paymentMethod: paymentMethod != null
          ? paymentMethod.fold(
              () => null,
              (method) => method,
            )
          : this.paymentMethod,
      name: name != null
          ? name.fold(
              () => null,
              (name) => name,
            )
          : this.name,
      vatNumber: vatNumber != null
          ? vatNumber.fold(
              () => null,
              (vat) => vat,
            )
          : this.vatNumber,
    );
  }
}
