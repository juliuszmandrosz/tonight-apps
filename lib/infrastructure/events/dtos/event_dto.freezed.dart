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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

EventDto _$EventDtoFromJson(Map<String, dynamic> json) {
  return _EventDto.fromJson(json);
}

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
  String get eventPhotoUrl => throw _privateConstructorUsedError;
  String get allowedOutfit => throw _privateConstructorUsedError;
  List<String> get musicalGenres => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get artistName => throw _privateConstructorUsedError;
  @JsonKey(name: '_geoloc')
  Map<String, double> get location => throw _privateConstructorUsedError;
  String get cityId => throw _privateConstructorUsedError;
  Map<String, String> get urlLinks => throw _privateConstructorUsedError;
  bool get isConcert => throw _privateConstructorUsedError;
  int get attending => throw _privateConstructorUsedError;
  bool get isCanceled => throw _privateConstructorUsedError;
  bool get isBeingPostponed => throw _privateConstructorUsedError;

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
      String eventPhotoUrl,
      String allowedOutfit,
      List<String> musicalGenres,
      String? description,
      String? artistName,
      @JsonKey(name: '_geoloc') Map<String, double> location,
      String cityId,
      Map<String, String> urlLinks,
      bool isConcert,
      int attending,
      bool isCanceled,
      bool isBeingPostponed});
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
    Object? eventPhotoUrl = freezed,
    Object? allowedOutfit = freezed,
    Object? musicalGenres = freezed,
    Object? description = freezed,
    Object? artistName = freezed,
    Object? location = freezed,
    Object? cityId = freezed,
    Object? urlLinks = freezed,
    Object? isConcert = freezed,
    Object? attending = freezed,
    Object? isCanceled = freezed,
    Object? isBeingPostponed = freezed,
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
      eventPhotoUrl: eventPhotoUrl == freezed
          ? _value.eventPhotoUrl
          : eventPhotoUrl // ignore: cast_nullable_to_non_nullable
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
      isCanceled: isCanceled == freezed
          ? _value.isCanceled
          : isCanceled // ignore: cast_nullable_to_non_nullable
              as bool,
      isBeingPostponed: isBeingPostponed == freezed
          ? _value.isBeingPostponed
          : isBeingPostponed // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$$_EventDtoCopyWith<$Res> implements $EventDtoCopyWith<$Res> {
  factory _$$_EventDtoCopyWith(
          _$_EventDto value, $Res Function(_$_EventDto) then) =
      __$$_EventDtoCopyWithImpl<$Res>;
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
      String eventPhotoUrl,
      String allowedOutfit,
      List<String> musicalGenres,
      String? description,
      String? artistName,
      @JsonKey(name: '_geoloc') Map<String, double> location,
      String cityId,
      Map<String, String> urlLinks,
      bool isConcert,
      int attending,
      bool isCanceled,
      bool isBeingPostponed});
}

/// @nodoc
class __$$_EventDtoCopyWithImpl<$Res> extends _$EventDtoCopyWithImpl<$Res>
    implements _$$_EventDtoCopyWith<$Res> {
  __$$_EventDtoCopyWithImpl(
      _$_EventDto _value, $Res Function(_$_EventDto) _then)
      : super(_value, (v) => _then(v as _$_EventDto));

  @override
  _$_EventDto get _value => super._value as _$_EventDto;

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
    Object? eventPhotoUrl = freezed,
    Object? allowedOutfit = freezed,
    Object? musicalGenres = freezed,
    Object? description = freezed,
    Object? artistName = freezed,
    Object? location = freezed,
    Object? cityId = freezed,
    Object? urlLinks = freezed,
    Object? isConcert = freezed,
    Object? attending = freezed,
    Object? isCanceled = freezed,
    Object? isBeingPostponed = freezed,
  }) {
    return _then(_$_EventDto(
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
      eventPhotoUrl: eventPhotoUrl == freezed
          ? _value.eventPhotoUrl
          : eventPhotoUrl // ignore: cast_nullable_to_non_nullable
              as String,
      allowedOutfit: allowedOutfit == freezed
          ? _value.allowedOutfit
          : allowedOutfit // ignore: cast_nullable_to_non_nullable
              as String,
      musicalGenres: musicalGenres == freezed
          ? _value._musicalGenres
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
          ? _value._location
          : location // ignore: cast_nullable_to_non_nullable
              as Map<String, double>,
      cityId: cityId == freezed
          ? _value.cityId
          : cityId // ignore: cast_nullable_to_non_nullable
              as String,
      urlLinks: urlLinks == freezed
          ? _value._urlLinks
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
      isCanceled: isCanceled == freezed
          ? _value.isCanceled
          : isCanceled // ignore: cast_nullable_to_non_nullable
              as bool,
      isBeingPostponed: isBeingPostponed == freezed
          ? _value.isBeingPostponed
          : isBeingPostponed // ignore: cast_nullable_to_non_nullable
              as bool,
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
      required this.eventPhotoUrl,
      required this.allowedOutfit,
      required final List<String> musicalGenres,
      this.description,
      this.artistName,
      @JsonKey(name: '_geoloc') required final Map<String, double> location,
      required this.cityId,
      final Map<String, String> urlLinks = const {},
      this.isConcert = false,
      this.attending = 0,
      this.isCanceled = false,
      this.isBeingPostponed = false})
      : _musicalGenres = musicalGenres,
        _location = location,
        _urlLinks = urlLinks,
        super._();

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
  final String eventPhotoUrl;
  @override
  final String allowedOutfit;
  final List<String> _musicalGenres;
  @override
  List<String> get musicalGenres {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_musicalGenres);
  }

  @override
  final String? description;
  @override
  final String? artistName;
  final Map<String, double> _location;
  @override
  @JsonKey(name: '_geoloc')
  Map<String, double> get location {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_location);
  }

  @override
  final String cityId;
  final Map<String, String> _urlLinks;
  @override
  @JsonKey()
  Map<String, String> get urlLinks {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_urlLinks);
  }

  @override
  @JsonKey()
  final bool isConcert;
  @override
  @JsonKey()
  final int attending;
  @override
  @JsonKey()
  final bool isCanceled;
  @override
  @JsonKey()
  final bool isBeingPostponed;

  @override
  String toString() {
    return 'EventDto(id: $id, clubId: $clubId, eventName: $eventName, clubName: $clubName, eventStartDateTime: $eventStartDateTime, eventEndDateTime: $eventEndDateTime, minAge: $minAge, price: $price, currency: $currency, eventPhotoUrl: $eventPhotoUrl, allowedOutfit: $allowedOutfit, musicalGenres: $musicalGenres, description: $description, artistName: $artistName, location: $location, cityId: $cityId, urlLinks: $urlLinks, isConcert: $isConcert, attending: $attending, isCanceled: $isCanceled, isBeingPostponed: $isBeingPostponed)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EventDto &&
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
                .equals(other.eventPhotoUrl, eventPhotoUrl) &&
            const DeepCollectionEquality()
                .equals(other.allowedOutfit, allowedOutfit) &&
            const DeepCollectionEquality()
                .equals(other._musicalGenres, _musicalGenres) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality()
                .equals(other.artistName, artistName) &&
            const DeepCollectionEquality().equals(other._location, _location) &&
            const DeepCollectionEquality().equals(other.cityId, cityId) &&
            const DeepCollectionEquality().equals(other._urlLinks, _urlLinks) &&
            const DeepCollectionEquality().equals(other.isConcert, isConcert) &&
            const DeepCollectionEquality().equals(other.attending, attending) &&
            const DeepCollectionEquality()
                .equals(other.isCanceled, isCanceled) &&
            const DeepCollectionEquality()
                .equals(other.isBeingPostponed, isBeingPostponed));
  }

  @JsonKey(ignore: true)
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
        const DeepCollectionEquality().hash(eventPhotoUrl),
        const DeepCollectionEquality().hash(allowedOutfit),
        const DeepCollectionEquality().hash(_musicalGenres),
        const DeepCollectionEquality().hash(description),
        const DeepCollectionEquality().hash(artistName),
        const DeepCollectionEquality().hash(_location),
        const DeepCollectionEquality().hash(cityId),
        const DeepCollectionEquality().hash(_urlLinks),
        const DeepCollectionEquality().hash(isConcert),
        const DeepCollectionEquality().hash(attending),
        const DeepCollectionEquality().hash(isCanceled),
        const DeepCollectionEquality().hash(isBeingPostponed)
      ]);

  @JsonKey(ignore: true)
  @override
  _$$_EventDtoCopyWith<_$_EventDto> get copyWith =>
      __$$_EventDtoCopyWithImpl<_$_EventDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_EventDtoToJson(this);
  }
}

abstract class _EventDto extends EventDto {
  const factory _EventDto(
      {@JsonKey(ignore: true) final String? id,
      required final String clubId,
      required final String eventName,
      required final String clubName,
      @TimestampJsonConverter() required final DateTime eventStartDateTime,
      @TimestampJsonConverter() required final DateTime eventEndDateTime,
      required final int minAge,
      required final int price,
      required final String currency,
      required final String eventPhotoUrl,
      required final String allowedOutfit,
      required final List<String> musicalGenres,
      final String? description,
      final String? artistName,
      @JsonKey(name: '_geoloc') required final Map<String, double> location,
      required final String cityId,
      final Map<String, String> urlLinks,
      final bool isConcert,
      final int attending,
      final bool isCanceled,
      final bool isBeingPostponed}) = _$_EventDto;
  const _EventDto._() : super._();

  factory _EventDto.fromJson(Map<String, dynamic> json) = _$_EventDto.fromJson;

  @override
  @JsonKey(ignore: true)
  String? get id => throw _privateConstructorUsedError;
  @override
  String get clubId => throw _privateConstructorUsedError;
  @override
  String get eventName => throw _privateConstructorUsedError;
  @override
  String get clubName => throw _privateConstructorUsedError;
  @override
  @TimestampJsonConverter()
  DateTime get eventStartDateTime => throw _privateConstructorUsedError;
  @override
  @TimestampJsonConverter()
  DateTime get eventEndDateTime => throw _privateConstructorUsedError;
  @override
  int get minAge => throw _privateConstructorUsedError;
  @override
  int get price => throw _privateConstructorUsedError;
  @override
  String get currency => throw _privateConstructorUsedError;
  @override
  String get eventPhotoUrl => throw _privateConstructorUsedError;
  @override
  String get allowedOutfit => throw _privateConstructorUsedError;
  @override
  List<String> get musicalGenres => throw _privateConstructorUsedError;
  @override
  String? get description => throw _privateConstructorUsedError;
  @override
  String? get artistName => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: '_geoloc')
  Map<String, double> get location => throw _privateConstructorUsedError;
  @override
  String get cityId => throw _privateConstructorUsedError;
  @override
  Map<String, String> get urlLinks => throw _privateConstructorUsedError;
  @override
  bool get isConcert => throw _privateConstructorUsedError;
  @override
  int get attending => throw _privateConstructorUsedError;
  @override
  bool get isCanceled => throw _privateConstructorUsedError;
  @override
  bool get isBeingPostponed => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_EventDtoCopyWith<_$_EventDto> get copyWith =>
      throw _privateConstructorUsedError;
}
