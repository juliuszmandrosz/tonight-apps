// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'club_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ClubDto _$ClubDtoFromJson(Map<String, dynamic> json) {
  return _ClubDto.fromJson(json);
}

/// @nodoc
class _$ClubDtoTearOff {
  const _$ClubDtoTearOff();

  _ClubDto call(
      {@JsonKey(ignore: true) String? id,
      required String clubName,
      required String clubImageUrl,
      int reviewCount = 0,
      double reviewAvg = 0,
      required String locationString,
      required String cityId,
      required String acceptedCurrency,
      required String phoneNumber,
      required Map<String, double> location,
      Map<String, String> socialMedia = const {},
      List<ClubReviewDto> reviews = const [],
      String? aboutUs}) {
    return _ClubDto(
      id: id,
      clubName: clubName,
      clubImageUrl: clubImageUrl,
      reviewCount: reviewCount,
      reviewAvg: reviewAvg,
      locationString: locationString,
      cityId: cityId,
      acceptedCurrency: acceptedCurrency,
      phoneNumber: phoneNumber,
      location: location,
      socialMedia: socialMedia,
      reviews: reviews,
      aboutUs: aboutUs,
    );
  }

  ClubDto fromJson(Map<String, Object?> json) {
    return ClubDto.fromJson(json);
  }
}

/// @nodoc
const $ClubDto = _$ClubDtoTearOff();

/// @nodoc
mixin _$ClubDto {
  @JsonKey(ignore: true)
  String? get id => throw _privateConstructorUsedError;
  String get clubName => throw _privateConstructorUsedError;
  String get clubImageUrl => throw _privateConstructorUsedError;
  int get reviewCount => throw _privateConstructorUsedError;
  double get reviewAvg => throw _privateConstructorUsedError;
  String get locationString => throw _privateConstructorUsedError;
  String get cityId => throw _privateConstructorUsedError;
  String get acceptedCurrency => throw _privateConstructorUsedError;
  String get phoneNumber => throw _privateConstructorUsedError;
  Map<String, double> get location => throw _privateConstructorUsedError;
  Map<String, String> get socialMedia => throw _privateConstructorUsedError;
  List<ClubReviewDto> get reviews => throw _privateConstructorUsedError;
  String? get aboutUs => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ClubDtoCopyWith<ClubDto> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClubDtoCopyWith<$Res> {
  factory $ClubDtoCopyWith(ClubDto value, $Res Function(ClubDto) then) =
      _$ClubDtoCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(ignore: true) String? id,
      String clubName,
      String clubImageUrl,
      int reviewCount,
      double reviewAvg,
      String locationString,
      String cityId,
      String acceptedCurrency,
      String phoneNumber,
      Map<String, double> location,
      Map<String, String> socialMedia,
      List<ClubReviewDto> reviews,
      String? aboutUs});
}

/// @nodoc
class _$ClubDtoCopyWithImpl<$Res> implements $ClubDtoCopyWith<$Res> {
  _$ClubDtoCopyWithImpl(this._value, this._then);

  final ClubDto _value;
  // ignore: unused_field
  final $Res Function(ClubDto) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? clubName = freezed,
    Object? clubImageUrl = freezed,
    Object? reviewCount = freezed,
    Object? reviewAvg = freezed,
    Object? locationString = freezed,
    Object? cityId = freezed,
    Object? acceptedCurrency = freezed,
    Object? phoneNumber = freezed,
    Object? location = freezed,
    Object? socialMedia = freezed,
    Object? reviews = freezed,
    Object? aboutUs = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      clubName: clubName == freezed
          ? _value.clubName
          : clubName // ignore: cast_nullable_to_non_nullable
              as String,
      clubImageUrl: clubImageUrl == freezed
          ? _value.clubImageUrl
          : clubImageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      reviewCount: reviewCount == freezed
          ? _value.reviewCount
          : reviewCount // ignore: cast_nullable_to_non_nullable
              as int,
      reviewAvg: reviewAvg == freezed
          ? _value.reviewAvg
          : reviewAvg // ignore: cast_nullable_to_non_nullable
              as double,
      locationString: locationString == freezed
          ? _value.locationString
          : locationString // ignore: cast_nullable_to_non_nullable
              as String,
      cityId: cityId == freezed
          ? _value.cityId
          : cityId // ignore: cast_nullable_to_non_nullable
              as String,
      acceptedCurrency: acceptedCurrency == freezed
          ? _value.acceptedCurrency
          : acceptedCurrency // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      location: location == freezed
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as Map<String, double>,
      socialMedia: socialMedia == freezed
          ? _value.socialMedia
          : socialMedia // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
      reviews: reviews == freezed
          ? _value.reviews
          : reviews // ignore: cast_nullable_to_non_nullable
              as List<ClubReviewDto>,
      aboutUs: aboutUs == freezed
          ? _value.aboutUs
          : aboutUs // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$ClubDtoCopyWith<$Res> implements $ClubDtoCopyWith<$Res> {
  factory _$ClubDtoCopyWith(_ClubDto value, $Res Function(_ClubDto) then) =
      __$ClubDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(ignore: true) String? id,
      String clubName,
      String clubImageUrl,
      int reviewCount,
      double reviewAvg,
      String locationString,
      String cityId,
      String acceptedCurrency,
      String phoneNumber,
      Map<String, double> location,
      Map<String, String> socialMedia,
      List<ClubReviewDto> reviews,
      String? aboutUs});
}

/// @nodoc
class __$ClubDtoCopyWithImpl<$Res> extends _$ClubDtoCopyWithImpl<$Res>
    implements _$ClubDtoCopyWith<$Res> {
  __$ClubDtoCopyWithImpl(_ClubDto _value, $Res Function(_ClubDto) _then)
      : super(_value, (v) => _then(v as _ClubDto));

  @override
  _ClubDto get _value => super._value as _ClubDto;

  @override
  $Res call({
    Object? id = freezed,
    Object? clubName = freezed,
    Object? clubImageUrl = freezed,
    Object? reviewCount = freezed,
    Object? reviewAvg = freezed,
    Object? locationString = freezed,
    Object? cityId = freezed,
    Object? acceptedCurrency = freezed,
    Object? phoneNumber = freezed,
    Object? location = freezed,
    Object? socialMedia = freezed,
    Object? reviews = freezed,
    Object? aboutUs = freezed,
  }) {
    return _then(_ClubDto(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      clubName: clubName == freezed
          ? _value.clubName
          : clubName // ignore: cast_nullable_to_non_nullable
              as String,
      clubImageUrl: clubImageUrl == freezed
          ? _value.clubImageUrl
          : clubImageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      reviewCount: reviewCount == freezed
          ? _value.reviewCount
          : reviewCount // ignore: cast_nullable_to_non_nullable
              as int,
      reviewAvg: reviewAvg == freezed
          ? _value.reviewAvg
          : reviewAvg // ignore: cast_nullable_to_non_nullable
              as double,
      locationString: locationString == freezed
          ? _value.locationString
          : locationString // ignore: cast_nullable_to_non_nullable
              as String,
      cityId: cityId == freezed
          ? _value.cityId
          : cityId // ignore: cast_nullable_to_non_nullable
              as String,
      acceptedCurrency: acceptedCurrency == freezed
          ? _value.acceptedCurrency
          : acceptedCurrency // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      location: location == freezed
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as Map<String, double>,
      socialMedia: socialMedia == freezed
          ? _value.socialMedia
          : socialMedia // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
      reviews: reviews == freezed
          ? _value.reviews
          : reviews // ignore: cast_nullable_to_non_nullable
              as List<ClubReviewDto>,
      aboutUs: aboutUs == freezed
          ? _value.aboutUs
          : aboutUs // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable()
class _$_ClubDto extends _ClubDto {
  const _$_ClubDto(
      {@JsonKey(ignore: true) this.id,
      required this.clubName,
      required this.clubImageUrl,
      this.reviewCount = 0,
      this.reviewAvg = 0,
      required this.locationString,
      required this.cityId,
      required this.acceptedCurrency,
      required this.phoneNumber,
      required this.location,
      this.socialMedia = const {},
      this.reviews = const [],
      this.aboutUs})
      : super._();

  factory _$_ClubDto.fromJson(Map<String, dynamic> json) =>
      _$$_ClubDtoFromJson(json);

  @override
  @JsonKey(ignore: true)
  final String? id;
  @override
  final String clubName;
  @override
  final String clubImageUrl;
  @JsonKey()
  @override
  final int reviewCount;
  @JsonKey()
  @override
  final double reviewAvg;
  @override
  final String locationString;
  @override
  final String cityId;
  @override
  final String acceptedCurrency;
  @override
  final String phoneNumber;
  @override
  final Map<String, double> location;
  @JsonKey()
  @override
  final Map<String, String> socialMedia;
  @JsonKey()
  @override
  final List<ClubReviewDto> reviews;
  @override
  final String? aboutUs;

  @override
  String toString() {
    return 'ClubDto(id: $id, clubName: $clubName, clubImageUrl: $clubImageUrl, reviewCount: $reviewCount, reviewAvg: $reviewAvg, locationString: $locationString, cityId: $cityId, acceptedCurrency: $acceptedCurrency, phoneNumber: $phoneNumber, location: $location, socialMedia: $socialMedia, reviews: $reviews, aboutUs: $aboutUs)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ClubDto &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.clubName, clubName) &&
            const DeepCollectionEquality()
                .equals(other.clubImageUrl, clubImageUrl) &&
            const DeepCollectionEquality()
                .equals(other.reviewCount, reviewCount) &&
            const DeepCollectionEquality().equals(other.reviewAvg, reviewAvg) &&
            const DeepCollectionEquality()
                .equals(other.locationString, locationString) &&
            const DeepCollectionEquality().equals(other.cityId, cityId) &&
            const DeepCollectionEquality()
                .equals(other.acceptedCurrency, acceptedCurrency) &&
            const DeepCollectionEquality()
                .equals(other.phoneNumber, phoneNumber) &&
            const DeepCollectionEquality().equals(other.location, location) &&
            const DeepCollectionEquality()
                .equals(other.socialMedia, socialMedia) &&
            const DeepCollectionEquality().equals(other.reviews, reviews) &&
            const DeepCollectionEquality().equals(other.aboutUs, aboutUs));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(clubName),
      const DeepCollectionEquality().hash(clubImageUrl),
      const DeepCollectionEquality().hash(reviewCount),
      const DeepCollectionEquality().hash(reviewAvg),
      const DeepCollectionEquality().hash(locationString),
      const DeepCollectionEquality().hash(cityId),
      const DeepCollectionEquality().hash(acceptedCurrency),
      const DeepCollectionEquality().hash(phoneNumber),
      const DeepCollectionEquality().hash(location),
      const DeepCollectionEquality().hash(socialMedia),
      const DeepCollectionEquality().hash(reviews),
      const DeepCollectionEquality().hash(aboutUs));

  @JsonKey(ignore: true)
  @override
  _$ClubDtoCopyWith<_ClubDto> get copyWith =>
      __$ClubDtoCopyWithImpl<_ClubDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ClubDtoToJson(this);
  }
}

abstract class _ClubDto extends ClubDto {
  const factory _ClubDto(
      {@JsonKey(ignore: true) String? id,
      required String clubName,
      required String clubImageUrl,
      int reviewCount,
      double reviewAvg,
      required String locationString,
      required String cityId,
      required String acceptedCurrency,
      required String phoneNumber,
      required Map<String, double> location,
      Map<String, String> socialMedia,
      List<ClubReviewDto> reviews,
      String? aboutUs}) = _$_ClubDto;
  const _ClubDto._() : super._();

  factory _ClubDto.fromJson(Map<String, dynamic> json) = _$_ClubDto.fromJson;

  @override
  @JsonKey(ignore: true)
  String? get id;
  @override
  String get clubName;
  @override
  String get clubImageUrl;
  @override
  int get reviewCount;
  @override
  double get reviewAvg;
  @override
  String get locationString;
  @override
  String get cityId;
  @override
  String get acceptedCurrency;
  @override
  String get phoneNumber;
  @override
  Map<String, double> get location;
  @override
  Map<String, String> get socialMedia;
  @override
  List<ClubReviewDto> get reviews;
  @override
  String? get aboutUs;
  @override
  @JsonKey(ignore: true)
  _$ClubDtoCopyWith<_ClubDto> get copyWith =>
      throw _privateConstructorUsedError;
}
