extension ListX<T> on List<T> {
  void addIfNotExists(T item) {
    if (!contains(item)) {
      add(item);
    }
  }

  T? tryGet(int index) => index < 0 || index >= length ? null : this[index];
}
