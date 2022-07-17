import 'package:freezed_annotation/freezed_annotation.dart';

part 'places_failure.freezed.dart';

@freezed
class PlacesFailure with _$PlacesFailure {
  const factory PlacesFailure.unexpected() = _Unexpected;
}
