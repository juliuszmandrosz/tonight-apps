import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:raver/domain/clubs/value_objects/abous_us.dart';
import 'package:raver/domain/clubs/value_objects/club_image.dart';
import 'package:raver/domain/clubs/value_objects/club_name.dart';
import 'package:raver/domain/clubs/value_objects/phone_number.dart';

import 'package:raver/domain/clubs/club_entity.dart';

part 'club_dto.freezed.dart';
part 'club_dto.g.dart';

@freezed
abstract class ClubDto implements _$ClubDto {
  const ClubDto._();

  const factory ClubDto({
    required String clubName,
    //TODO: Need to research how to neatly store images on cloud storage
    //  required File? clubImage,
    required String aboutUs,
    required String phoneNumber,
  }) = _ClubDto;

  factory ClubDto.fromDomain(Club club) {
    return ClubDto(
      clubName: club.clubName.getOrCrash(),
      // clubImage: club.clubImage.getOrCrash(),
      aboutUs: club.aboutUs.getOrCrash(),
      phoneNumber: club.phoneNumber.getOrCrash(),
    );
  }

  factory ClubDto.fromJson(Map<String, dynamic> json) =>
      _$ClubDtoFromJson(json);

  factory ClubDto.fromFirebase(DocumentSnapshot documentSnapshot) {
    return ClubDto.fromJson(documentSnapshot.data() as Map<String, dynamic>);
  }

  Club toDomain() {
    return Club(
      clubName: ClubName(clubName),
     // clubImage: ClubImage(clubImage),
      aboutUs: AboutUs(aboutUs),
      phoneNumber: PhoneNumber(phoneNumber),
    );
  }
}
