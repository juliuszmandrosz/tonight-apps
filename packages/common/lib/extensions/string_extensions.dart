extension StringX on String {
  capitalize() {
    return '${this[0].toUpperCase()}${substring(1).toLowerCase()}';
  }
}

extension NullableStringX on String? {
  isNullOrEmpty() {
    return this == null || this!.isEmpty;
  }

  isNotNullOrEmpty() {
    return !isNullOrEmpty();
  }
}
