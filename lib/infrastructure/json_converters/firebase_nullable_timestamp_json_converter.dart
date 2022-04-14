import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

class FirebaseNullableTimestampJsonConverter
    implements JsonConverter<DateTime?, Timestamp?> {
  const FirebaseNullableTimestampJsonConverter();

  @override
  DateTime? fromJson(Timestamp? timestamp) {
    return timestamp?.toDate();
  }

  @override
  Timestamp? toJson(DateTime? datetime) {
    return datetime != null ? Timestamp.fromDate(datetime) : null;
  }
}
