import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:raver/domain/clubs/club_overview/value_objects/address_string.dart';
import 'package:raver/domain/clubs/club_overview/value_objects/club_image.dart';
import 'package:raver/domain/clubs/club_overview/value_objects/club_name.dart';
import 'package:raver/domain/clubs/club_overview/value_objects/review_avg.dart';
import 'package:raver/domain/clubs/club_overview/value_objects/review_count.dart';

part 'club_overview_entity.freezed.dart';

@freezed
abstract class ClubOverview implements _$ClubOverview {
  const ClubOverview._();

  const factory ClubOverview({
    required ClubName clubName,
    required ClubImageUrl clubImageUrl,
    required ReviewCount reviewCount,
    required ReviewAvg reviewAvg,
    required AddressString addressString
  }) = _ClubOverview;
}
