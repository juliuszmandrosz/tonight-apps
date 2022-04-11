// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'event_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

EventDto _$EventDtoFromJson(Map<String, dynamic> json) {
  return _EventDto.fromJson(json);
}

/// @nodoc
class _$EventDtoTearOff {
  const _$EventDtoTearOff();

  _EventDto call(
      {@JsonKey(ignore: true) String? id,
      required String clubId,
      required String eventName,
      required String clubName,
      @TimestampJsonConverter() required DateTime eventStartDateTime,
      @TimestampJsonConverter() required DateTime eventEndDateTime,
      required int minAge,
      required int price,
      required String currency,
      required String allowedOutfit,
      required List<String> musicalGenres,
      String? description,
      String? artistName,
      @JsonKey(name: '_geoloc') required Map<String, double> location,
      required String cityId,
      List<String> photos = const [],
      Map<String, String> urlLinks = const {},
      bool isConcert = false,
      int attending = 0}) {
    return _EventDto(
      id: id,
      clubId: clubId,
      eventName: eventName,
      clubName: clubName,
      eventStartDateTime: eventStartDateTime,
      eventEndDateTime: eventEndDateTime,
      minAge: minAge,
      price: price,
      currency: currency,
      allowedOutfit: allowedOutfit,
      musicalGenres: musicalGenres,
      description: description,
      artistName: artistName,
      location: location,
      cityId: cityId,
      photos: photos,
      urlLinks: urlLinks,
      isConcert: isConcert,
      attending: attending,
    );
  }

  EventDto fromJson(Map<String, Object?> json) {
    return EventDto.fromJson(json);
  }
}

/// @nodoc
const $EventDto = _$EventDtoTearOff();

/// @nodoc
mixin _$EventDto {
  @JsonKey(ignore: true)
  String? get id => throw _privateConstructorUsedError;
  String get clubId => throw _privateConstructorUsedError;
  String get eventName => throw _privateConstructorUsedError;
  String get clubName => throw _privateConstructorUsedError;
  @TimestampJsonConverter()
  DateTime get eventStartDateTime => throw _privateConstructorUsedError;
  @TimestampJsonConverter()
  DateTime get eventEndDateTime => throw _privateConstructorUsedError;
  int get minAge => throw _privateConstructorUsedError;
  int get price => throw _privateConstructorUsedError;
  String get currency => throw _privateConstructorUsedError;
  String get allowedOutfit => throw _privateConstructorUsedError;
  List<String> get musicalGenres => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get artistName => throw _privateConstructorUsedError;
  @JsonKey(name: '_geoloc')
  Map<String, double> get location => throw _privateConstructorUsedError;
  String get cityId => throw _privateConstructorUsedError;
  List<String> get photos => throw _privateConstructorUsedError;
  Map<String, String> get urlLinks => throw _privateConstructorUsedError;
  bool get isConcert => throw _privateConstructorUsedError;
  int get attending => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EventDtoCopyWith<EventDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EventDtoCopyWith<$Res> {
  factory $EventDtoCopyWith(EventDto value, $Res Function(EventDto) then) =
      _$EventDtoCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(ignore: true) String? id,
      String clubId,
      String eventName,
      String clubName,
      @TimestampJsonConverter() DateTime eventStartDateTime,
      @TimestampJsonConverter() DateTime eventEndDateTime,
      int minAge,
      int price,
      String currency,
      String allowedOutfit,
      List<String> musicalGenres,
      String? description,
      String? artistName,
      @JsonKey(name: '_geoloc') Map<String, double> location,
      String cityId,
      List<String> photos,
      Map<String, String> urlLinks,
      bool isConcert,
      int attending});
}

/// @nodoc
class _$EventDtoCopyWithImpl<$Res> implements $EventDtoCopyWith<$Res> {
  _$EventDtoCopyWithImpl(this._value, this._then);

  final EventDto _value;
  // ignore: unused_field
  final $Res Function(EventDto) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? clubId = freezed,
    Object? eventName = freezed,
    Object? clubName = freezed,
    Object? eventStartDateTime = freezed,
    Object? eventEndDateTime = freezed,
    Object? minAge = freezed,
    Object? price = freezed,
    Object? currency = freezed,
    Object? allowedOutfit = freezed,
    Object? musicalGenres = freezed,
    Object? description = freezed,
    Object? artistName = freezed,
    Object? location = freezed,
    Object? cityId = freezed,
    Object? photos = freezed,
    Object? urlLinks = freezed,
    Object? isConcert = freezed,
    Object? attending = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      clubId: clubId == freezed
          ? _value.clubId
          : clubId // ignore: cast_nullable_to_non_nullable
              as String,
      eventName: eventName == freezed
          ? _value.eventName
          : eventName // ignore: cast_nullable_to_non_nullable
              as String,
      clubName: clubName == freezed
          ? _value.clubName
          : clubName // ignore: cast_nullable_to_non_nullable
              as String,
      eventStartDateTime: eventStartDateTime == freezed
          ? _value.eventStartDateTime
          : eventStartDateTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      eventEndDateTime: eventEndDateTime == freezed
          ? _value.eventEndDateTime
          : eventEndDateTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      minAge: minAge == freezed
          ? _value.minAge
          : minAge // ignore: cast_nullable_to_non_nullable
              as int,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
      currency: currency == freezed
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
      allowedOutfit: allowedOutfit == freezed
          ? _value.allowedOutfit
          : allowedOutfit // ignore: cast_nullable_to_non_nullable
              as String,
      musicalGenres: musicalGenres == freezed
          ? _value.musicalGenres
          : musicalGenres // ignore: cast_nullable_to_non_nullable
              as List<String>,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      artistName: artistName == freezed
          ? _value.artistName
          : artistName // ignore: cast_nullable_to_non_nullable
              as String?,
      location: location == freezed
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as Map<String, double>,
      cityId: cityId == freezed
          ? _value.cityId
          : cityId // ignore: cast_nullable_to_non_nullable
              as String,
      photos: photos == freezed
          ? _value.photos
          : photos // ignore: cast_nullable_to_non_nullable
              as List<String>,
      urlLinks: urlLinks == freezed
          ? _value.urlLinks
          : urlLinks // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
      isConcert: isConcert == freezed
          ? _value.isConcert
          : isConcert // ignore: cast_nullable_to_non_nullable
              as bool,
      attending: attending == freezed
          ? _value.attending
          : attending // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$EventDtoCopyWith<$Res> implements $EventDtoCopyWith<$Res> {
  factory _$EventDtoCopyWith(_EventDto value, $Res Function(_EventDto) then) =
      __$EventDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(ignore: true) String? id,
      String clubId,
      String eventName,
      String clubName,
      @TimestampJsonConverter() DateTime eventStartDateTime,
      @TimestampJsonConverter() DateTime eventEndDateTime,
      int minAge,
      int price,
      String currency,
      String allowedOutfit,
      List<String> musicalGenres,
      String? description,
      String? artistName,
      @JsonKey(name: '_geoloc') Map<String, double> location,
      String cityId,
      List<String> photos,
      Map<String, String> urlLinks,
      bool isConcert,
      int attending});
}

/// @nodoc
class __$EventDtoCopyWithImpl<$Res> extends _$EventDtoCopyWithImpl<$Res>
    implements _$EventDtoCopyWith<$Res> {
  __$EventDtoCopyWithImpl(_EventDto _value, $Res Function(_EventDto) _then)
      : super(_value, (v) => _then(v as _EventDto));

  @override
  _EventDto get _value => super._value as _EventDto;

  @override
  $Res call({
    Object? id = freezed,
    Object? clubId = freezed,
    Object? eventName = freezed,
    Object? clubName = freezed,
    Object? eventStartDateTime = freezed,
    Object? eventEndDateTime = freezed,
    Object? minAge = freezed,
    Object? price = freezed,
    Object? currency = freezed,
    Object? allowedOutfit = freezed,
    Object? musicalGenres = freezed,
    Object? description = freezed,
    Object? artistName = freezed,
    Object? location = freezed,
    Object? cityId = freezed,
    Object? photos = freezed,
    Object? urlLinks = freezed,
    Object? isConcert = freezed,
    Object? attending = freezed,
  }) {
    return _then(_EventDto(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      clubId: clubId == freezed
          ? _value.clubId
          : clubId // ignore: cast_nullable_to_non_nullable
              as String,
      eventName: eventName == freezed
          ? _value.eventName
          : eventName // ignore: cast_nullable_to_non_nullable
              as String,
      clubName: clubName == freezed
          ? _value.clubName
          : clubName // ignore: cast_nullable_to_non_nullable
              as String,
      eventStartDateTime: eventStartDateTime == freezed
          ? _value.eventStartDateTime
          : eventStartDateTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      eventEndDateTime: eventEndDateTime == freezed
          ? _value.eventEndDateTime
          : eventEndDateTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      minAge: minAge == freezed
          ? _value.minAge
          : minAge // ignore: cast_nullable_to_non_nullable
              as int,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
      currency: currency == freezed
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
      allowedOutfit: allowedOutfit == freezed
          ? _value.allowedOutfit
          : allowedOutfit // ignore: cast_nullable_to_non_nullable
              as String,
      musicalGenres: musicalGenres == freezed
          ? _value.musicalGenres
          : musicalGenres // ignore: cast_nullable_to_non_nullable
              as List<String>,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      artistName: artistName == freezed
          ? _value.artistName
          : artistName // ignore: cast_nullable_to_non_nullable
              as String?,
      location: location == freezed
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as Map<String, double>,
      cityId: cityId == freezed
          ? _value.cityId
          : cityId // ignore: cast_nullable_to_non_nullable
              as String,
      photos: photos == freezed
          ? _value.photos
          : photos // ignore: cast_nullable_to_non_nullable
              as List<String>,
      urlLinks: urlLinks == freezed
          ? _value.urlLinks
          : urlLinks // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
      isConcert: isConcert == freezed
          ? _value.isConcert
          : isConcert // ignore: cast_nullable_to_non_nullable
              as bool,
      attending: attending == freezed
          ? _value.attending
          : attending // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

@JsonSerializable()
class _$_EventDto extends _EventDto {
  const _$_EventDto(
      {@JsonKey(ignore: true) this.id,
      required this.clubId,
      required this.eventName,
      required this.clubName,
      @TimestampJsonConverter() required this.eventStartDateTime,
      @TimestampJsonConverter() required this.eventEndDateTime,
      required this.minAge,
      required this.price,
      required this.currency,
      required this.allowedOutfit,
      required this.musicalGenres,
      this.description,
      this.artistName,
      @JsonKey(name: '_geoloc') required this.location,
      required this.cityId,
      this.photos = const [],
      this.urlLinks = const {},
      this.isConcert = false,
      this.attending = 0})
      : super._();

  factory _$_EventDto.fromJson(Map<String, dynamic> json) =>
      _$$_EventDtoFromJson(json);

  @override
  @JsonKey(ignore: true)
  final String? id;
  @override
  final String clubId;
  @override
  final String eventName;
  @override
  final String clubName;
  @override
  @TimestampJsonConverter()
  final DateTime eventStartDateTime;
  @override
  @TimestampJsonConverter()
  final DateTime eventEndDateTime;
  @override
  final int minAge;
  @override
  final int price;
  @override
  final String currency;
  @override
  final String allowedOutfit;
  @override
  final List<String> musicalGenres;
  @override
  final String? description;
  @override
  final String? artistName;
  @override
  @JsonKey(name: '_geoloc')
  final Map<String, double> location;
  @override
  final String cityId;
  @JsonKey()
  @override
  final List<String> photos;
  @JsonKey()
  @override
  final Map<String, String> urlLinks;
  @JsonKey()
  @override
  final bool isConcert;
  @JsonKey()
  @override
  final int attending;

  @override
  String toString() {
    return 'EventDto(id: $id, clubId: $clubId, eventName: $eventName, clubName: $clubName, eventStartDateTime: $eventStartDateTime, eventEndDateTime: $eventEndDateTime, minAge: $minAge, price: $price, currency: $currency, allowedOutfit: $allowedOutfit, musicalGenres: $musicalGenres, description: $description, artistName: $artistName, location: $location, cityId: $cityId, photos: $photos, urlLinks: $urlLinks, isConcert: $isConcert, attending: $attending)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _EventDto &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.clubId, clubId) &&
            const DeepCollectionEquality().equals(other.eventName, eventName) &&
            const DeepCollectionEquality().equals(other.clubName, clubName) &&
            const DeepCollectionEquality()
                .equals(other.eventStartDateTime, eventStartDateTime) &&
            const DeepCollectionEquality()
                .equals(other.eventEndDateTime, eventEndDateTime) &&
            const DeepCollectionEquality().equals(other.minAge, minAge) &&
            const DeepCollectionEquality().equals(other.price, price) &&
            const DeepCollectionEquality().equals(other.currency, currency) &&
            const DeepCollectionEquality()
                .equals(other.allowedOutfit, allowedOutfit) &&
            const DeepCollectionEquality()
                .equals(other.musicalGenres, musicalGenres) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality()
                .equals(other.artistName, artistName) &&
            const DeepCollectionEquality().equals(other.location, location) &&
            const DeepCollectionEquality().equals(other.cityId, cityId) &&
            const DeepCollectionEquality().equals(other.photos, photos) &&
            const DeepCollectionEquality().equals(other.urlLinks, urlLinks) &&
            const DeepCollectionEquality().equals(other.isConcert, isConcert) &&
            const DeepCollectionEquality().equals(other.attending, attending));
  }

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(id),
        const DeepCollectionEquality().hash(clubId),
        const DeepCollectionEquality().hash(eventName),
        const DeepCollectionEquality().hash(clubName),
        const DeepCollectionEquality().hash(eventStartDateTime),
        const DeepCollectionEquality().hash(eventEndDateTime),
        const DeepCollectionEquality().hash(minAge),
        const DeepCollectionEquality().hash(price),
        const DeepCollectionEquality().hash(currency),
        const DeepCollectionEquality().hash(allowedOutfit),
        const DeepCollectionEquality().hash(musicalGenres),
        const DeepCollectionEquality().hash(description),
        const DeepCollectionEquality().hash(artistName),
        const DeepCollectionEquality().hash(location),
        const DeepCollectionEquality().hash(cityId),
        const DeepCollectionEquality().hash(photos),
        const DeepCollectionEquality().hash(urlLinks),
        const DeepCollectionEquality().hash(isConcert),
        const DeepCollectionEquality().hash(attending)
      ]);

  @JsonKey(ignore: true)
  @override
  _$EventDtoCopyWith<_EventDto> get copyWith =>
      __$EventDtoCopyWithImpl<_EventDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_EventDtoToJson(this);
  }
}

abstract class _EventDto extends EventDto {
  const factory _EventDto(
      {@JsonKey(ignore: true) String? id,
      required String clubId,
      required String eventName,
      required String clubName,
      @TimestampJsonConverter() required DateTime eventStartDateTime,
      @TimestampJsonConverter() required DateTime eventEndDateTime,
      required int minAge,
      required int price,
      required String currency,
      required String allowedOutfit,
      required List<String> musicalGenres,
      String? description,
      String? artistName,
      @JsonKey(name: '_geoloc') required Map<String, double> location,
      required String cityId,
      List<String> photos,
      Map<String, String> urlLinks,
      bool isConcert,
      int attending}) = _$_EventDto;
  const _EventDto._() : super._();

  factory _EventDto.fromJson(Map<String, dynamic> json) = _$_EventDto.fromJson;

  @override
  @JsonKey(ignore: true)
  String? get id;
  @override
  String get clubId;
  @override
  String get eventName;
  @override
  String get clubName;
  @override
  @TimestampJsonConverter()
  DateTime get eventStartDateTime;
  @override
  @TimestampJsonConverter()
  DateTime get eventEndDateTime;
  @override
  int get minAge;
  @override
  int get price;
  @override
  String get currency;
  @override
  String get allowedOutfit;
  @override
  List<String> get musicalGenres;
  @override
  String? get description;
  @override
  String? get artistName;
  @override
  @JsonKey(name: '_geoloc')
  Map<String, double> get location;
  @override
  String get cityId;
  @override
  List<String> get photos;
  @override
  Map<String, String> get urlLinks;
  @override
  bool get isConcert;
  @override
  int get attending;
  @override
  @JsonKey(ignore: true)
  _$EventDtoCopyWith<_EventDto> get copyWith =>
      throw _privateConstructorUsedError;
}
