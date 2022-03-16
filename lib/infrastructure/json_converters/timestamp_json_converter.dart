import 'package:freezed_annotation/freezed_annotation.dart';

class TimestampJsonConverter implements JsonConverter<DateTime, int> {
  const TimestampJsonConverter();

  @override
  DateTime fromJson(int timestamp) {
    return DateTime.fromMillisecondsSinceEpoch(timestamp);
  }

  @override
  int toJson(DateTime dateTime) {
    return dateTime.millisecondsSinceEpoch;
  }
}
