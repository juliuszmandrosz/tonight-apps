// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

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
  @JsonKey(includeToJson: false, includeFromJson: false)
  String? get id => throw _privateConstructorUsedError;
  String get clubId => throw _privateConstructorUsedError;
  String get eventName => throw _privateConstructorUsedError;
  String get clubName => throw _privateConstructorUsedError;
  @TimestampJsonConverter()
  DateTime get eventStartDateTime => throw _privateConstructorUsedError;
  @TimestampJsonConverter()
  DateTime get eventEndDateTime => throw _privateConstructorUsedError;
  @TimestampJsonConverter()
  DateTime get originalStartDateTime => throw _privateConstructorUsedError;
  int get minAge => throw _privateConstructorUsedError;
  int get price => throw _privateConstructorUsedError;
  String get currency => throw _privateConstructorUsedError;
  String get eventPhotoUrl => throw _privateConstructorUsedError;
  String get allowedOutfit => throw _privateConstructorUsedError;
  List<String> get musicalGenres => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get artistName => throw _privateConstructorUsedError;
  @LocationConverter()
  Map<String, double> get location => throw _privateConstructorUsedError;
  String get cityId => throw _privateConstructorUsedError;
  Map<String, String> get urlLinks => throw _privateConstructorUsedError;
  bool get isConcert => throw _privateConstructorUsedError;
  int get attending => throw _privateConstructorUsedError;
  bool get isCanceled => throw _privateConstructorUsedError;
  bool get isBeingPostponed => throw _privateConstructorUsedError;
  String get priceInfo => throw _privateConstructorUsedError;
  String? get locationString => throw _privateConstructorUsedError;
  String? get clubPhotoUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EventDtoCopyWith<EventDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EventDtoCopyWith<$Res> {
  factory $EventDtoCopyWith(EventDto value, $Res Function(EventDto) then) =
      _$EventDtoCopyWithImpl<$Res, EventDto>;
  @useResult
  $Res call(
      {@JsonKey(includeToJson: false, includeFromJson: false) String? id,
      String clubId,
      String eventName,
      String clubName,
      @TimestampJsonConverter() DateTime eventStartDateTime,
      @TimestampJsonConverter() DateTime eventEndDateTime,
      @TimestampJsonConverter() DateTime originalStartDateTime,
      int minAge,
      int price,
      String currency,
      String eventPhotoUrl,
      String allowedOutfit,
      List<String> musicalGenres,
      String? description,
      String? artistName,
      @LocationConverter() Map<String, double> location,
      String cityId,
      Map<String, String> urlLinks,
      bool isConcert,
      int attending,
      bool isCanceled,
      bool isBeingPostponed,
      String priceInfo,
      String? locationString,
      String? clubPhotoUrl});
}

/// @nodoc
class _$EventDtoCopyWithImpl<$Res, $Val extends EventDto>
    implements $EventDtoCopyWith<$Res> {
  _$EventDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? clubId = null,
    Object? eventName = null,
    Object? clubName = null,
    Object? eventStartDateTime = null,
    Object? eventEndDateTime = null,
    Object? originalStartDateTime = null,
    Object? minAge = null,
    Object? price = null,
    Object? currency = null,
    Object? eventPhotoUrl = null,
    Object? allowedOutfit = null,
    Object? musicalGenres = null,
    Object? description = freezed,
    Object? artistName = freezed,
    Object? location = null,
    Object? cityId = null,
    Object? urlLinks = null,
    Object? isConcert = null,
    Object? attending = null,
    Object? isCanceled = null,
    Object? isBeingPostponed = null,
    Object? priceInfo = null,
    Object? locationString = freezed,
    Object? clubPhotoUrl = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      clubId: null == clubId
          ? _value.clubId
          : clubId // ignore: cast_nullable_to_non_nullable
              as String,
      eventName: null == eventName
          ? _value.eventName
          : eventName // ignore: cast_nullable_to_non_nullable
              as String,
      clubName: null == clubName
          ? _value.clubName
          : clubName // ignore: cast_nullable_to_non_nullable
              as String,
      eventStartDateTime: null == eventStartDateTime
          ? _value.eventStartDateTime
          : eventStartDateTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      eventEndDateTime: null == eventEndDateTime
          ? _value.eventEndDateTime
          : eventEndDateTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      originalStartDateTime: null == originalStartDateTime
          ? _value.originalStartDateTime
          : originalStartDateTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      minAge: null == minAge
          ? _value.minAge
          : minAge // ignore: cast_nullable_to_non_nullable
              as int,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
      currency: null == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
      eventPhotoUrl: null == eventPhotoUrl
          ? _value.eventPhotoUrl
          : eventPhotoUrl // ignore: cast_nullable_to_non_nullable
              as String,
      allowedOutfit: null == allowedOutfit
          ? _value.allowedOutfit
          : allowedOutfit // ignore: cast_nullable_to_non_nullable
              as String,
      musicalGenres: null == musicalGenres
          ? _value.musicalGenres
          : musicalGenres // ignore: cast_nullable_to_non_nullable
              as List<String>,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      artistName: freezed == artistName
          ? _value.artistName
          : artistName // ignore: cast_nullable_to_non_nullable
              as String?,
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as Map<String, double>,
      cityId: null == cityId
          ? _value.cityId
          : cityId // ignore: cast_nullable_to_non_nullable
              as String,
      urlLinks: null == urlLinks
          ? _value.urlLinks
          : urlLinks // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
      isConcert: null == isConcert
          ? _value.isConcert
          : isConcert // ignore: cast_nullable_to_non_nullable
              as bool,
      attending: null == attending
          ? _value.attending
          : attending // ignore: cast_nullable_to_non_nullable
              as int,
      isCanceled: null == isCanceled
          ? _value.isCanceled
          : isCanceled // ignore: cast_nullable_to_non_nullable
              as bool,
      isBeingPostponed: null == isBeingPostponed
          ? _value.isBeingPostponed
          : isBeingPostponed // ignore: cast_nullable_to_non_nullable
              as bool,
      priceInfo: null == priceInfo
          ? _value.priceInfo
          : priceInfo // ignore: cast_nullable_to_non_nullable
              as String,
      locationString: freezed == locationString
          ? _value.locationString
          : locationString // ignore: cast_nullable_to_non_nullable
              as String?,
      clubPhotoUrl: freezed == clubPhotoUrl
          ? _value.clubPhotoUrl
          : clubPhotoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_EventDtoCopyWith<$Res> implements $EventDtoCopyWith<$Res> {
  factory _$$_EventDtoCopyWith(
          _$_EventDto value, $Res Function(_$_EventDto) then) =
      __$$_EventDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(includeToJson: false, includeFromJson: false) String? id,
      String clubId,
      String eventName,
      String clubName,
      @TimestampJsonConverter() DateTime eventStartDateTime,
      @TimestampJsonConverter() DateTime eventEndDateTime,
      @TimestampJsonConverter() DateTime originalStartDateTime,
      int minAge,
      int price,
      String currency,
      String eventPhotoUrl,
      String allowedOutfit,
      List<String> musicalGenres,
      String? description,
      String? artistName,
      @LocationConverter() Map<String, double> location,
      String cityId,
      Map<String, String> urlLinks,
      bool isConcert,
      int attending,
      bool isCanceled,
      bool isBeingPostponed,
      String priceInfo,
      String? locationString,
      String? clubPhotoUrl});
}

/// @nodoc
class __$$_EventDtoCopyWithImpl<$Res>
    extends _$EventDtoCopyWithImpl<$Res, _$_EventDto>
    implements _$$_EventDtoCopyWith<$Res> {
  __$$_EventDtoCopyWithImpl(
      _$_EventDto _value, $Res Function(_$_EventDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? clubId = null,
    Object? eventName = null,
    Object? clubName = null,
    Object? eventStartDateTime = null,
    Object? eventEndDateTime = null,
    Object? originalStartDateTime = null,
    Object? minAge = null,
    Object? price = null,
    Object? currency = null,
    Object? eventPhotoUrl = null,
    Object? allowedOutfit = null,
    Object? musicalGenres = null,
    Object? description = freezed,
    Object? artistName = freezed,
    Object? location = null,
    Object? cityId = null,
    Object? urlLinks = null,
    Object? isConcert = null,
    Object? attending = null,
    Object? isCanceled = null,
    Object? isBeingPostponed = null,
    Object? priceInfo = null,
    Object? locationString = freezed,
    Object? clubPhotoUrl = freezed,
  }) {
    return _then(_$_EventDto(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      clubId: null == clubId
          ? _value.clubId
          : clubId // ignore: cast_nullable_to_non_nullable
              as String,
      eventName: null == eventName
          ? _value.eventName
          : eventName // ignore: cast_nullable_to_non_nullable
              as String,
      clubName: null == clubName
          ? _value.clubName
          : clubName // ignore: cast_nullable_to_non_nullable
              as String,
      eventStartDateTime: null == eventStartDateTime
          ? _value.eventStartDateTime
          : eventStartDateTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      eventEndDateTime: null == eventEndDateTime
          ? _value.eventEndDateTime
          : eventEndDateTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      originalStartDateTime: null == originalStartDateTime
          ? _value.originalStartDateTime
          : originalStartDateTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      minAge: null == minAge
          ? _value.minAge
          : minAge // ignore: cast_nullable_to_non_nullable
              as int,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
      currency: null == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
      eventPhotoUrl: null == eventPhotoUrl
          ? _value.eventPhotoUrl
          : eventPhotoUrl // ignore: cast_nullable_to_non_nullable
              as String,
      allowedOutfit: null == allowedOutfit
          ? _value.allowedOutfit
          : allowedOutfit // ignore: cast_nullable_to_non_nullable
              as String,
      musicalGenres: null == musicalGenres
          ? _value._musicalGenres
          : musicalGenres // ignore: cast_nullable_to_non_nullable
              as List<String>,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      artistName: freezed == artistName
          ? _value.artistName
          : artistName // ignore: cast_nullable_to_non_nullable
              as String?,
      location: null == location
          ? _value._location
          : location // ignore: cast_nullable_to_non_nullable
              as Map<String, double>,
      cityId: null == cityId
          ? _value.cityId
          : cityId // ignore: cast_nullable_to_non_nullable
              as String,
      urlLinks: null == urlLinks
          ? _value._urlLinks
          : urlLinks // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
      isConcert: null == isConcert
          ? _value.isConcert
          : isConcert // ignore: cast_nullable_to_non_nullable
              as bool,
      attending: null == attending
          ? _value.attending
          : attending // ignore: cast_nullable_to_non_nullable
              as int,
      isCanceled: null == isCanceled
          ? _value.isCanceled
          : isCanceled // ignore: cast_nullable_to_non_nullable
              as bool,
      isBeingPostponed: null == isBeingPostponed
          ? _value.isBeingPostponed
          : isBeingPostponed // ignore: cast_nullable_to_non_nullable
              as bool,
      priceInfo: null == priceInfo
          ? _value.priceInfo
          : priceInfo // ignore: cast_nullable_to_non_nullable
              as String,
      locationString: freezed == locationString
          ? _value.locationString
          : locationString // ignore: cast_nullable_to_non_nullable
              as String?,
      clubPhotoUrl: freezed == clubPhotoUrl
          ? _value.clubPhotoUrl
          : clubPhotoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable()
class _$_EventDto extends _EventDto {
  const _$_EventDto(
      {@JsonKey(includeToJson: false, includeFromJson: false) this.id,
      required this.clubId,
      required this.eventName,
      required this.clubName,
      @TimestampJsonConverter() required this.eventStartDateTime,
      @TimestampJsonConverter() required this.eventEndDateTime,
      @TimestampJsonConverter() required this.originalStartDateTime,
      required this.minAge,
      required this.price,
      required this.currency,
      required this.eventPhotoUrl,
      required this.allowedOutfit,
      required final List<String> musicalGenres,
      this.description,
      this.artistName,
      @LocationConverter() required final Map<String, double> location,
      required this.cityId,
      final Map<String, String> urlLinks = const {},
      this.isConcert = false,
      this.attending = 0,
      this.isCanceled = false,
      this.isBeingPostponed = false,
      this.priceInfo = '',
      this.locationString,
      this.clubPhotoUrl})
      : _musicalGenres = musicalGenres,
        _location = location,
        _urlLinks = urlLinks,
        super._();

  factory _$_EventDto.fromJson(Map<String, dynamic> json) =>
      _$$_EventDtoFromJson(json);

  @override
  @JsonKey(includeToJson: false, includeFromJson: false)
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
  @TimestampJsonConverter()
  final DateTime originalStartDateTime;
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
    if (_musicalGenres is EqualUnmodifiableListView) return _musicalGenres;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_musicalGenres);
  }

  @override
  final String? description;
  @override
  final String? artistName;
  final Map<String, double> _location;
  @override
  @LocationConverter()
  Map<String, double> get location {
    if (_location is EqualUnmodifiableMapView) return _location;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_location);
  }

  @override
  final String cityId;
  final Map<String, String> _urlLinks;
  @override
  @JsonKey()
  Map<String, String> get urlLinks {
    if (_urlLinks is EqualUnmodifiableMapView) return _urlLinks;
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
  @JsonKey()
  final String priceInfo;
  @override
  final String? locationString;
  @override
  final String? clubPhotoUrl;

  @override
  String toString() {
    return 'EventDto(id: $id, clubId: $clubId, eventName: $eventName, clubName: $clubName, eventStartDateTime: $eventStartDateTime, eventEndDateTime: $eventEndDateTime, originalStartDateTime: $originalStartDateTime, minAge: $minAge, price: $price, currency: $currency, eventPhotoUrl: $eventPhotoUrl, allowedOutfit: $allowedOutfit, musicalGenres: $musicalGenres, description: $description, artistName: $artistName, location: $location, cityId: $cityId, urlLinks: $urlLinks, isConcert: $isConcert, attending: $attending, isCanceled: $isCanceled, isBeingPostponed: $isBeingPostponed, priceInfo: $priceInfo, locationString: $locationString, clubPhotoUrl: $clubPhotoUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EventDto &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.clubId, clubId) || other.clubId == clubId) &&
            (identical(other.eventName, eventName) ||
                other.eventName == eventName) &&
            (identical(other.clubName, clubName) ||
                other.clubName == clubName) &&
            (identical(other.eventStartDateTime, eventStartDateTime) ||
                other.eventStartDateTime == eventStartDateTime) &&
            (identical(other.eventEndDateTime, eventEndDateTime) ||
                other.eventEndDateTime == eventEndDateTime) &&
            (identical(other.originalStartDateTime, originalStartDateTime) ||
                other.originalStartDateTime == originalStartDateTime) &&
            (identical(other.minAge, minAge) || other.minAge == minAge) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.currency, currency) ||
                other.currency == currency) &&
            (identical(other.eventPhotoUrl, eventPhotoUrl) ||
                other.eventPhotoUrl == eventPhotoUrl) &&
            (identical(other.allowedOutfit, allowedOutfit) ||
                other.allowedOutfit == allowedOutfit) &&
            const DeepCollectionEquality()
                .equals(other._musicalGenres, _musicalGenres) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.artistName, artistName) ||
                other.artistName == artistName) &&
            const DeepCollectionEquality().equals(other._location, _location) &&
            (identical(other.cityId, cityId) || other.cityId == cityId) &&
            const DeepCollectionEquality().equals(other._urlLinks, _urlLinks) &&
            (identical(other.isConcert, isConcert) ||
                other.isConcert == isConcert) &&
            (identical(other.attending, attending) ||
                other.attending == attending) &&
            (identical(other.isCanceled, isCanceled) ||
                other.isCanceled == isCanceled) &&
            (identical(other.isBeingPostponed, isBeingPostponed) ||
                other.isBeingPostponed == isBeingPostponed) &&
            (identical(other.priceInfo, priceInfo) ||
                other.priceInfo == priceInfo) &&
            (identical(other.locationString, locationString) ||
                other.locationString == locationString) &&
            (identical(other.clubPhotoUrl, clubPhotoUrl) ||
                other.clubPhotoUrl == clubPhotoUrl));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        clubId,
        eventName,
        clubName,
        eventStartDateTime,
        eventEndDateTime,
        originalStartDateTime,
        minAge,
        price,
        currency,
        eventPhotoUrl,
        allowedOutfit,
        const DeepCollectionEquality().hash(_musicalGenres),
        description,
        artistName,
        const DeepCollectionEquality().hash(_location),
        cityId,
        const DeepCollectionEquality().hash(_urlLinks),
        isConcert,
        attending,
        isCanceled,
        isBeingPostponed,
        priceInfo,
        locationString,
        clubPhotoUrl
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EventDtoCopyWith<_$_EventDto> get copyWith =>
      __$$_EventDtoCopyWithImpl<_$_EventDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_EventDtoToJson(
      this,
    );
  }
}

abstract class _EventDto extends EventDto {
  const factory _EventDto(
      {@JsonKey(includeToJson: false, includeFromJson: false) final String? id,
      required final String clubId,
      required final String eventName,
      required final String clubName,
      @TimestampJsonConverter() required final DateTime eventStartDateTime,
      @TimestampJsonConverter() required final DateTime eventEndDateTime,
      @TimestampJsonConverter() required final DateTime originalStartDateTime,
      required final int minAge,
      required final int price,
      required final String currency,
      required final String eventPhotoUrl,
      required final String allowedOutfit,
      required final List<String> musicalGenres,
      final String? description,
      final String? artistName,
      @LocationConverter() required final Map<String, double> location,
      required final String cityId,
      final Map<String, String> urlLinks,
      final bool isConcert,
      final int attending,
      final bool isCanceled,
      final bool isBeingPostponed,
      final String priceInfo,
      final String? locationString,
      final String? clubPhotoUrl}) = _$_EventDto;
  const _EventDto._() : super._();

  factory _EventDto.fromJson(Map<String, dynamic> json) = _$_EventDto.fromJson;

  @override
  @JsonKey(includeToJson: false, includeFromJson: false)
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
  @TimestampJsonConverter()
  DateTime get originalStartDateTime;
  @override
  int get minAge;
  @override
  int get price;
  @override
  String get currency;
  @override
  String get eventPhotoUrl;
  @override
  String get allowedOutfit;
  @override
  List<String> get musicalGenres;
  @override
  String? get description;
  @override
  String? get artistName;
  @override
  @LocationConverter()
  Map<String, double> get location;
  @override
  String get cityId;
  @override
  Map<String, String> get urlLinks;
  @override
  bool get isConcert;
  @override
  int get attending;
  @override
  bool get isCanceled;
  @override
  bool get isBeingPostponed;
  @override
  String get priceInfo;
  @override
  String? get locationString;
  @override
  String? get clubPhotoUrl;
  @override
  @JsonKey(ignore: true)
  _$$_EventDtoCopyWith<_$_EventDto> get copyWith =>
      throw _privateConstructorUsedError;
}
