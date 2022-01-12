class FromReviewAvg {
  static const String FIRESTORE_FIELD_NAME = 'reviewAvg';

  final double fromReviewAvg;

  const FromReviewAvg._(this.fromReviewAvg);

  factory FromReviewAvg.all() {
    return const FromReviewAvg._(1.0);
  }

  factory FromReviewAvg.from_3() {
    return const FromReviewAvg._(3.0);
  }

  factory FromReviewAvg.from_4() {
    return const FromReviewAvg._(4.0);
  }

  factory FromReviewAvg.from_5() {
    return const FromReviewAvg._(5.0);
  }
}
