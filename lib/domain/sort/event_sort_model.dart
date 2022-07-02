import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:raver_events/domain/domain.dart';

part 'event_sort_model.freezed.dart';

@freezed
class EventSortModel with _$EventSortModel {
  const EventSortModel._();

  factory EventSortModel({
    required String fieldName,
    required SortDirection direction,
  }) = _EventSortModel;

  factory EventSortModel.empty() => EventSortModel(
        fieldName: eventStartDateTime,
        direction: SortDirection.asc,
      );
}
