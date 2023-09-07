// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_stories_with_interactions.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UserStoriesWithInteractions {
  String get userId => throw _privateConstructorUsedError;
  String get username => throw _privateConstructorUsedError;
  String get userProfilePhotoUrl => throw _privateConstructorUsedError;
  bool get isCurrentUser => throw _privateConstructorUsedError;
  List<ChallengeStoryWithInteractions> get stories =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserStoriesWithInteractionsCopyWith<UserStoriesWithInteractions>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserStoriesWithInteractionsCopyWith<$Res> {
  factory $UserStoriesWithInteractionsCopyWith(
          UserStoriesWithInteractions value,
          $Res Function(UserStoriesWithInteractions) then) =
      _$UserStoriesWithInteractionsCopyWithImpl<$Res,
          UserStoriesWithInteractions>;
  @useResult
  $Res call(
      {String userId,
      String username,
      String userProfilePhotoUrl,
      bool isCurrentUser,
      List<ChallengeStoryWithInteractions> stories});
}

/// @nodoc
class _$UserStoriesWithInteractionsCopyWithImpl<$Res,
        $Val extends UserStoriesWithInteractions>
    implements $UserStoriesWithInteractionsCopyWith<$Res> {
  _$UserStoriesWithInteractionsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? username = null,
    Object? userProfilePhotoUrl = null,
    Object? isCurrentUser = null,
    Object? stories = null,
  }) {
    return _then(_value.copyWith(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      userProfilePhotoUrl: null == userProfilePhotoUrl
          ? _value.userProfilePhotoUrl
          : userProfilePhotoUrl // ignore: cast_nullable_to_non_nullable
              as String,
      isCurrentUser: null == isCurrentUser
          ? _value.isCurrentUser
          : isCurrentUser // ignore: cast_nullable_to_non_nullable
              as bool,
      stories: null == stories
          ? _value.stories
          : stories // ignore: cast_nullable_to_non_nullable
              as List<ChallengeStoryWithInteractions>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UserStoriesWithInteractionsCopyWith<$Res>
    implements $UserStoriesWithInteractionsCopyWith<$Res> {
  factory _$$_UserStoriesWithInteractionsCopyWith(
          _$_UserStoriesWithInteractions value,
          $Res Function(_$_UserStoriesWithInteractions) then) =
      __$$_UserStoriesWithInteractionsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String userId,
      String username,
      String userProfilePhotoUrl,
      bool isCurrentUser,
      List<ChallengeStoryWithInteractions> stories});
}

/// @nodoc
class __$$_UserStoriesWithInteractionsCopyWithImpl<$Res>
    extends _$UserStoriesWithInteractionsCopyWithImpl<$Res,
        _$_UserStoriesWithInteractions>
    implements _$$_UserStoriesWithInteractionsCopyWith<$Res> {
  __$$_UserStoriesWithInteractionsCopyWithImpl(
      _$_UserStoriesWithInteractions _value,
      $Res Function(_$_UserStoriesWithInteractions) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? username = null,
    Object? userProfilePhotoUrl = null,
    Object? isCurrentUser = null,
    Object? stories = null,
  }) {
    return _then(_$_UserStoriesWithInteractions(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      userProfilePhotoUrl: null == userProfilePhotoUrl
          ? _value.userProfilePhotoUrl
          : userProfilePhotoUrl // ignore: cast_nullable_to_non_nullable
              as String,
      isCurrentUser: null == isCurrentUser
          ? _value.isCurrentUser
          : isCurrentUser // ignore: cast_nullable_to_non_nullable
              as bool,
      stories: null == stories
          ? _value._stories
          : stories // ignore: cast_nullable_to_non_nullable
              as List<ChallengeStoryWithInteractions>,
    ));
  }
}

/// @nodoc

class _$_UserStoriesWithInteractions implements _UserStoriesWithInteractions {
  const _$_UserStoriesWithInteractions(
      {required this.userId,
      required this.username,
      required this.userProfilePhotoUrl,
      required this.isCurrentUser,
      required final List<ChallengeStoryWithInteractions> stories})
      : _stories = stories;

  @override
  final String userId;
  @override
  final String username;
  @override
  final String userProfilePhotoUrl;
  @override
  final bool isCurrentUser;
  final List<ChallengeStoryWithInteractions> _stories;
  @override
  List<ChallengeStoryWithInteractions> get stories {
    if (_stories is EqualUnmodifiableListView) return _stories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_stories);
  }

  @override
  String toString() {
    return 'UserStoriesWithInteractions(userId: $userId, username: $username, userProfilePhotoUrl: $userProfilePhotoUrl, isCurrentUser: $isCurrentUser, stories: $stories)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserStoriesWithInteractions &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.userProfilePhotoUrl, userProfilePhotoUrl) ||
                other.userProfilePhotoUrl == userProfilePhotoUrl) &&
            (identical(other.isCurrentUser, isCurrentUser) ||
                other.isCurrentUser == isCurrentUser) &&
            const DeepCollectionEquality().equals(other._stories, _stories));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      userId,
      username,
      userProfilePhotoUrl,
      isCurrentUser,
      const DeepCollectionEquality().hash(_stories));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserStoriesWithInteractionsCopyWith<_$_UserStoriesWithInteractions>
      get copyWith => __$$_UserStoriesWithInteractionsCopyWithImpl<
          _$_UserStoriesWithInteractions>(this, _$identity);
}

abstract class _UserStoriesWithInteractions
    implements UserStoriesWithInteractions {
  const factory _UserStoriesWithInteractions(
          {required final String userId,
          required final String username,
          required final String userProfilePhotoUrl,
          required final bool isCurrentUser,
          required final List<ChallengeStoryWithInteractions> stories}) =
      _$_UserStoriesWithInteractions;

  @override
  String get userId;
  @override
  String get username;
  @override
  String get userProfilePhotoUrl;
  @override
  bool get isCurrentUser;
  @override
  List<ChallengeStoryWithInteractions> get stories;
  @override
  @JsonKey(ignore: true)
  _$$_UserStoriesWithInteractionsCopyWith<_$_UserStoriesWithInteractions>
      get copyWith => throw _privateConstructorUsedError;
}
