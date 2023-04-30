// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'wall_photo_venue_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$WallPhotoVenue {
  String get venueId => throw _privateConstructorUsedError;
  String get venueName => throw _privateConstructorUsedError;
  LatLng get venueLocation => throw _privateConstructorUsedError;
  String? get venuePhotoUrl => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $WallPhotoVenueCopyWith<WallPhotoVenue> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WallPhotoVenueCopyWith<$Res> {
  factory $WallPhotoVenueCopyWith(
          WallPhotoVenue value, $Res Function(WallPhotoVenue) then) =
      _$WallPhotoVenueCopyWithImpl<$Res, WallPhotoVenue>;
  @useResult
  $Res call(
      {String venueId,
      String venueName,
      LatLng venueLocation,
      String? venuePhotoUrl});
}

/// @nodoc
class _$WallPhotoVenueCopyWithImpl<$Res, $Val extends WallPhotoVenue>
    implements $WallPhotoVenueCopyWith<$Res> {
  _$WallPhotoVenueCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? venueId = null,
    Object? venueName = null,
    Object? venueLocation = null,
    Object? venuePhotoUrl = freezed,
  }) {
    return _then(_value.copyWith(
      venueId: null == venueId
          ? _value.venueId
          : venueId // ignore: cast_nullable_to_non_nullable
              as String,
      venueName: null == venueName
          ? _value.venueName
          : venueName // ignore: cast_nullable_to_non_nullable
              as String,
      venueLocation: null == venueLocation
          ? _value.venueLocation
          : venueLocation // ignore: cast_nullable_to_non_nullable
              as LatLng,
      venuePhotoUrl: freezed == venuePhotoUrl
          ? _value.venuePhotoUrl
          : venuePhotoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_WallPhotoVenueCopyWith<$Res>
    implements $WallPhotoVenueCopyWith<$Res> {
  factory _$$_WallPhotoVenueCopyWith(
          _$_WallPhotoVenue value, $Res Function(_$_WallPhotoVenue) then) =
      __$$_WallPhotoVenueCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String venueId,
      String venueName,
      LatLng venueLocation,
      String? venuePhotoUrl});
}

/// @nodoc
class __$$_WallPhotoVenueCopyWithImpl<$Res>
    extends _$WallPhotoVenueCopyWithImpl<$Res, _$_WallPhotoVenue>
    implements _$$_WallPhotoVenueCopyWith<$Res> {
  __$$_WallPhotoVenueCopyWithImpl(
      _$_WallPhotoVenue _value, $Res Function(_$_WallPhotoVenue) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? venueId = null,
    Object? venueName = null,
    Object? venueLocation = null,
    Object? venuePhotoUrl = freezed,
  }) {
    return _then(_$_WallPhotoVenue(
      venueId: null == venueId
          ? _value.venueId
          : venueId // ignore: cast_nullable_to_non_nullable
              as String,
      venueName: null == venueName
          ? _value.venueName
          : venueName // ignore: cast_nullable_to_non_nullable
              as String,
      venueLocation: null == venueLocation
          ? _value.venueLocation
          : venueLocation // ignore: cast_nullable_to_non_nullable
              as LatLng,
      venuePhotoUrl: freezed == venuePhotoUrl
          ? _value.venuePhotoUrl
          : venuePhotoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_WallPhotoVenue implements _WallPhotoVenue {
  const _$_WallPhotoVenue(
      {required this.venueId,
      required this.venueName,
      required this.venueLocation,
      this.venuePhotoUrl});

  @override
  final String venueId;
  @override
  final String venueName;
  @override
  final LatLng venueLocation;
  @override
  final String? venuePhotoUrl;

  @override
  String toString() {
    return 'WallPhotoVenue(venueId: $venueId, venueName: $venueName, venueLocation: $venueLocation, venuePhotoUrl: $venuePhotoUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WallPhotoVenue &&
            (identical(other.venueId, venueId) || other.venueId == venueId) &&
            (identical(other.venueName, venueName) ||
                other.venueName == venueName) &&
            (identical(other.venueLocation, venueLocation) ||
                other.venueLocation == venueLocation) &&
            (identical(other.venuePhotoUrl, venuePhotoUrl) ||
                other.venuePhotoUrl == venuePhotoUrl));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, venueId, venueName, venueLocation, venuePhotoUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_WallPhotoVenueCopyWith<_$_WallPhotoVenue> get copyWith =>
      __$$_WallPhotoVenueCopyWithImpl<_$_WallPhotoVenue>(this, _$identity);
}

abstract class _WallPhotoVenue implements WallPhotoVenue {
  const factory _WallPhotoVenue(
      {required final String venueId,
      required final String venueName,
      required final LatLng venueLocation,
      final String? venuePhotoUrl}) = _$_WallPhotoVenue;

  @override
  String get venueId;
  @override
  String get venueName;
  @override
  LatLng get venueLocation;
  @override
  String? get venuePhotoUrl;
  @override
  @JsonKey(ignore: true)
  _$$_WallPhotoVenueCopyWith<_$_WallPhotoVenue> get copyWith =>
      throw _privateConstructorUsedError;
}
