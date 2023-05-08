extension ListX<T> on List<T> {
  void addIfNotExists(T item) {
    if (!contains(item)) {
      add(item);
    }
  }

  T? tryGet(int index) => index < 0 || index >= length ? null : this[index];

  void sortByStringFieldAscending(String Function(T) getField) {
    sort((a, b) {
      final fieldA = getField(a).toLowerCase();
      final fieldB = getField(b).toLowerCase();
      return fieldA.compareTo(fieldB);
    });
  }

  void sortByStringFieldDescending(String Function(T) getField) {
    sort((a, b) {
      final fieldA = getField(a).toLowerCase();
      final fieldB = getField(b).toLowerCase();
      return fieldB.compareTo(fieldA);
    });
  }

  void sortByNumFieldAscending(num Function(T) getField) {
    sort((a, b) {
      final fieldA = getField(a);
      final fieldB = getField(b);
      return fieldA.compareTo(fieldB);
    });
  }

  void sortByNumFieldDescending(num Function(T) getField) {
    sort((a, b) {
      final fieldA = getField(a);
      final fieldB = getField(b);
      return fieldB.compareTo(fieldA);
    });
  }
}
