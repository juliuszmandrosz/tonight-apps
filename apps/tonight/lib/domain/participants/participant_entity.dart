import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

class Participant extends Equatable {
  final String userId;
  final String username;
  final String? profilePictureUrl;

  const Participant({
    required this.userId,
    required this.username,
    this.profilePictureUrl,
  });

  @override
  List<Object?> get props => [
        userId,
        username,
        profilePictureUrl,
      ];

  Participant copyWith({
    String? userId,
    String? username,
    Option<String>? profilePictureUrl,
  }) {
    return Participant(
      userId: userId ?? this.userId,
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
