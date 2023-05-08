extension StringListX on List<String> {
  void sortAscending() {
    sort((a, b) => a.toLowerCase().compareTo(b.toLowerCase()));
  }

  void sortDescending() {
    sort((a, b) => b.toLowerCase().compareTo(a.toLowerCase()));
  }
}
