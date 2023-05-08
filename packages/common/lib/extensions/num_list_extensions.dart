extension NumListX<T extends num> on List<T> {
  void sortAscending() {
    sort((a, b) => a.compareTo(b));
  }

  void sortDescending() {
    sort((a, b) => b.compareTo(a));
  }
}
