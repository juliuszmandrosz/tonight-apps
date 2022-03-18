import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:raver_events/domain/domain.dart';

part 'sort_model.freezed.dart';

@freezed
class SortModel with _$SortModel {
  const SortModel._();

  factory SortModel({
    required String fieldName,
    required SortDirection direction,
  }) = _SortModel;

  factory SortModel.empty() => SortModel(
        fieldName: '',
        direction: SortDirection.asc,
      );
}
