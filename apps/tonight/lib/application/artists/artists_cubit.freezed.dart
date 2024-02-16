// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'artists_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ArtistsState {
  CubitStatus get getArtistsStatus => throw _privateConstructorUsedError;
  List<Artist> get artists => throw _privateConstructorUsedError;
  Option<String> get snackbarMessage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ArtistsStateCopyWith<ArtistsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArtistsStateCopyWith<$Res> {
  factory $ArtistsStateCopyWith(
          ArtistsState value, $Res Function(ArtistsState) then) =
      _$ArtistsStateCopyWithImpl<$Res, ArtistsState>;
  @useResult
  $Res call(
      {CubitStatus getArtistsStatus,
      List<Artist> artists,
      Option<String> snackbarMessage});
}

/// @nodoc
class _$ArtistsStateCopyWithImpl<$Res, $Val extends ArtistsState>
    implements $ArtistsStateCopyWith<$Res> {
  _$ArtistsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? getArtistsStatus = null,
    Object? artists = null,
    Object? snackbarMessage = null,
  }) {
    return _then(_value.copyWith(
      getArtistsStatus: null == getArtistsStatus
          ? _value.getArtistsStatus
          : getArtistsStatus // ignore: cast_nullable_to_non_nullable
              as CubitStatus,
      artists: null == artists
          ? _value.artists
          : artists // ignore: cast_nullable_to_non_nullable
              as List<Artist>,
      snackbarMessage: null == snackbarMessage
          ? _value.snackbarMessage
          : snackbarMessage // ignore: cast_nullable_to_non_nullable
              as Option<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ArtistsStateImplCopyWith<$Res>
    implements $ArtistsStateCopyWith<$Res> {
  factory _$$ArtistsStateImplCopyWith(
          _$ArtistsStateImpl value, $Res Function(_$ArtistsStateImpl) then) =
      __$$ArtistsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {CubitStatus getArtistsStatus,
      List<Artist> artists,
      Option<String> snackbarMessage});
}

/// @nodoc
class __$$ArtistsStateImplCopyWithImpl<$Res>
    extends _$ArtistsStateCopyWithImpl<$Res, _$ArtistsStateImpl>
    implements _$$ArtistsStateImplCopyWith<$Res> {
  __$$ArtistsStateImplCopyWithImpl(
      _$ArtistsStateImpl _value, $Res Function(_$ArtistsStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? getArtistsStatus = null,
    Object? artists = null,
    Object? snackbarMessage = null,
  }) {
    return _then(_$ArtistsStateImpl(
      getArtistsStatus: null == getArtistsStatus
          ? _value.getArtistsStatus
          : getArtistsStatus // ignore: cast_nullable_to_non_nullable
              as CubitStatus,
      artists: null == artists
          ? _value._artists
          : artists // ignore: cast_nullable_to_non_nullable
              as List<Artist>,
      snackbarMessage: null == snackbarMessage
          ? _value.snackbarMessage
          : snackbarMessage // ignore: cast_nullable_to_non_nullable
              as Option<String>,
    ));
  }
}

/// @nodoc

class _$ArtistsStateImpl implements _ArtistsState {
  const _$ArtistsStateImpl(
      {required this.getArtistsStatus,
      required final List<Artist> artists,
      required this.snackbarMessage})
      : _artists = artists;

  @override
  final CubitStatus getArtistsStatus;
  final List<Artist> _artists;
  @override
  List<Artist> get artists {
    if (_artists is EqualUnmodifiableListView) return _artists;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_artists);
  }

  @override
  final Option<String> snackbarMessage;

  @override
  String toString() {
    return 'ArtistsState(getArtistsStatus: $getArtistsStatus, artists: $artists, snackbarMessage: $snackbarMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ArtistsStateImpl &&
            (identical(other.getArtistsStatus, getArtistsStatus) ||
                other.getArtistsStatus == getArtistsStatus) &&
            const DeepCollectionEquality().equals(other._artists, _artists) &&
            (identical(other.snackbarMessage, snackbarMessage) ||
                other.snackbarMessage == snackbarMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, getArtistsStatus,
      const DeepCollectionEquality().hash(_artists), snackbarMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ArtistsStateImplCopyWith<_$ArtistsStateImpl> get copyWith =>
      __$$ArtistsStateImplCopyWithImpl<_$ArtistsStateImpl>(this, _$identity);
}

abstract class _ArtistsState implements ArtistsState {
  const factory _ArtistsState(
      {required final CubitStatus getArtistsStatus,
      required final List<Artist> artists,
      required final Option<String> snackbarMessage}) = _$ArtistsStateImpl;

  @override
  CubitStatus get getArtistsStatus;
  @override
  List<Artist> get artists;
  @override
  Option<String> get snackbarMessage;
  @override
  @JsonKey(ignore: true)
  _$$ArtistsStateImplCopyWith<_$ArtistsStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
