enum VoucherType {
  tonight,
  timeTask,
}

extension VoucherTypeX on VoucherType {
  bool get isTonight => this == VoucherType.tonight;

  bool get isTimeTask => this == VoucherType.timeTask;
}
