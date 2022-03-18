import 'package:equatable/equatable.dart';
import 'package:raver_common/raver_common.dart';
import 'package:uuid/uuid.dart';

class Event extends Equatable {
  final String id;
  final String clubId;
  final String eventName;
  final String clubName;
  final DateTime eventStartDateTime;
  final DateTime eventEndDateTime;
  final int attending;
  final int minAge;
  final int price;
  final String allowedOutfit;
  final List<String> musicalGenres;
  final String? artistName;
  final String? description;
  final List<String> photos;
  final Map<String, double> location;
  final String cityId;
  final Map<String, String> urlLinks;
  final bool isConcert;

  Event({
    String? id,
    required this.clubId,
    required this.eventName,
    required this.clubName,
    required this.eventStartDateTime,
    required this.eventEndDateTime,
    required this.attending,
    required this.minAge,
    required this.price,
    required this.allowedOutfit,
    required this.musicalGenres,
    required this.location,
    required this.cityId,
    this.description,
    this.artistName,
    this.photos = const [],
    this.urlLinks = const {},
    this.isConcert = false,
  }) : id = id ?? const Uuid().v1();

  double getLatitude() {
    return location[latitude]!;
  }

  double getLongitude() {
    return location[longitude]!;
  }

  @override
  List<Object?> get props => [
        id,
        clubId,
        eventName,
        clubName,
        eventStartDateTime,
        eventEndDateTime,
        attending,
        minAge,
        price,
        allowedOutfit,
        musicalGenres,
        location,
        cityId,
        photos,
        urlLinks,
        description,
        artistName,
        isConcert,
      ];
}
