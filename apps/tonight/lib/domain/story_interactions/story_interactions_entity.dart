import 'package:equatable/equatable.dart';
import 'package:uuid/uuid.dart';

class StoryInteractions extends Equatable {
  final String id;
  final String userId;
  final String storyId;
  final int periodNumber;
  final bool liked;
  final bool seen;
  final DateTime? seenAt;

  StoryInteractions({
    String? id,
    required this.userId,
    required this.storyId,
    required this.periodNumber,
    required this.liked,
    required this.seen,
    this.seenAt,
  }) : id = id ?? const Uuid().v1();

  factory StoryInteractions.empty() => StoryInteractions(
        userId: '',
        storyId: '',
        periodNumber: 0,
        liked: false,
        seen: false,
        seenAt: null,
      );

  @override
  List<Object?> get props => [
        id,
        userId,
        storyId,
        periodNumber,
        liked,
        seen,
        seenAt,
      ];

  StoryInteractions copyWith({
    String? userId,
    String? storyId,
    int? periodNumber,
    bool? liked,
    bool? seen,
    DateTime? seenAt,
  }) {
    return StoryInteractions(
      id: id,
      userId: userId ?? this.userId,
      storyId: storyId ?? this.storyId,
      periodNumber: periodNumber ?? this.periodNumber,
      liked: liked ?? this.liked,
      seen: seen ?? this.seen,
      seenAt: seenAt ?? this.seenAt,
    );
  }
}
