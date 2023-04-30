import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:uuid/uuid.dart';

class WallPhoto extends Equatable {
  final String id;
  final String photoUrl;
  final String clubId;
  final String clubName;
  final LatLng clubLocation;
  final String eventId;
  final String eventName;
  final String userId;
  final String username;
  final DateTime eventEndDateTime;
  final DateTime createdAt;
  final String? userProfilePhotoUrl;
  final LatLng? photoLocation;
  final bool isVerified;
  final bool isFromClub;

  WallPhoto({
    String? id,
    DateTime? createdAt,
    required this.photoUrl,
    required this.clubId,
    required this.clubName,
    required this.clubLocation,
    required this.eventId,
    required this.eventName,
    required this.userId,
    required this.username,
    required this.eventEndDateTime,
    this.userProfilePhotoUrl,
    this.photoLocation,
    this.isVerified = false,
    this.isFromClub = false,
  })  : id = id ?? const Uuid().v1(),
        createdAt = createdAt ?? DateTime.now();

  @override
  List<Object?> get props => [
        id,
        photoUrl,
        clubId,
        clubName,
        clubLocation,
        eventId,
        eventName,
        userId,
        username,
        eventEndDateTime,
        createdAt,
        userProfilePhotoUrl,
        photoLocation,
        isVerified,
        isFromClub,
      ];

  WallPhoto copyWith({
    String? photoUrl,
    String? clubId,
    String? clubName,
    LatLng? clubLocation,
    String? eventId,
    String? eventName,
    String? userId,
    String? username,
    DateTime? eventEndDateTime,
    Option<String>? userProfilePhotoUrl,
    Option<LatLng>? photoLocation,
    bool? isVerified,
    bool? isFromClub,
  }) {
    return WallPhoto(
      id: id,
      createdAt: createdAt,
      photoUrl: photoUrl ?? this.photoUrl,
      clubId: clubId ?? this.clubId,
      clubName: clubName ?? this.clubName,
      clubLocation: clubLocation ?? this.clubLocation,
      eventId: eventId ?? this.eventId,
      eventName: eventName ?? this.eventName,
      userId: userId ?? this.userId,
      username: username ?? this.username,
      eventEndDateTime: eventEndDateTime ?? this.eventEndDateTime,
      userProfilePhotoUrl: userProfilePhotoUrl != null
          ? userProfilePhotoUrl.fold(
              () => null,
              (url) => url,
            )
          : this.userProfilePhotoUrl,
      photoLocation: photoLocation != null
          ? photoLocation.fold(
              () => null,
              (location) => location,
            )
          : this.photoLocation,
      isVerified: isVerified ?? this.isVerified,
      isFromClub: isFromClub ?? this.isFromClub,
    );
  }
}
