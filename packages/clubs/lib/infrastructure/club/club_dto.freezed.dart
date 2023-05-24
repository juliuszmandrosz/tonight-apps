// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'club_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ClubDto _$ClubDtoFromJson(Map<String, dynamic> json) {
  return _ClubDto.fromJson(json);
}

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
  String? get phoneNumber => throw _privateConstructorUsedError;
  @LocationConverter()
  Map<String, double> get location => throw _privateConstructorUsedError;
  Map<String, String> get socialMedia => throw _privateConstructorUsedError;
  String? get aboutUs => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ClubDtoCopyWith<ClubDto> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClubDtoCopyWith<$Res> {
  factory $ClubDtoCopyWith(ClubDto value, $Res Function(ClubDto) then) =
      _$ClubDtoCopyWithImpl<$Res, ClubDto>;
  @useResult
  $Res call(
      {@JsonKey(ignore: true) String? id,
      String clubName,
      String clubImageUrl,
      int reviewCount,
      double reviewAvg,
      String locationString,
      String cityId,
      String acceptedCurrency,
      String? phoneNumber,
      @LocationConverter() Map<String, double> location,
      Map<String, String> socialMedia,
      String? aboutUs});
}

/// @nodoc
class _$ClubDtoCopyWithImpl<$Res, $Val extends ClubDto>
    implements $ClubDtoCopyWith<$Res> {
  _$ClubDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? clubName = null,
    Object? clubImageUrl = null,
    Object? reviewCount = null,
    Object? reviewAvg = null,
    Object? locationString = null,
    Object? cityId = null,
    Object? acceptedCurrency = null,
    Object? phoneNumber = freezed,
    Object? location = null,
    Object? socialMedia = null,
    Object? aboutUs = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      clubName: null == clubName
          ? _value.clubName
          : clubName // ignore: cast_nullable_to_non_nullable
              as String,
      clubImageUrl: null == clubImageUrl
          ? _value.clubImageUrl
          : clubImageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      reviewCount: null == reviewCount
          ? _value.reviewCount
          : reviewCount // ignore: cast_nullable_to_non_nullable
              as int,
      reviewAvg: null == reviewAvg
          ? _value.reviewAvg
          : reviewAvg // ignore: cast_nullable_to_non_nullable
              as double,
      locationString: null == locationString
          ? _value.locationString
          : locationString // ignore: cast_nullable_to_non_nullable
              as String,
      cityId: null == cityId
          ? _value.cityId
          : cityId // ignore: cast_nullable_to_non_nullable
              as String,
      acceptedCurrency: null == acceptedCurrency
          ? _value.acceptedCurrency
          : acceptedCurrency // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as Map<String, double>,
      socialMedia: null == socialMedia
          ? _value.socialMedia
          : socialMedia // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
      aboutUs: freezed == aboutUs
          ? _value.aboutUs
          : aboutUs // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ClubDtoCopyWith<$Res> implements $ClubDtoCopyWith<$Res> {
  factory _$$_ClubDtoCopyWith(
          _$_ClubDto value, $Res Function(_$_ClubDto) then) =
      __$$_ClubDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(ignore: true) String? id,
      String clubName,
      String clubImageUrl,
      int reviewCount,
      double reviewAvg,
      String locationString,
      String cityId,
      String acceptedCurrency,
      String? phoneNumber,
      @LocationConverter() Map<String, double> location,
      Map<String, String> socialMedia,
      String? aboutUs});
}

/// @nodoc
class __$$_ClubDtoCopyWithImpl<$Res>
    extends _$ClubDtoCopyWithImpl<$Res, _$_ClubDto>
    implements _$$_ClubDtoCopyWith<$Res> {
  __$$_ClubDtoCopyWithImpl(_$_ClubDto _value, $Res Function(_$_ClubDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? clubName = null,
    Object? clubImageUrl = null,
    Object? reviewCount = null,
    Object? reviewAvg = null,
    Object? locationString = null,
    Object? cityId = null,
    Object? acceptedCurrency = null,
    Object? phoneNumber = freezed,
    Object? location = null,
    Object? socialMedia = null,
    Object? aboutUs = freezed,
  }) {
    return _then(_$_ClubDto(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      clubName: null == clubName
          ? _value.clubName
          : clubName // ignore: cast_nullable_to_non_nullable
              as String,
      clubImageUrl: null == clubImageUrl
          ? _value.clubImageUrl
          : clubImageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      reviewCount: null == reviewCount
          ? _value.reviewCount
          : reviewCount // ignore: cast_nullable_to_non_nullable
              as int,
      reviewAvg: null == reviewAvg
          ? _value.reviewAvg
          : reviewAvg // ignore: cast_nullable_to_non_nullable
              as double,
      locationString: null == locationString
          ? _value.locationString
          : locationString // ignore: cast_nullable_to_non_nullable
              as String,
      cityId: null == cityId
          ? _value.cityId
          : cityId // ignore: cast_nullable_to_non_nullable
              as String,
      acceptedCurrency: null == acceptedCurrency
          ? _value.acceptedCurrency
          : acceptedCurrency // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      location: null == location
          ? _value._location
          : location // ignore: cast_nullable_to_non_nullable
              as Map<String, double>,
      socialMedia: null == socialMedia
          ? _value._socialMedia
          : socialMedia // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
      aboutUs: freezed == aboutUs
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
      this.phoneNumber,
      @LocationConverter() required final Map<String, double> location,
      final Map<String, String> socialMedia = const {},
      this.aboutUs})
      : _location = location,
        _socialMedia = socialMedia,
        super._();

  factory _$_ClubDto.fromJson(Map<String, dynamic> json) =>
      _$$_ClubDtoFromJson(json);

  @override
  @JsonKey(ignore: true)
  final String? id;
  @override
  final String clubName;
  @override
  final String clubImageUrl;
  @override
  @JsonKey()
  final int reviewCount;
  @override
  @JsonKey()
  final double reviewAvg;
  @override
  final String locationString;
  @override
  final String cityId;
  @override
  final String acceptedCurrency;
  @override
  final String? phoneNumber;
  final Map<String, double> _location;
  @override
  @LocationConverter()
  Map<String, double> get location {
    if (_location is EqualUnmodifiableMapView) return _location;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_location);
  }

  final Map<String, String> _socialMedia;
  @override
  @JsonKey()
  Map<String, String> get socialMedia {
    if (_socialMedia is EqualUnmodifiableMapView) return _socialMedia;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_socialMedia);
  }

  @override
  final String? aboutUs;

  @override
  String toString() {
    return 'ClubDto(id: $id, clubName: $clubName, clubImageUrl: $clubImageUrl, reviewCount: $reviewCount, reviewAvg: $reviewAvg, locationString: $locationString, cityId: $cityId, acceptedCurrency: $acceptedCurrency, phoneNumber: $phoneNumber, location: $location, socialMedia: $socialMedia, aboutUs: $aboutUs)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ClubDto &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.clubName, clubName) ||
                other.clubName == clubName) &&
            (identical(other.clubImageUrl, clubImageUrl) ||
                other.clubImageUrl == clubImageUrl) &&
            (identical(other.reviewCount, reviewCount) ||
                other.reviewCount == reviewCount) &&
            (identical(other.reviewAvg, reviewAvg) ||
                other.reviewAvg == reviewAvg) &&
            (identical(other.locationString, locationString) ||
                other.locationString == locationString) &&
            (identical(other.cityId, cityId) || other.cityId == cityId) &&
            (identical(other.acceptedCurrency, acceptedCurrency) ||
                other.acceptedCurrency == acceptedCurrency) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            const DeepCollectionEquality().equals(other._location, _location) &&
            const DeepCollectionEquality()
                .equals(other._socialMedia, _socialMedia) &&
            (identical(other.aboutUs, aboutUs) || other.aboutUs == aboutUs));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      clubName,
      clubImageUrl,
      reviewCount,
      reviewAvg,
      locationString,
      cityId,
      acceptedCurrency,
      phoneNumber,
      const DeepCollectionEquality().hash(_location),
      const DeepCollectionEquality().hash(_socialMedia),
      aboutUs);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ClubDtoCopyWith<_$_ClubDto> get copyWith =>
      __$$_ClubDtoCopyWithImpl<_$_ClubDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ClubDtoToJson(
      this,
    );
  }
}

abstract class _ClubDto extends ClubDto {
  const factory _ClubDto(
      {@JsonKey(ignore: true) final String? id,
      required final String clubName,
      required final String clubImageUrl,
      final int reviewCount,
      final double reviewAvg,
      required final String locationString,
      required final String cityId,
      required final String acceptedCurrency,
      final String? phoneNumber,
      @LocationConverter() required final Map<String, double> location,
      final Map<String, String> socialMedia,
      final String? aboutUs}) = _$_ClubDto;
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
  String? get phoneNumber;
  @override
  @LocationConverter()
  Map<String, double> get location;
  @override
  Map<String, String> get socialMedia;
  @override
  String? get aboutUs;
  @override
  @JsonKey(ignore: true)
  _$$_ClubDtoCopyWith<_$_ClubDto> get copyWith =>
      throw _privateConstructorUsedError;
}
