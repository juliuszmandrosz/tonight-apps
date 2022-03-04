import 'package:freezed_annotation/freezed_annotation.dart';

part 'event_filter.freezed.dart';

@freezed
class EventFilter with _$EventFilter {
  const EventFilter._();

  factory EventFilter({
    required String phrase,
  }) = _EventFilter;

  factory EventFilter.empty() = _EventFilterEmpty;
}
