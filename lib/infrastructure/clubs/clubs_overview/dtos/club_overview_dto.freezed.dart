// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'club_overview_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ClubOverviewDto _$ClubOverviewDtoFromJson(Map<String, dynamic> json) {
  return _ClubOverviewDto.fromJson(json);
}

/// @nodoc
class _$ClubOverviewDtoTearOff {
  const _$ClubOverviewDtoTearOff();

  _ClubOverviewDto call(
      {required String clubName,
      required String clubImageUrl,
      required int reviewCount,
      required double reviewAvg,
      required String addressString}) {
    return _ClubOverviewDto(
      clubName: clubName,
      clubImageUrl: clubImageUrl,
      reviewCount: reviewCount,
      reviewAvg: reviewAvg,
      addressString: addressString,
    );
  }

  ClubOverviewDto fromJson(Map<String, Object?> json) {
    return ClubOverviewDto.fromJson(json);
  }
}

/// @nodoc
const $ClubOverviewDto = _$ClubOverviewDtoTearOff();

/// @nodoc
mixin _$ClubOverviewDto {
  String get clubName => throw _privateConstructorUsedError;
  String get clubImageUrl => throw _privateConstructorUsedError;
  int get reviewCount => throw _privateConstructorUsedError;
  double get reviewAvg => throw _privateConstructorUsedError;
  String get addressString => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ClubOverviewDtoCopyWith<ClubOverviewDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClubOverviewDtoCopyWith<$Res> {
  factory $ClubOverviewDtoCopyWith(
          ClubOverviewDto value, $Res Function(ClubOverviewDto) then) =
      _$ClubOverviewDtoCopyWithImpl<$Res>;
  $Res call(
      {String clubName,
      String clubImageUrl,
      int reviewCount,
      double reviewAvg,
      String addressString});
}

/// @nodoc
class _$ClubOverviewDtoCopyWithImpl<$Res>
    implements $ClubOverviewDtoCopyWith<$Res> {
  _$ClubOverviewDtoCopyWithImpl(this._value, this._then);

  final ClubOverviewDto _value;
  // ignore: unused_field
  final $Res Function(ClubOverviewDto) _then;

  @override
  $Res call({
    Object? clubName = freezed,
    Object? clubImageUrl = freezed,
    Object? reviewCount = freezed,
    Object? reviewAvg = freezed,
    Object? addressString = freezed,
  }) {
    return _then(_value.copyWith(
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
      addressString: addressString == freezed
          ? _value.addressString
          : addressString // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$ClubOverviewDtoCopyWith<$Res>
    implements $ClubOverviewDtoCopyWith<$Res> {
  factory _$ClubOverviewDtoCopyWith(
          _ClubOverviewDto value, $Res Function(_ClubOverviewDto) then) =
      __$ClubOverviewDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {String clubName,
      String clubImageUrl,
      int reviewCount,
      double reviewAvg,
      String addressString});
}

/// @nodoc
class __$ClubOverviewDtoCopyWithImpl<$Res>
    extends _$ClubOverviewDtoCopyWithImpl<$Res>
    implements _$ClubOverviewDtoCopyWith<$Res> {
  __$ClubOverviewDtoCopyWithImpl(
      _ClubOverviewDto _value, $Res Function(_ClubOverviewDto) _then)
      : super(_value, (v) => _then(v as _ClubOverviewDto));

  @override
  _ClubOverviewDto get _value => super._value as _ClubOverviewDto;

  @override
  $Res call({
    Object? clubName = freezed,
    Object? clubImageUrl = freezed,
    Object? reviewCount = freezed,
    Object? reviewAvg = freezed,
    Object? addressString = freezed,
  }) {
    return _then(_ClubOverviewDto(
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
      addressString: addressString == freezed
          ? _value.addressString
          : addressString // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ClubOverviewDto extends _ClubOverviewDto {
  const _$_ClubOverviewDto(
      {required this.clubName,
      required this.clubImageUrl,
      required this.reviewCount,
      required this.reviewAvg,
      required this.addressString})
      : super._();

  factory _$_ClubOverviewDto.fromJson(Map<String, dynamic> json) =>
      _$$_ClubOverviewDtoFromJson(json);

  @override
  final String clubName;
  @override
  final String clubImageUrl;
  @override
  final int reviewCount;
  @override
  final double reviewAvg;
  @override
  final String addressString;

  @override
  String toString() {
    return 'ClubOverviewDto(clubName: $clubName, clubImageUrl: $clubImageUrl, reviewCount: $reviewCount, reviewAvg: $reviewAvg, addressString: $addressString)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ClubOverviewDto &&
            const DeepCollectionEquality().equals(other.clubName, clubName) &&
            const DeepCollectionEquality()
                .equals(other.clubImageUrl, clubImageUrl) &&
            const DeepCollectionEquality()
                .equals(other.reviewCount, reviewCount) &&
            const DeepCollectionEquality().equals(other.reviewAvg, reviewAvg) &&
            const DeepCollectionEquality()
                .equals(other.addressString, addressString));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(clubName),
      const DeepCollectionEquality().hash(clubImageUrl),
      const DeepCollectionEquality().hash(reviewCount),
      const DeepCollectionEquality().hash(reviewAvg),
      const DeepCollectionEquality().hash(addressString));

  @JsonKey(ignore: true)
  @override
  _$ClubOverviewDtoCopyWith<_ClubOverviewDto> get copyWith =>
      __$ClubOverviewDtoCopyWithImpl<_ClubOverviewDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ClubOverviewDtoToJson(this);
  }
}

abstract class _ClubOverviewDto extends ClubOverviewDto {
  const factory _ClubOverviewDto(
      {required String clubName,
      required String clubImageUrl,
      required int reviewCount,
      required double reviewAvg,
      required String addressString}) = _$_ClubOverviewDto;
  const _ClubOverviewDto._() : super._();

  factory _ClubOverviewDto.fromJson(Map<String, dynamic> json) =
      _$_ClubOverviewDto.fromJson;

  @override
  String get clubName;
  @override
  String get clubImageUrl;
  @override
  int get reviewCount;
  @override
  double get reviewAvg;
  @override
  String get addressString;
  @override
  @JsonKey(ignore: true)
  _$ClubOverviewDtoCopyWith<_ClubOverviewDto> get copyWith =>
      throw _privateConstructorUsedError;
}
