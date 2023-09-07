// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'challenge_story_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ChallengeStoryState {
  CubitStatus get likeStoryStatus => throw _privateConstructorUsedError;
  CubitStatus get deleteStoryStatus => throw _privateConstructorUsedError;
  Option<String> get snackbarMessage => throw _privateConstructorUsedError;
  List<UserStoriesWithInteractions> get userStoriesWithInteractions =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ChallengeStoryStateCopyWith<ChallengeStoryState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChallengeStoryStateCopyWith<$Res> {
  factory $ChallengeStoryStateCopyWith(
          ChallengeStoryState value, $Res Function(ChallengeStoryState) then) =
      _$ChallengeStoryStateCopyWithImpl<$Res, ChallengeStoryState>;
  @useResult
  $Res call(
      {CubitStatus likeStoryStatus,
      CubitStatus deleteStoryStatus,
      Option<String> snackbarMessage,
      List<UserStoriesWithInteractions> userStoriesWithInteractions});
}

/// @nodoc
class _$ChallengeStoryStateCopyWithImpl<$Res, $Val extends ChallengeStoryState>
    implements $ChallengeStoryStateCopyWith<$Res> {
  _$ChallengeStoryStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? likeStoryStatus = null,
    Object? deleteStoryStatus = null,
    Object? snackbarMessage = null,
    Object? userStoriesWithInteractions = null,
  }) {
    return _then(_value.copyWith(
      likeStoryStatus: null == likeStoryStatus
          ? _value.likeStoryStatus
          : likeStoryStatus // ignore: cast_nullable_to_non_nullable
              as CubitStatus,
      deleteStoryStatus: null == deleteStoryStatus
          ? _value.deleteStoryStatus
          : deleteStoryStatus // ignore: cast_nullable_to_non_nullable
              as CubitStatus,
      snackbarMessage: null == snackbarMessage
          ? _value.snackbarMessage
          : snackbarMessage // ignore: cast_nullable_to_non_nullable
              as Option<String>,
      userStoriesWithInteractions: null == userStoriesWithInteractions
          ? _value.userStoriesWithInteractions
          : userStoriesWithInteractions // ignore: cast_nullable_to_non_nullable
              as List<UserStoriesWithInteractions>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ChallengeStoryStateCopyWith<$Res>
    implements $ChallengeStoryStateCopyWith<$Res> {
  factory _$$_ChallengeStoryStateCopyWith(_$_ChallengeStoryState value,
          $Res Function(_$_ChallengeStoryState) then) =
      __$$_ChallengeStoryStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {CubitStatus likeStoryStatus,
      CubitStatus deleteStoryStatus,
      Option<String> snackbarMessage,
      List<UserStoriesWithInteractions> userStoriesWithInteractions});
}

/// @nodoc
class __$$_ChallengeStoryStateCopyWithImpl<$Res>
    extends _$ChallengeStoryStateCopyWithImpl<$Res, _$_ChallengeStoryState>
    implements _$$_ChallengeStoryStateCopyWith<$Res> {
  __$$_ChallengeStoryStateCopyWithImpl(_$_ChallengeStoryState _value,
      $Res Function(_$_ChallengeStoryState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? likeStoryStatus = null,
    Object? deleteStoryStatus = null,
    Object? snackbarMessage = null,
    Object? userStoriesWithInteractions = null,
  }) {
    return _then(_$_ChallengeStoryState(
      likeStoryStatus: null == likeStoryStatus
          ? _value.likeStoryStatus
          : likeStoryStatus // ignore: cast_nullable_to_non_nullable
              as CubitStatus,
      deleteStoryStatus: null == deleteStoryStatus
          ? _value.deleteStoryStatus
          : deleteStoryStatus // ignore: cast_nullable_to_non_nullable
              as CubitStatus,
      snackbarMessage: null == snackbarMessage
          ? _value.snackbarMessage
          : snackbarMessage // ignore: cast_nullable_to_non_nullable
              as Option<String>,
      userStoriesWithInteractions: null == userStoriesWithInteractions
          ? _value._userStoriesWithInteractions
          : userStoriesWithInteractions // ignore: cast_nullable_to_non_nullable
              as List<UserStoriesWithInteractions>,
    ));
  }
}

/// @nodoc

class _$_ChallengeStoryState implements _ChallengeStoryState {
  const _$_ChallengeStoryState(
      {required this.likeStoryStatus,
      required this.deleteStoryStatus,
      required this.snackbarMessage,
      required final List<UserStoriesWithInteractions>
          userStoriesWithInteractions})
      : _userStoriesWithInteractions = userStoriesWithInteractions;

  @override
  final CubitStatus likeStoryStatus;
  @override
  final CubitStatus deleteStoryStatus;
  @override
  final Option<String> snackbarMessage;
  final List<UserStoriesWithInteractions> _userStoriesWithInteractions;
  @override
  List<UserStoriesWithInteractions> get userStoriesWithInteractions {
    if (_userStoriesWithInteractions is EqualUnmodifiableListView)
      return _userStoriesWithInteractions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_userStoriesWithInteractions);
  }

  @override
  String toString() {
    return 'ChallengeStoryState(likeStoryStatus: $likeStoryStatus, deleteStoryStatus: $deleteStoryStatus, snackbarMessage: $snackbarMessage, userStoriesWithInteractions: $userStoriesWithInteractions)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChallengeStoryState &&
            (identical(other.likeStoryStatus, likeStoryStatus) ||
                other.likeStoryStatus == likeStoryStatus) &&
            (identical(other.deleteStoryStatus, deleteStoryStatus) ||
                other.deleteStoryStatus == deleteStoryStatus) &&
            (identical(other.snackbarMessage, snackbarMessage) ||
                other.snackbarMessage == snackbarMessage) &&
            const DeepCollectionEquality().equals(
                other._userStoriesWithInteractions,
                _userStoriesWithInteractions));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      likeStoryStatus,
      deleteStoryStatus,
      snackbarMessage,
      const DeepCollectionEquality().hash(_userStoriesWithInteractions));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChallengeStoryStateCopyWith<_$_ChallengeStoryState> get copyWith =>
      __$$_ChallengeStoryStateCopyWithImpl<_$_ChallengeStoryState>(
          this, _$identity);
}

abstract class _ChallengeStoryState implements ChallengeStoryState {
  const factory _ChallengeStoryState(
      {required final CubitStatus likeStoryStatus,
      required final CubitStatus deleteStoryStatus,
      required final Option<String> snackbarMessage,
      required final List<UserStoriesWithInteractions>
          userStoriesWithInteractions}) = _$_ChallengeStoryState;

  @override
  CubitStatus get likeStoryStatus;
  @override
  CubitStatus get deleteStoryStatus;
  @override
  Option<String> get snackbarMessage;
  @override
  List<UserStoriesWithInteractions> get userStoriesWithInteractions;
  @override
  @JsonKey(ignore: true)
  _$$_ChallengeStoryStateCopyWith<_$_ChallengeStoryState> get copyWith =>
      throw _privateConstructorUsedError;
}
