import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:raver/domain/clubs/value_objects/abous_us.dart';
import 'package:raver/domain/clubs/value_objects/club_image.dart';
import 'package:raver/domain/clubs/value_objects/club_name.dart';
import 'package:raver/domain/clubs/value_objects/phone_number.dart';

part 'club_entity.freezed.dart';

@freezed
abstract class Club implements _$Club {
  const Club._();

  const factory Club({
    required ClubName clubName,
   // required ClubImage clubImage,
    required AboutUs aboutUs,
    required PhoneNumber phoneNumber,
  }) = _Club;

}
