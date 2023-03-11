// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'club_favorite_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ClubFavoriteState {
  List<Club> get favoriteClubs => throw _privateConstructorUsedError;
  CubitStatus get status => throw _privateConstructorUsedError;
  bool get isChangingFavoriteStatus => throw _privateConstructorUsedError;
  Option<String> get snackbarMessage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ClubFavoriteStateCopyWith<ClubFavoriteState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClubFavoriteStateCopyWith<$Res> {
  factory $ClubFavoriteStateCopyWith(
          ClubFavoriteState value, $Res Function(ClubFavoriteState) then) =
      _$ClubFavoriteStateCopyWithImpl<$Res, ClubFavoriteState>;
  @useResult
  $Res call(
      {List<Club> favoriteClubs,
      CubitStatus status,
      bool isChangingFavoriteStatus,
      Option<String> snackbarMessage});
}

/// @nodoc
class _$ClubFavoriteStateCopyWithImpl<$Res, $Val extends ClubFavoriteState>
    implements $ClubFavoriteStateCopyWith<$Res> {
  _$ClubFavoriteStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? favoriteClubs = null,
    Object? status = null,
    Object? isChangingFavoriteStatus = null,
    Object? snackbarMessage = null,
  }) {
    return _then(_value.copyWith(
      favoriteClubs: null == favoriteClubs
          ? _value.favoriteClubs
          : favoriteClubs // ignore: cast_nullable_to_non_nullable
              as List<Club>,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as CubitStatus,
      isChangingFavoriteStatus: null == isChangingFavoriteStatus
          ? _value.isChangingFavoriteStatus
          : isChangingFavoriteStatus // ignore: cast_nullable_to_non_nullable
              as bool,
      snackbarMessage: null == snackbarMessage
          ? _value.snackbarMessage
          : snackbarMessage // ignore: cast_nullable_to_non_nullable
              as Option<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ClubFavoriteStateCopyWith<$Res>
    implements $ClubFavoriteStateCopyWith<$Res> {
  factory _$$_ClubFavoriteStateCopyWith(_$_ClubFavoriteState value,
          $Res Function(_$_ClubFavoriteState) then) =
      __$$_ClubFavoriteStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<Club> favoriteClubs,
      CubitStatus status,
      bool isChangingFavoriteStatus,
      Option<String> snackbarMessage});
}

/// @nodoc
class __$$_ClubFavoriteStateCopyWithImpl<$Res>
    extends _$ClubFavoriteStateCopyWithImpl<$Res, _$_ClubFavoriteState>
    implements _$$_ClubFavoriteStateCopyWith<$Res> {
  __$$_ClubFavoriteStateCopyWithImpl(
      _$_ClubFavoriteState _value, $Res Function(_$_ClubFavoriteState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? favoriteClubs = null,
    Object? status = null,
    Object? isChangingFavoriteStatus = null,
    Object? snackbarMessage = null,
  }) {
    return _then(_$_ClubFavoriteState(
      favoriteClubs: null == favoriteClubs
          ? _value._favoriteClubs
          : favoriteClubs // ignore: cast_nullable_to_non_nullable
              as List<Club>,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as CubitStatus,
      isChangingFavoriteStatus: null == isChangingFavoriteStatus
          ? _value.isChangingFavoriteStatus
          : isChangingFavoriteStatus // ignore: cast_nullable_to_non_nullable
              as bool,
      snackbarMessage: null == snackbarMessage
          ? _value.snackbarMessage
          : snackbarMessage // ignore: cast_nullable_to_non_nullable
              as Option<String>,
    ));
  }
}

/// @nodoc

class _$_ClubFavoriteState implements _ClubFavoriteState {
  const _$_ClubFavoriteState(
      {required final List<Club> favoriteClubs,
      required this.status,
      required this.isChangingFavoriteStatus,
      required this.snackbarMessage})
      : _favoriteClubs = favoriteClubs;

  final List<Club> _favoriteClubs;
  @override
  List<Club> get favoriteClubs {
    if (_favoriteClubs is EqualUnmodifiableListView) return _favoriteClubs;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_favoriteClubs);
  }

  @override
  final CubitStatus status;
  @override
  final bool isChangingFavoriteStatus;
  @override
  final Option<String> snackbarMessage;

  @override
  String toString() {
    return 'ClubFavoriteState(favoriteClubs: $favoriteClubs, status: $status, isChangingFavoriteStatus: $isChangingFavoriteStatus, snackbarMessage: $snackbarMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ClubFavoriteState &&
            const DeepCollectionEquality()
                .equals(other._favoriteClubs, _favoriteClubs) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(
                    other.isChangingFavoriteStatus, isChangingFavoriteStatus) ||
                other.isChangingFavoriteStatus == isChangingFavoriteStatus) &&
            (identical(other.snackbarMessage, snackbarMessage) ||
                other.snackbarMessage == snackbarMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_favoriteClubs),
      status,
      isChangingFavoriteStatus,
      snackbarMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ClubFavoriteStateCopyWith<_$_ClubFavoriteState> get copyWith =>
      __$$_ClubFavoriteStateCopyWithImpl<_$_ClubFavoriteState>(
          this, _$identity);
}

abstract class _ClubFavoriteState implements ClubFavoriteState {
  const factory _ClubFavoriteState(
      {required final List<Club> favoriteClubs,
      required final CubitStatus status,
      required final bool isChangingFavoriteStatus,
      required final Option<String> snackbarMessage}) = _$_ClubFavoriteState;

  @override
  List<Club> get favoriteClubs;
  @override
  CubitStatus get status;
  @override
  bool get isChangingFavoriteStatus;
  @override
  Option<String> get snackbarMessage;
  @override
  @JsonKey(ignore: true)
  _$$_ClubFavoriteStateCopyWith<_$_ClubFavoriteState> get copyWith =>
      throw _privateConstructorUsedError;
}
