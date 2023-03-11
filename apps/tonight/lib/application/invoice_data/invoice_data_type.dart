enum InvoiceDataType { individual, company }

extension InvoiceDataTypeX on InvoiceDataType {
  bool get isCompany => this == InvoiceDataType.company;

  bool get isIndividual => this == InvoiceDataType.individual;
}
