import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:uuid/uuid.dart';

class WallPhoto extends Equatable {
  final String id;
  final String photoUrl;
  final String venueId;
  final String venueName;
  final LatLng venueLocation;
  final String userId;
  final String username;
  final String eventId;
  final String eventName;
  final DateTime eventEndDateTime;
  final DateTime createdAt;
  final String? userProfilePhotoUrl;
  final LatLng? photoLocation;
  final String? timeTaskId;
  final bool isVerified;
  final bool isRewardAcquired;

  WallPhoto({
    String? id,
    DateTime? createdAt,
    required this.photoUrl,
    required this.venueId,
    required this.venueName,
    required this.venueLocation,
    required this.eventId,
    required this.eventName,
    required this.userId,
    required this.username,
    required this.eventEndDateTime,
    this.userProfilePhotoUrl,
    this.timeTaskId,
    this.photoLocation,
    this.isVerified = false,
    this.isRewardAcquired = false,
  })  : id = id ?? const Uuid().v1(),
        createdAt = createdAt ?? DateTime.now();

  @override
  List<Object?> get props => [
        id,
        photoUrl,
        venueId,
        venueName,
        venueLocation,
        eventId,
        eventName,
        userId,
        username,
        eventEndDateTime,
        createdAt,
        userProfilePhotoUrl,
        timeTaskId,
        photoLocation,
        isVerified,
        isRewardAcquired,
      ];

  WallPhoto copyWith({
    String? photoUrl,
    String? venueId,
    String? venueName,
    LatLng? venueLocation,
    String? userId,
    String? username,
    DateTime? eventEndDateTime,
    Option<String>? userProfilePhotoUrl,
    Option<LatLng>? photoLocation,
    Option<String>? timeTaskId,
    bool? isVerified,
    String? eventId,
    String? eventName,
    bool? isRewardAcquired,
  }) {
    return WallPhoto(
      id: id,
      createdAt: createdAt,
      photoUrl: photoUrl ?? this.photoUrl,
      venueId: venueId ?? this.venueId,
      venueName: venueName ?? this.venueName,
      venueLocation: venueLocation ?? this.venueLocation,
      userId: userId ?? this.userId,
      username: username ?? this.username,
      eventEndDateTime: eventEndDateTime ?? this.eventEndDateTime,
      timeTaskId: timeTaskId != null
          ? timeTaskId.fold(
              () => null,
              (id) => id,
            )
          : this.timeTaskId,
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
      eventId: eventId ?? this.eventId,
      eventName: eventName ?? this.eventName,
      isRewardAcquired: isRewardAcquired ?? this.isRewardAcquired,
    );
  }
}
