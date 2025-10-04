// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_user_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ChatUser {
  Color get color => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  String get username => throw _privateConstructorUsedError;
  String? get userPictureUrl => throw _privateConstructorUsedError;
  bool get isUserDeleted => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ChatUserCopyWith<ChatUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatUserCopyWith<$Res> {
  factory $ChatUserCopyWith(ChatUser value, $Res Function(ChatUser) then) =
      _$ChatUserCopyWithImpl<$Res, ChatUser>;
  @useResult
  $Res call(
      {Color color,
      String userId,
      String username,
      String? userPictureUrl,
      bool isUserDeleted});
}

/// @nodoc
class _$ChatUserCopyWithImpl<$Res, $Val extends ChatUser>
    implements $ChatUserCopyWith<$Res> {
  _$ChatUserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? color = null,
    Object? userId = null,
    Object? username = null,
    Object? userPictureUrl = freezed,
    Object? isUserDeleted = null,
  }) {
    return _then(_value.copyWith(
      color: null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as Color,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      userPictureUrl: freezed == userPictureUrl
          ? _value.userPictureUrl
          : userPictureUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      isUserDeleted: null == isUserDeleted
          ? _value.isUserDeleted
          : isUserDeleted // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ChatUserImplCopyWith<$Res>
    implements $ChatUserCopyWith<$Res> {
  factory _$$ChatUserImplCopyWith(
          _$ChatUserImpl value, $Res Function(_$ChatUserImpl) then) =
      __$$ChatUserImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Color color,
      String userId,
      String username,
      String? userPictureUrl,
      bool isUserDeleted});
}

/// @nodoc
class __$$ChatUserImplCopyWithImpl<$Res>
    extends _$ChatUserCopyWithImpl<$Res, _$ChatUserImpl>
    implements _$$ChatUserImplCopyWith<$Res> {
  __$$ChatUserImplCopyWithImpl(
      _$ChatUserImpl _value, $Res Function(_$ChatUserImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? color = null,
    Object? userId = null,
    Object? username = null,
    Object? userPictureUrl = freezed,
    Object? isUserDeleted = null,
  }) {
    return _then(_$ChatUserImpl(
      color: null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as Color,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      userPictureUrl: freezed == userPictureUrl
          ? _value.userPictureUrl
          : userPictureUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      isUserDeleted: null == isUserDeleted
          ? _value.isUserDeleted
          : isUserDeleted // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$ChatUserImpl extends _ChatUser {
  const _$ChatUserImpl(
      {required this.color,
      required this.userId,
      required this.username,
      this.userPictureUrl,
      this.isUserDeleted = false})
      : super._();

  @override
  final Color color;
  @override
  final String userId;
  @override
  final String username;
  @override
  final String? userPictureUrl;
  @override
  @JsonKey()
  final bool isUserDeleted;

  @override
  String toString() {
    return 'ChatUser(color: $color, userId: $userId, username: $username, userPictureUrl: $userPictureUrl, isUserDeleted: $isUserDeleted)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatUserImpl &&
            (identical(other.color, color) || other.color == color) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.userPictureUrl, userPictureUrl) ||
                other.userPictureUrl == userPictureUrl) &&
            (identical(other.isUserDeleted, isUserDeleted) ||
                other.isUserDeleted == isUserDeleted));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, color, userId, username, userPictureUrl, isUserDeleted);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatUserImplCopyWith<_$ChatUserImpl> get copyWith =>
      __$$ChatUserImplCopyWithImpl<_$ChatUserImpl>(this, _$identity);
}

abstract class _ChatUser extends ChatUser {
  const factory _ChatUser(
      {required final Color color,
      required final String userId,
      required final String username,
      final String? userPictureUrl,
      final bool isUserDeleted}) = _$ChatUserImpl;
  const _ChatUser._() : super._();

  @override
  Color get color;
  @override
  String get userId;
  @override
  String get username;
  @override
  String? get userPictureUrl;
  @override
  bool get isUserDeleted;
  @override
  @JsonKey(ignore: true)
  _$$ChatUserImplCopyWith<_$ChatUserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
