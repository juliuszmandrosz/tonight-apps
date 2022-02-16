import 'package:freezed_annotation/freezed_annotation.dart';

part 'club_failure.freezed.dart';

@freezed
abstract class ClubFailure with _$ClubFailure {
  const factory ClubFailure.unexpected() = _ClubFailure;
}
