import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

class FirebaseTimestampListJsonConverter
    implements JsonConverter<List<DateTime>, List<Timestamp>> {
  const FirebaseTimestampListJsonConverter();

  @override
  List<DateTime> fromJson(List<Timestamp> timestamps) {
    return timestamps.map((t) => t.toDate()).toList();
  }

  @override
  List<Timestamp> toJson(List<DateTime> dateTimes) {
    return dateTimes.map((d) => Timestamp.fromDate(d)).toList();
  }
}
