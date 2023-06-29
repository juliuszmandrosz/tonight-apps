// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tonight_event_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TonightEvent {
  String get eventId => throw _privateConstructorUsedError;
  String get eventName => throw _privateConstructorUsedError;
  String get clubId => throw _privateConstructorUsedError;
  String get clubName => throw _privateConstructorUsedError;
  DateTime get eventStartDateTime => throw _privateConstructorUsedError;
  DateTime get eventEndDateTime => throw _privateConstructorUsedError;
  int get minAge => throw _privateConstructorUsedError;
  int get price => throw _privateConstructorUsedError;
  String get priceInfo => throw _privateConstructorUsedError;
  String get currency => throw _privateConstructorUsedError;
  String get eventPhotoUrl => throw _privateConstructorUsedError;
  String get allowedOutfit => throw _privateConstructorUsedError;
  List<String> get musicalGenres => throw _privateConstructorUsedError;
  Map<String, double> get location => throw _privateConstructorUsedError;
  Map<String, String> get urlLinks => throw _privateConstructorUsedError;
  bool get isConcert => throw _privateConstructorUsedError;
  Option<List<EventParticipant>> get firstParticipants =>
      throw _privateConstructorUsedError;
  int get totalParticipants => throw _privateConstructorUsedError;
  Option<EventVoucher> get voucher => throw _privateConstructorUsedError;
  String? get locationString => throw _privateConstructorUsedError;
  String? get clubPhotoUrl => throw _privateConstructorUsedError;
  String? get artistName => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TonightEventCopyWith<TonightEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TonightEventCopyWith<$Res> {
  factory $TonightEventCopyWith(
          TonightEvent value, $Res Function(TonightEvent) then) =
      _$TonightEventCopyWithImpl<$Res, TonightEvent>;
  @useResult
  $Res call(
      {String eventId,
      String eventName,
      String clubId,
      String clubName,
      DateTime eventStartDateTime,
      DateTime eventEndDateTime,
      int minAge,
      int price,
      String priceInfo,
      String currency,
      String eventPhotoUrl,
      String allowedOutfit,
      List<String> musicalGenres,
      Map<String, double> location,
      Map<String, String> urlLinks,
      bool isConcert,
      Option<List<EventParticipant>> firstParticipants,
      int totalParticipants,
      Option<EventVoucher> voucher,
      String? locationString,
      String? clubPhotoUrl,
      String? artistName,
      String? description});
}

/// @nodoc
class _$TonightEventCopyWithImpl<$Res, $Val extends TonightEvent>
    implements $TonightEventCopyWith<$Res> {
  _$TonightEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? eventId = null,
    Object? eventName = null,
    Object? clubId = null,
    Object? clubName = null,
    Object? eventStartDateTime = null,
    Object? eventEndDateTime = null,
    Object? minAge = null,
    Object? price = null,
    Object? priceInfo = null,
    Object? currency = null,
    Object? eventPhotoUrl = null,
    Object? allowedOutfit = null,
    Object? musicalGenres = null,
    Object? location = null,
    Object? urlLinks = null,
    Object? isConcert = null,
    Object? firstParticipants = null,
    Object? totalParticipants = null,
    Object? voucher = null,
    Object? locationString = freezed,
    Object? clubPhotoUrl = freezed,
    Object? artistName = freezed,
    Object? description = freezed,
  }) {
    return _then(_value.copyWith(
      eventId: null == eventId
          ? _value.eventId
          : eventId // ignore: cast_nullable_to_non_nullable
              as String,
      eventName: null == eventName
          ? _value.eventName
          : eventName // ignore: cast_nullable_to_non_nullable
              as String,
      clubId: null == clubId
          ? _value.clubId
          : clubId // ignore: cast_nullable_to_non_nullable
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
      minAge: null == minAge
          ? _value.minAge
          : minAge // ignore: cast_nullable_to_non_nullable
              as int,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
      priceInfo: null == priceInfo
          ? _value.priceInfo
          : priceInfo // ignore: cast_nullable_to_non_nullable
              as String,
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
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as Map<String, double>,
      urlLinks: null == urlLinks
          ? _value.urlLinks
          : urlLinks // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
      isConcert: null == isConcert
          ? _value.isConcert
          : isConcert // ignore: cast_nullable_to_non_nullable
              as bool,
      firstParticipants: null == firstParticipants
          ? _value.firstParticipants
          : firstParticipants // ignore: cast_nullable_to_non_nullable
              as Option<List<EventParticipant>>,
      totalParticipants: null == totalParticipants
          ? _value.totalParticipants
          : totalParticipants // ignore: cast_nullable_to_non_nullable
              as int,
      voucher: null == voucher
          ? _value.voucher
          : voucher // ignore: cast_nullable_to_non_nullable
              as Option<EventVoucher>,
      locationString: freezed == locationString
          ? _value.locationString
          : locationString // ignore: cast_nullable_to_non_nullable
              as String?,
      clubPhotoUrl: freezed == clubPhotoUrl
          ? _value.clubPhotoUrl
          : clubPhotoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      artistName: freezed == artistName
          ? _value.artistName
          : artistName // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TonightEventCopyWith<$Res>
    implements $TonightEventCopyWith<$Res> {
  factory _$$_TonightEventCopyWith(
          _$_TonightEvent value, $Res Function(_$_TonightEvent) then) =
      __$$_TonightEventCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String eventId,
      String eventName,
      String clubId,
      String clubName,
      DateTime eventStartDateTime,
      DateTime eventEndDateTime,
      int minAge,
      int price,
      String priceInfo,
      String currency,
      String eventPhotoUrl,
      String allowedOutfit,
      List<String> musicalGenres,
      Map<String, double> location,
      Map<String, String> urlLinks,
      bool isConcert,
      Option<List<EventParticipant>> firstParticipants,
      int totalParticipants,
      Option<EventVoucher> voucher,
      String? locationString,
      String? clubPhotoUrl,
      String? artistName,
      String? description});
}

/// @nodoc
class __$$_TonightEventCopyWithImpl<$Res>
    extends _$TonightEventCopyWithImpl<$Res, _$_TonightEvent>
    implements _$$_TonightEventCopyWith<$Res> {
  __$$_TonightEventCopyWithImpl(
      _$_TonightEvent _value, $Res Function(_$_TonightEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? eventId = null,
    Object? eventName = null,
    Object? clubId = null,
    Object? clubName = null,
    Object? eventStartDateTime = null,
    Object? eventEndDateTime = null,
    Object? minAge = null,
    Object? price = null,
    Object? priceInfo = null,
    Object? currency = null,
    Object? eventPhotoUrl = null,
    Object? allowedOutfit = null,
    Object? musicalGenres = null,
    Object? location = null,
    Object? urlLinks = null,
    Object? isConcert = null,
    Object? firstParticipants = null,
    Object? totalParticipants = null,
    Object? voucher = null,
    Object? locationString = freezed,
    Object? clubPhotoUrl = freezed,
    Object? artistName = freezed,
    Object? description = freezed,
  }) {
    return _then(_$_TonightEvent(
      eventId: null == eventId
          ? _value.eventId
          : eventId // ignore: cast_nullable_to_non_nullable
              as String,
      eventName: null == eventName
          ? _value.eventName
          : eventName // ignore: cast_nullable_to_non_nullable
              as String,
      clubId: null == clubId
          ? _value.clubId
          : clubId // ignore: cast_nullable_to_non_nullable
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
      minAge: null == minAge
          ? _value.minAge
          : minAge // ignore: cast_nullable_to_non_nullable
              as int,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
      priceInfo: null == priceInfo
          ? _value.priceInfo
          : priceInfo // ignore: cast_nullable_to_non_nullable
              as String,
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
      location: null == location
          ? _value._location
          : location // ignore: cast_nullable_to_non_nullable
              as Map<String, double>,
      urlLinks: null == urlLinks
          ? _value._urlLinks
          : urlLinks // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
      isConcert: null == isConcert
          ? _value.isConcert
          : isConcert // ignore: cast_nullable_to_non_nullable
              as bool,
      firstParticipants: null == firstParticipants
          ? _value.firstParticipants
          : firstParticipants // ignore: cast_nullable_to_non_nullable
              as Option<List<EventParticipant>>,
      totalParticipants: null == totalParticipants
          ? _value.totalParticipants
          : totalParticipants // ignore: cast_nullable_to_non_nullable
              as int,
      voucher: null == voucher
          ? _value.voucher
          : voucher // ignore: cast_nullable_to_non_nullable
              as Option<EventVoucher>,
      locationString: freezed == locationString
          ? _value.locationString
          : locationString // ignore: cast_nullable_to_non_nullable
              as String?,
      clubPhotoUrl: freezed == clubPhotoUrl
          ? _value.clubPhotoUrl
          : clubPhotoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      artistName: freezed == artistName
          ? _value.artistName
          : artistName // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_TonightEvent extends _TonightEvent {
  const _$_TonightEvent(
      {required this.eventId,
      required this.eventName,
      required this.clubId,
      required this.clubName,
      required this.eventStartDateTime,
      required this.eventEndDateTime,
      required this.minAge,
      required this.price,
      required this.priceInfo,
      required this.currency,
      required this.eventPhotoUrl,
      required this.allowedOutfit,
      required final List<String> musicalGenres,
      required final Map<String, double> location,
      required final Map<String, String> urlLinks,
      required this.isConcert,
      required this.firstParticipants,
      required this.totalParticipants,
      required this.voucher,
      this.locationString,
      this.clubPhotoUrl,
      this.artistName,
      this.description})
      : _musicalGenres = musicalGenres,
        _location = location,
        _urlLinks = urlLinks,
        super._();

  @override
  final String eventId;
  @override
  final String eventName;
  @override
  final String clubId;
  @override
  final String clubName;
  @override
  final DateTime eventStartDateTime;
  @override
  final DateTime eventEndDateTime;
  @override
  final int minAge;
  @override
  final int price;
  @override
  final String priceInfo;
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

  final Map<String, double> _location;
  @override
  Map<String, double> get location {
    if (_location is EqualUnmodifiableMapView) return _location;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_location);
  }

  final Map<String, String> _urlLinks;
  @override
  Map<String, String> get urlLinks {
    if (_urlLinks is EqualUnmodifiableMapView) return _urlLinks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_urlLinks);
  }

  @override
  final bool isConcert;
  @override
  final Option<List<EventParticipant>> firstParticipants;
  @override
  final int totalParticipants;
  @override
  final Option<EventVoucher> voucher;
  @override
  final String? locationString;
  @override
  final String? clubPhotoUrl;
  @override
  final String? artistName;
  @override
  final String? description;

  @override
  String toString() {
    return 'TonightEvent(eventId: $eventId, eventName: $eventName, clubId: $clubId, clubName: $clubName, eventStartDateTime: $eventStartDateTime, eventEndDateTime: $eventEndDateTime, minAge: $minAge, price: $price, priceInfo: $priceInfo, currency: $currency, eventPhotoUrl: $eventPhotoUrl, allowedOutfit: $allowedOutfit, musicalGenres: $musicalGenres, location: $location, urlLinks: $urlLinks, isConcert: $isConcert, firstParticipants: $firstParticipants, totalParticipants: $totalParticipants, voucher: $voucher, locationString: $locationString, clubPhotoUrl: $clubPhotoUrl, artistName: $artistName, description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TonightEvent &&
            (identical(other.eventId, eventId) || other.eventId == eventId) &&
            (identical(other.eventName, eventName) ||
                other.eventName == eventName) &&
            (identical(other.clubId, clubId) || other.clubId == clubId) &&
            (identical(other.clubName, clubName) ||
                other.clubName == clubName) &&
            (identical(other.eventStartDateTime, eventStartDateTime) ||
                other.eventStartDateTime == eventStartDateTime) &&
            (identical(other.eventEndDateTime, eventEndDateTime) ||
                other.eventEndDateTime == eventEndDateTime) &&
            (identical(other.minAge, minAge) || other.minAge == minAge) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.priceInfo, priceInfo) ||
                other.priceInfo == priceInfo) &&
            (identical(other.currency, currency) ||
                other.currency == currency) &&
            (identical(other.eventPhotoUrl, eventPhotoUrl) ||
                other.eventPhotoUrl == eventPhotoUrl) &&
            (identical(other.allowedOutfit, allowedOutfit) ||
                other.allowedOutfit == allowedOutfit) &&
            const DeepCollectionEquality()
                .equals(other._musicalGenres, _musicalGenres) &&
            const DeepCollectionEquality().equals(other._location, _location) &&
            const DeepCollectionEquality().equals(other._urlLinks, _urlLinks) &&
            (identical(other.isConcert, isConcert) ||
                other.isConcert == isConcert) &&
            (identical(other.firstParticipants, firstParticipants) ||
                other.firstParticipants == firstParticipants) &&
            (identical(other.totalParticipants, totalParticipants) ||
                other.totalParticipants == totalParticipants) &&
            (identical(other.voucher, voucher) || other.voucher == voucher) &&
            (identical(other.locationString, locationString) ||
                other.locationString == locationString) &&
            (identical(other.clubPhotoUrl, clubPhotoUrl) ||
                other.clubPhotoUrl == clubPhotoUrl) &&
            (identical(other.artistName, artistName) ||
                other.artistName == artistName) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        eventId,
        eventName,
        clubId,
        clubName,
        eventStartDateTime,
        eventEndDateTime,
        minAge,
        price,
        priceInfo,
        currency,
        eventPhotoUrl,
        allowedOutfit,
        const DeepCollectionEquality().hash(_musicalGenres),
        const DeepCollectionEquality().hash(_location),
        const DeepCollectionEquality().hash(_urlLinks),
        isConcert,
        firstParticipants,
        totalParticipants,
        voucher,
        locationString,
        clubPhotoUrl,
        artistName,
        description
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TonightEventCopyWith<_$_TonightEvent> get copyWith =>
      __$$_TonightEventCopyWithImpl<_$_TonightEvent>(this, _$identity);
}

abstract class _TonightEvent extends TonightEvent {
  const factory _TonightEvent(
      {required final String eventId,
      required final String eventName,
      required final String clubId,
      required final String clubName,
      required final DateTime eventStartDateTime,
      required final DateTime eventEndDateTime,
      required final int minAge,
      required final int price,
      required final String priceInfo,
      required final String currency,
      required final String eventPhotoUrl,
      required final String allowedOutfit,
      required final List<String> musicalGenres,
      required final Map<String, double> location,
      required final Map<String, String> urlLinks,
      required final bool isConcert,
      required final Option<List<EventParticipant>> firstParticipants,
      required final int totalParticipants,
      required final Option<EventVoucher> voucher,
      final String? locationString,
      final String? clubPhotoUrl,
      final String? artistName,
      final String? description}) = _$_TonightEvent;
  const _TonightEvent._() : super._();

  @override
  String get eventId;
  @override
  String get eventName;
  @override
  String get clubId;
  @override
  String get clubName;
  @override
  DateTime get eventStartDateTime;
  @override
  DateTime get eventEndDateTime;
  @override
  int get minAge;
  @override
  int get price;
  @override
  String get priceInfo;
  @override
  String get currency;
  @override
  String get eventPhotoUrl;
  @override
  String get allowedOutfit;
  @override
  List<String> get musicalGenres;
  @override
  Map<String, double> get location;
  @override
  Map<String, String> get urlLinks;
  @override
  bool get isConcert;
  @override
  Option<List<EventParticipant>> get firstParticipants;
  @override
  int get totalParticipants;
  @override
  Option<EventVoucher> get voucher;
  @override
  String? get locationString;
  @override
  String? get clubPhotoUrl;
  @override
  String? get artistName;
  @override
  String? get description;
  @override
  @JsonKey(ignore: true)
  _$$_TonightEventCopyWith<_$_TonightEvent> get copyWith =>
      throw _privateConstructorUsedError;
}
