import 'package:equatable/equatable.dart';

class UserProfile extends Equatable {
  final String id;
  final String username;
  final String email;
  final List<String> favoriteClubIds;
  final List<String> favoriteEventIds;
  final Map<String, int> attendance;
  final int ticketCount;

  const UserProfile({
    required this.id,
    required this.username,
    required this.email,
    required this.favoriteClubIds,
    required this.favoriteEventIds,
    required this.attendance,
    required this.ticketCount,
  });

  @override
  List<Object?> get props => [
        id,
        username,
        email,
        favoriteClubIds,
        favoriteEventIds,
        attendance,
        ticketCount,
      ];
}
