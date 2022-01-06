import 'package:freezed_annotation/freezed_annotation.dart';

part 'club_filter.freezed.dart';

@freezed
abstract class ClubFilter implements _$ClubFilter {
  const ClubFilter._();

  const factory ClubFilter({required String phrase})=_ClubFilter;
}