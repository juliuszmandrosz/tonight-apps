// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_location_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UserLocationState {
  Option<LatLng> get userLocation => throw _privateConstructorUsedError;
  bool get isPermissionGranted => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserLocationStateCopyWith<UserLocationState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserLocationStateCopyWith<$Res> {
  factory $UserLocationStateCopyWith(
          UserLocationState value, $Res Function(UserLocationState) then) =
      _$UserLocationStateCopyWithImpl<$Res, UserLocationState>;
  @useResult
  $Res call(
      {Option<LatLng> userLocation, bool isPermissionGranted, bool isLoading});
}

/// @nodoc
class _$UserLocationStateCopyWithImpl<$Res, $Val extends UserLocationState>
    implements $UserLocationStateCopyWith<$Res> {
  _$UserLocationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userLocation = null,
    Object? isPermissionGranted = null,
    Object? isLoading = null,
  }) {
    return _then(_value.copyWith(
      userLocation: null == userLocation
          ? _value.userLocation
          : userLocation // ignore: cast_nullable_to_non_nullable
              as Option<LatLng>,
      isPermissionGranted: null == isPermissionGranted
          ? _value.isPermissionGranted
          : isPermissionGranted // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserLocationStateImplCopyWith<$Res>
    implements $UserLocationStateCopyWith<$Res> {
  factory _$$UserLocationStateImplCopyWith(_$UserLocationStateImpl value,
          $Res Function(_$UserLocationStateImpl) then) =
      __$$UserLocationStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Option<LatLng> userLocation, bool isPermissionGranted, bool isLoading});
}

/// @nodoc
class __$$UserLocationStateImplCopyWithImpl<$Res>
    extends _$UserLocationStateCopyWithImpl<$Res, _$UserLocationStateImpl>
    implements _$$UserLocationStateImplCopyWith<$Res> {
  __$$UserLocationStateImplCopyWithImpl(_$UserLocationStateImpl _value,
      $Res Function(_$UserLocationStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userLocation = null,
    Object? isPermissionGranted = null,
    Object? isLoading = null,
  }) {
    return _then(_$UserLocationStateImpl(
      userLocation: null == userLocation
          ? _value.userLocation
          : userLocation // ignore: cast_nullable_to_non_nullable
              as Option<LatLng>,
      isPermissionGranted: null == isPermissionGranted
          ? _value.isPermissionGranted
          : isPermissionGranted // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$UserLocationStateImpl extends _UserLocationState {
  _$UserLocationStateImpl(
      {required this.userLocation,
      required this.isPermissionGranted,
      required this.isLoading})
      : super._();

  @override
  final Option<LatLng> userLocation;
  @override
  final bool isPermissionGranted;
  @override
  final bool isLoading;

  @override
  String toString() {
    return 'UserLocationState(userLocation: $userLocation, isPermissionGranted: $isPermissionGranted, isLoading: $isLoading)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserLocationStateImpl &&
            (identical(other.userLocation, userLocation) ||
                other.userLocation == userLocation) &&
            (identical(other.isPermissionGranted, isPermissionGranted) ||
                other.isPermissionGranted == isPermissionGranted) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, userLocation, isPermissionGranted, isLoading);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserLocationStateImplCopyWith<_$UserLocationStateImpl> get copyWith =>
      __$$UserLocationStateImplCopyWithImpl<_$UserLocationStateImpl>(
          this, _$identity);
}

abstract class _UserLocationState extends UserLocationState {
  factory _UserLocationState(
      {required final Option<LatLng> userLocation,
      required final bool isPermissionGranted,
      required final bool isLoading}) = _$UserLocationStateImpl;
  _UserLocationState._() : super._();

  @override
  Option<LatLng> get userLocation;
  @override
  bool get isPermissionGranted;
  @override
  bool get isLoading;
  @override
  @JsonKey(ignore: true)
  _$$UserLocationStateImplCopyWith<_$UserLocationStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
