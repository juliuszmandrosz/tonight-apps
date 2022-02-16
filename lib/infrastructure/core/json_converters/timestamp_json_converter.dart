import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

class TimestampJsonConverter implements JsonConverter<DateTime, Timestamp> {
  const TimestampJsonConverter();

  @override
  DateTime fromJson(Timestamp json) {
    return json.toDate();
  }

  @override
  Timestamp toJson(DateTime datetime) {
    return Timestamp.fromDate(datetime);
  }
}
