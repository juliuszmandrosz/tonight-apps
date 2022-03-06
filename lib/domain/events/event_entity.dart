import 'package:equatable/equatable.dart';
import 'package:uuid/uuid.dart';

class Event extends Equatable {
  final String id;
  final String clubId;
  final String eventName;
  final String clubName;
  final String eventDateTime;
  final int attending;
  final int minAge;
  final int price;
  final List<String> allowedOutfits;
  final List<String> musicalGenres;
  final String? artistName;
  final String? description;
  final List<String> photos;
  final Map<String, String> location;
  final Map<String, String> urlLinks;
  final bool isConcert;

  Event({
    String? id,
    required this.clubId,
    required this.eventName,
    required this.clubName,
    required this.eventDateTime,
    required this.attending,
    required this.minAge,
    required this.price,
    required this.allowedOutfits,
    required this.musicalGenres,
    required this.location,
    this.description,
    this.artistName,
    this.photos = const [],
    this.urlLinks = const {},
    this.isConcert = false,
  }) : id = id ?? const Uuid().v1();

  @override
  List<Object?> get props => [
        id,
        clubId,
        eventName,
        clubName,
        eventDateTime,
        attending,
        minAge,
        price,
        allowedOutfits,
        musicalGenres,
        location,
        photos,
        urlLinks,
        description,
        artistName,
        isConcert,
      ];
}
