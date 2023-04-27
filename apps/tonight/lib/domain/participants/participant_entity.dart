import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

class Participant extends Equatable {
  final String userId;
  final String username;
  final String eventId;
  final String? profilePictureUrl;

  const Participant({
    required this.userId,
    required this.eventId,
    required this.username,
    required this.profilePictureUrl,
  });

  @override
  List<Object?> get props => [
        userId,
        eventId,
        username,
        profilePictureUrl,
      ];

  Participant copyWith({
    String? userId,
    String? eventId,
    String? username,
    Option<String>? profilePictureUrl,
  }) {
    return Participant(
      userId: userId ?? this.userId,
      eventId: eventId ?? this.eventId,
      username: username ?? this.username,
      profilePictureUrl: profilePictureUrl != null
          ? profilePictureUrl.fold(
              () => null,
              (url) => url,
            )
          : this.profilePictureUrl,
    );
  }
}
