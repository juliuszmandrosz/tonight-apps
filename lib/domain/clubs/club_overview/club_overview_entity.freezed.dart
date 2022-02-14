// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'club_overview_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ClubOverviewTearOff {
  const _$ClubOverviewTearOff();

  _ClubOverview call(
      {required String clubName,
      required String clubImageUrl,
      required int reviewCount,
      required double reviewAvg,
      required String addressString}) {
    return _ClubOverview(
      clubName: clubName,
      clubImageUrl: clubImageUrl,
      reviewCount: reviewCount,
      reviewAvg: reviewAvg,
      addressString: addressString,
    );
  }
}

/// @nodoc
const $ClubOverview = _$ClubOverviewTearOff();

/// @nodoc
mixin _$ClubOverview {
  String get clubName => throw _privateConstructorUsedError;
  String get clubImageUrl => throw _privateConstructorUsedError;
  int get reviewCount => throw _privateConstructorUsedError;
  double get reviewAvg => throw _privateConstructorUsedError;
  String get addressString => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ClubOverviewCopyWith<ClubOverview> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClubOverviewCopyWith<$Res> {
  factory $ClubOverviewCopyWith(
          ClubOverview value, $Res Function(ClubOverview) then) =
      _$ClubOverviewCopyWithImpl<$Res>;
  $Res call(
      {String clubName,
      String clubImageUrl,
      int reviewCount,
      double reviewAvg,
      String addressString});
}

/// @nodoc
class _$ClubOverviewCopyWithImpl<$Res> implements $ClubOverviewCopyWith<$Res> {
  _$ClubOverviewCopyWithImpl(this._value, this._then);

  final ClubOverview _value;
  // ignore: unused_field
  final $Res Function(ClubOverview) _then;

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
abstract class _$ClubOverviewCopyWith<$Res>
    implements $ClubOverviewCopyWith<$Res> {
  factory _$ClubOverviewCopyWith(
          _ClubOverview value, $Res Function(_ClubOverview) then) =
      __$ClubOverviewCopyWithImpl<$Res>;
  @override
  $Res call(
      {String clubName,
      String clubImageUrl,
      int reviewCount,
      double reviewAvg,
      String addressString});
}

/// @nodoc
class __$ClubOverviewCopyWithImpl<$Res> extends _$ClubOverviewCopyWithImpl<$Res>
    implements _$ClubOverviewCopyWith<$Res> {
  __$ClubOverviewCopyWithImpl(
      _ClubOverview _value, $Res Function(_ClubOverview) _then)
      : super(_value, (v) => _then(v as _ClubOverview));

  @override
  _ClubOverview get _value => super._value as _ClubOverview;

  @override
  $Res call({
    Object? clubName = freezed,
    Object? clubImageUrl = freezed,
    Object? reviewCount = freezed,
    Object? reviewAvg = freezed,
    Object? addressString = freezed,
  }) {
    return _then(_ClubOverview(
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

class _$_ClubOverview extends _ClubOverview {
  const _$_ClubOverview(
      {required this.clubName,
      required this.clubImageUrl,
      required this.reviewCount,
      required this.reviewAvg,
      required this.addressString})
      : super._();

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
    return 'ClubOverview(clubName: $clubName, clubImageUrl: $clubImageUrl, reviewCount: $reviewCount, reviewAvg: $reviewAvg, addressString: $addressString)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ClubOverview &&
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
  _$ClubOverviewCopyWith<_ClubOverview> get copyWith =>
      __$ClubOverviewCopyWithImpl<_ClubOverview>(this, _$identity);
}

abstract class _ClubOverview extends ClubOverview {
  const factory _ClubOverview(
      {required String clubName,
      required String clubImageUrl,
      required int reviewCount,
      required double reviewAvg,
      required String addressString}) = _$_ClubOverview;
  const _ClubOverview._() : super._();

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
  _$ClubOverviewCopyWith<_ClubOverview> get copyWith =>
      throw _privateConstructorUsedError;
}
