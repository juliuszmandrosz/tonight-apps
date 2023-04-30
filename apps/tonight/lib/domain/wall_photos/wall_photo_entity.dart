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
  final bool isVerified;

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
    this.photoLocation,
    this.isVerified = false,
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
        photoLocation,
        isVerified,
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
    bool? isVerified,
    String? eventId,
    String? eventName,
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
    );
  }
}
