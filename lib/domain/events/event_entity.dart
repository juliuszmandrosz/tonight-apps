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
  final int minAge;
  final int price;
  final String currency;
  final String allowedOutfit;
  final List<String> musicalGenres;
  final String? artistName;
  final String? description;
  final List<String> photos;
  final Map<String, double> location;
  final String cityId;
  final Map<String, String> urlLinks;
  final bool isConcert;
  final int attending;

  Event({
    String? id,
    required this.clubId,
    required this.eventName,
    required this.clubName,
    required this.eventStartDateTime,
    required this.eventEndDateTime,
    required this.minAge,
    required this.price,
    required this.currency,
    required this.allowedOutfit,
    required this.musicalGenres,
    required this.location,
    required this.cityId,
    this.description,
    this.artistName,
    this.photos = const [],
    this.urlLinks = const {},
    this.isConcert = false,
    this.attending = 0,
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
        minAge,
        price,
        currency,
        allowedOutfit,
        musicalGenres,
        location,
        cityId,
        photos,
        urlLinks,
        description,
        artistName,
        isConcert,
        attending,
      ];

  Event copyWith({
    String? clubId,
    String? eventName,
    String? clubName,
    DateTime? eventStartDateTime,
    DateTime? eventEndDateTime,
    int? minAge,
    int? price,
    String? currency,
    String? allowedOutfit,
    List<String>? musicalGenres,
    Map<String, double>? location,
    String? cityId,
    String? description,
    int? attending,
    Map<String, String>? urlLinks,
    bool? isConcert,
    String? artistName,
    List<String>? photos,
  }) {
    return Event(
      id: id,
      clubId: clubId ?? this.clubId,
      eventName: eventName ?? this.eventName,
      clubName: clubName ?? this.clubName,
      eventStartDateTime: eventStartDateTime ?? this.eventStartDateTime,
      eventEndDateTime: eventEndDateTime ?? this.eventEndDateTime,
      minAge: minAge ?? this.minAge,
      price: price ?? this.price,
      currency: currency ?? this.currency,
      allowedOutfit: allowedOutfit ?? this.allowedOutfit,
      musicalGenres: musicalGenres ?? this.musicalGenres,
      location: location ?? this.location,
      cityId: cityId ?? this.cityId,
      description: description ?? this.description,
      attending: attending ?? this.attending,
      urlLinks: urlLinks ?? this.urlLinks,
      isConcert: isConcert ?? this.isConcert,
      artistName: artistName ?? this.artistName,
      photos: photos ?? this.photos,
    );
  }
}
