import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:json_annotation/json_annotation.dart';

class MapFirebaseTimestampJsonConverter
    implements JsonConverter<Timestamp, Map<String, dynamic>> {
  const MapFirebaseTimestampJsonConverter();

  @override
  Timestamp fromJson(Map<String, dynamic> json) {
    if (json.containsKey('_seconds') && json.containsKey('_nanoseconds')) {
      return Timestamp(
        json['_seconds'] as int,
        json['_nanoseconds'] as int,
      );
    }
    throw Exception('Invalid Timestamp format');
  }

  @override
  Map<String, dynamic> toJson(Timestamp timestamp) {
    return {
      '_seconds': timestamp.millisecondsSinceEpoch ~/ 1000,
      '_nanoseconds': timestamp.millisecondsSinceEpoch % 1000,
    };
  }
}
