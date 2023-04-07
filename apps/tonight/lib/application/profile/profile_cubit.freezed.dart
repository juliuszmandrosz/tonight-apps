// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ProfileState {
  Option<UserProfile> get userProfile => throw _privateConstructorUsedError;
  CubitStatus get initialStatus => throw _privateConstructorUsedError;
  CubitStatus get nextPagePhotosStatus => throw _privateConstructorUsedError;
  CubitStatus get deletingAccountStatus => throw _privateConstructorUsedError;
  Option<String> get snackbarMessage => throw _privateConstructorUsedError;
  bool get hasPhotosReachedMax => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProfileStateCopyWith<ProfileState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileStateCopyWith<$Res> {
  factory $ProfileStateCopyWith(
          ProfileState value, $Res Function(ProfileState) then) =
      _$ProfileStateCopyWithImpl<$Res, ProfileState>;
  @useResult
  $Res call(
      {Option<UserProfile> userProfile,
      CubitStatus initialStatus,
      CubitStatus nextPagePhotosStatus,
      CubitStatus deletingAccountStatus,
      Option<String> snackbarMessage,
      bool hasPhotosReachedMax});
}

/// @nodoc
class _$ProfileStateCopyWithImpl<$Res, $Val extends ProfileState>
    implements $ProfileStateCopyWith<$Res> {
  _$ProfileStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userProfile = null,
    Object? initialStatus = null,
    Object? nextPagePhotosStatus = null,
    Object? deletingAccountStatus = null,
    Object? snackbarMessage = null,
    Object? hasPhotosReachedMax = null,
  }) {
    return _then(_value.copyWith(
      userProfile: null == userProfile
          ? _value.userProfile
          : userProfile // ignore: cast_nullable_to_non_nullable
              as Option<UserProfile>,
      initialStatus: null == initialStatus
          ? _value.initialStatus
          : initialStatus // ignore: cast_nullable_to_non_nullable
              as CubitStatus,
      nextPagePhotosStatus: null == nextPagePhotosStatus
          ? _value.nextPagePhotosStatus
          : nextPagePhotosStatus // ignore: cast_nullable_to_non_nullable
              as CubitStatus,
      deletingAccountStatus: null == deletingAccountStatus
          ? _value.deletingAccountStatus
          : deletingAccountStatus // ignore: cast_nullable_to_non_nullable
              as CubitStatus,
      snackbarMessage: null == snackbarMessage
          ? _value.snackbarMessage
          : snackbarMessage // ignore: cast_nullable_to_non_nullable
              as Option<String>,
      hasPhotosReachedMax: null == hasPhotosReachedMax
          ? _value.hasPhotosReachedMax
          : hasPhotosReachedMax // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ProfileStateCopyWith<$Res>
    implements $ProfileStateCopyWith<$Res> {
  factory _$$_ProfileStateCopyWith(
          _$_ProfileState value, $Res Function(_$_ProfileState) then) =
      __$$_ProfileStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Option<UserProfile> userProfile,
      CubitStatus initialStatus,
      CubitStatus nextPagePhotosStatus,
      CubitStatus deletingAccountStatus,
      Option<String> snackbarMessage,
      bool hasPhotosReachedMax});
}

/// @nodoc
class __$$_ProfileStateCopyWithImpl<$Res>
    extends _$ProfileStateCopyWithImpl<$Res, _$_ProfileState>
    implements _$$_ProfileStateCopyWith<$Res> {
  __$$_ProfileStateCopyWithImpl(
      _$_ProfileState _value, $Res Function(_$_ProfileState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userProfile = null,
    Object? initialStatus = null,
    Object? nextPagePhotosStatus = null,
    Object? deletingAccountStatus = null,
    Object? snackbarMessage = null,
    Object? hasPhotosReachedMax = null,
  }) {
    return _then(_$_ProfileState(
      userProfile: null == userProfile
          ? _value.userProfile
          : userProfile // ignore: cast_nullable_to_non_nullable
              as Option<UserProfile>,
      initialStatus: null == initialStatus
          ? _value.initialStatus
          : initialStatus // ignore: cast_nullable_to_non_nullable
              as CubitStatus,
      nextPagePhotosStatus: null == nextPagePhotosStatus
          ? _value.nextPagePhotosStatus
          : nextPagePhotosStatus // ignore: cast_nullable_to_non_nullable
              as CubitStatus,
      deletingAccountStatus: null == deletingAccountStatus
          ? _value.deletingAccountStatus
          : deletingAccountStatus // ignore: cast_nullable_to_non_nullable
              as CubitStatus,
      snackbarMessage: null == snackbarMessage
          ? _value.snackbarMessage
          : snackbarMessage // ignore: cast_nullable_to_non_nullable
              as Option<String>,
      hasPhotosReachedMax: null == hasPhotosReachedMax
          ? _value.hasPhotosReachedMax
          : hasPhotosReachedMax // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_ProfileState extends _ProfileState {
  _$_ProfileState(
      {required this.userProfile,
      required this.initialStatus,
      required this.nextPagePhotosStatus,
      required this.deletingAccountStatus,
      required this.snackbarMessage,
      required this.hasPhotosReachedMax})
      : super._();

  @override
  final Option<UserProfile> userProfile;
  @override
  final CubitStatus initialStatus;
  @override
  final CubitStatus nextPagePhotosStatus;
  @override
  final CubitStatus deletingAccountStatus;
  @override
  final Option<String> snackbarMessage;
  @override
  final bool hasPhotosReachedMax;

  @override
  String toString() {
    return 'ProfileState(userProfile: $userProfile, initialStatus: $initialStatus, nextPagePhotosStatus: $nextPagePhotosStatus, deletingAccountStatus: $deletingAccountStatus, snackbarMessage: $snackbarMessage, hasPhotosReachedMax: $hasPhotosReachedMax)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProfileState &&
            (identical(other.userProfile, userProfile) ||
                other.userProfile == userProfile) &&
            (identical(other.initialStatus, initialStatus) ||
                other.initialStatus == initialStatus) &&
            (identical(other.nextPagePhotosStatus, nextPagePhotosStatus) ||
                other.nextPagePhotosStatus == nextPagePhotosStatus) &&
            (identical(other.deletingAccountStatus, deletingAccountStatus) ||
                other.deletingAccountStatus == deletingAccountStatus) &&
            (identical(other.snackbarMessage, snackbarMessage) ||
                other.snackbarMessage == snackbarMessage) &&
            (identical(other.hasPhotosReachedMax, hasPhotosReachedMax) ||
                other.hasPhotosReachedMax == hasPhotosReachedMax));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      userProfile,
      initialStatus,
      nextPagePhotosStatus,
      deletingAccountStatus,
      snackbarMessage,
      hasPhotosReachedMax);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProfileStateCopyWith<_$_ProfileState> get copyWith =>
      __$$_ProfileStateCopyWithImpl<_$_ProfileState>(this, _$identity);
}

abstract class _ProfileState extends ProfileState {
  factory _ProfileState(
      {required final Option<UserProfile> userProfile,
      required final CubitStatus initialStatus,
      required final CubitStatus nextPagePhotosStatus,
      required final CubitStatus deletingAccountStatus,
      required final Option<String> snackbarMessage,
      required final bool hasPhotosReachedMax}) = _$_ProfileState;
  _ProfileState._() : super._();

  @override
  Option<UserProfile> get userProfile;
  @override
  CubitStatus get initialStatus;
  @override
  CubitStatus get nextPagePhotosStatus;
  @override
  CubitStatus get deletingAccountStatus;
  @override
  Option<String> get snackbarMessage;
  @override
  bool get hasPhotosReachedMax;
  @override
  @JsonKey(ignore: true)
  _$$_ProfileStateCopyWith<_$_ProfileState> get copyWith =>
      throw _privateConstructorUsedError;
}
