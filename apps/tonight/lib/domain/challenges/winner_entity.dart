import 'package:equatable/equatable.dart';

class Winner extends Equatable {
  final String id;
  final String username;
  final String profilePictureUrl;
  final int place;
  final int reward;
  final int likesCount;

  const Winner({
    required this.id,
    required this.username,
    required this.profilePictureUrl,
    required this.place,
    required this.reward,
    this.likesCount = 0,
  });

  @override
  List<Object?> get props => [
        id,
        username,
        profilePictureUrl,
        place,
        reward,
        likesCount,
      ];

  Winner copyWith({
    String? username,
    String? profilePictureUrl,
    int? place,
    int? reward,
    int? likesCount,
  }) {
    return Winner(
      id: id,
      username: username ?? this.username,
      profilePictureUrl: profilePictureUrl ?? this.profilePictureUrl,
      place: place ?? this.place,
      reward: reward ?? this.reward,
      likesCount: likesCount ?? this.likesCount,
    );
  }
}
