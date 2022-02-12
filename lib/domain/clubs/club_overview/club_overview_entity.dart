import 'package:freezed_annotation/freezed_annotation.dart';

part 'club_overview_entity.freezed.dart';

@freezed
abstract class ClubOverview implements _$ClubOverview {
  const ClubOverview._();

  const factory ClubOverview(
      {required String clubName,
      required String clubImageUrl,
      required int reviewCount,
      required double reviewAvg,
      required String addressString}) = _ClubOverview;
}
