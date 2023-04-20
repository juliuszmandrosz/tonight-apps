

extension ListX<T> on List<T> {
  void addIfNotExists(T item) {
    if (!contains(item)) {
      add(item);
    }
  }
}
