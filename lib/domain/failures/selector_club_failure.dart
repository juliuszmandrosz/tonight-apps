import 'package:freezed_annotation/freezed_annotation.dart';

part 'selector_club_failure.freezed.dart';

@freezed
abstract class SelectorClubFailure with _$SelectorClubFailure {
  const factory SelectorClubFailure.unexpected() = _SelectorClubFailure;

  const factory SelectorClubFailure.invalidAccessCode() = _InvalidAccessCode;
}
