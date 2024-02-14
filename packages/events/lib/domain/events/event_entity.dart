import 'package:common/common.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:uuid/uuid.dart';

class Event extends Equatable {
  final String id;
  final String clubId;
  final String eventName;
  final String clubName;
  final DateTime eventStartDateTime;
  final DateTime eventEndDateTime;
  final DateTime originalStartDateTime;
  final int minAge;
  final int price;
  final String entryFee;
  final String priceList;
  final String currency;
  final String eventPhotoUrl;
  final String allowedOutfit;
  final List<String> musicalGenres;
  final String? artistName;
  final String? description;
  final Map<String, double> location;
  final String cityId;
  final Map<String, String> urlLinks;
  final bool isConcert;
  final int attending;
  final bool isCanceled;
  final bool isBeingPostponed;
  final bool areTicketsAvailableInApp;
  final bool isTonightEvent;
  final String? clubPhotoUrl;
  final String? locationString;
  final String? externalTicketsUrl;

  Event({
    String? id,
    required this.clubId,
    required this.eventName,
    required this.clubName,
    required this.eventStartDateTime,
    required this.eventEndDateTime,
    required this.originalStartDateTime,
    required this.minAge,
    required this.price,
    required this.entryFee,
    required this.priceList,
    required this.currency,
    required this.eventPhotoUrl,
    required this.allowedOutfit,
    required this.musicalGenres,
    required this.location,
    required this.cityId,
    this.description,
    this.artistName,
    this.clubPhotoUrl,
    this.locationString,
    this.urlLinks = const {},
    this.isConcert = false,
    this.attending = 0,
    this.isCanceled = false,
    this.isBeingPostponed = false,
    this.areTicketsAvailableInApp = false,
    this.isTonightEvent = false,
    this.externalTicketsUrl,
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
        originalStartDateTime,
        minAge,
        price,
        entryFee,
        priceList,
        currency,
        allowedOutfit,
        musicalGenres,
        location,
        cityId,
        eventPhotoUrl,
        urlLinks,
        description,
        artistName,
        isConcert,
        attending,
        isCanceled,
        isBeingPostponed,
        clubPhotoUrl,
        locationString,
        areTicketsAvailableInApp,
        externalTicketsUrl,
        isTonightEvent,
      ];

  Event copyWith({
    String? clubId,
    String? eventName,
    String? clubName,
    DateTime? eventStartDateTime,
    DateTime? eventEndDateTime,
    DateTime? originalStartDateTime,
    int? minAge,
    int? price,
    String? entryFee,
    String? priceList,
    String? currency,
    String? eventPhotoUrl,
    String? allowedOutfit,
    List<String>? musicalGenres,
    Map<String, double>? location,
    String? cityId,
    Option<String>? description,
    int? attending,
    Map<String, String>? urlLinks,
    bool? isConcert,
    Option<String>? artistName,
    bool? isCanceled,
    bool? isBeingPostponed,
    Option<String>? clubPhotoUrl,
    Option<String>? locationString,
    bool? areTicketsAvailableInApp,
    bool? isTonightEvent,
    Option<String>? externalTicketsUrl,
  }) {
    return Event(
      id: id,
      clubId: clubId ?? this.clubId,
      eventName: eventName ?? this.eventName,
      clubName: clubName ?? this.clubName,
      eventStartDateTime: eventStartDateTime ?? this.eventStartDateTime,
      eventEndDateTime: eventEndDateTime ?? this.eventEndDateTime,
      originalStartDateTime:
          originalStartDateTime ?? this.originalStartDateTime,
      minAge: minAge ?? this.minAge,
      price: price ?? this.price,
      entryFee: entryFee ?? this.entryFee,
      priceList: priceList ?? this.priceList,
      currency: currency ?? this.currency,
      eventPhotoUrl: eventPhotoUrl ?? this.eventPhotoUrl,
      allowedOutfit: allowedOutfit ?? this.allowedOutfit,
      musicalGenres: musicalGenres ?? this.musicalGenres,
      location: location ?? this.location,
      cityId: cityId ?? this.cityId,
      attending: attending ?? this.attending,
      urlLinks: urlLinks ?? this.urlLinks,
      isConcert: isConcert ?? this.isConcert,
      isCanceled: isCanceled ?? this.isCanceled,
      isBeingPostponed: isBeingPostponed ?? this.isBeingPostponed,
      description: description != null
          ? description.fold(
              () => null,
              (desc) => desc,
            )
          : this.description,
      artistName: artistName != null
          ? artistName.fold(
              () => null,
              (name) => name,
            )
          : this.artistName,
      clubPhotoUrl: clubPhotoUrl != null
          ? clubPhotoUrl.fold(
              () => null,
              (url) => url,
            )
          : this.clubPhotoUrl,
      locationString: locationString != null
          ? locationString.fold(
              () => null,
              (location) => location,
            )
          : this.locationString,
      areTicketsAvailableInApp:
          areTicketsAvailableInApp ?? this.areTicketsAvailableInApp,
      isTonightEvent: isTonightEvent ?? this.isTonightEvent,
      externalTicketsUrl: externalTicketsUrl != null
          ? externalTicketsUrl.fold(
              () => null,
              (url) => url,
            )
          : this.externalTicketsUrl,
    );
  }
}
