// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'event_participant_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$EventParticipant {
  Color get color => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  String get username => throw _privateConstructorUsedError;
  String? get profilePictureUrl => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EventParticipantCopyWith<EventParticipant> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EventParticipantCopyWith<$Res> {
  factory $EventParticipantCopyWith(
          EventParticipant value, $Res Function(EventParticipant) then) =
      _$EventParticipantCopyWithImpl<$Res, EventParticipant>;
  @useResult
  $Res call(
      {Color color, String userId, String username, String? profilePictureUrl});
}

/// @nodoc
class _$EventParticipantCopyWithImpl<$Res, $Val extends EventParticipant>
    implements $EventParticipantCopyWith<$Res> {
  _$EventParticipantCopyWithImpl(this._value, this._then);

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
    Object? profilePictureUrl = freezed,
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
      profilePictureUrl: freezed == profilePictureUrl
          ? _value.profilePictureUrl
          : profilePictureUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EventParticipantImplCopyWith<$Res>
    implements $EventParticipantCopyWith<$Res> {
  factory _$$EventParticipantImplCopyWith(_$EventParticipantImpl value,
          $Res Function(_$EventParticipantImpl) then) =
      __$$EventParticipantImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Color color, String userId, String username, String? profilePictureUrl});
}

/// @nodoc
class __$$EventParticipantImplCopyWithImpl<$Res>
    extends _$EventParticipantCopyWithImpl<$Res, _$EventParticipantImpl>
    implements _$$EventParticipantImplCopyWith<$Res> {
  __$$EventParticipantImplCopyWithImpl(_$EventParticipantImpl _value,
      $Res Function(_$EventParticipantImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? color = null,
    Object? userId = null,
    Object? username = null,
    Object? profilePictureUrl = freezed,
  }) {
    return _then(_$EventParticipantImpl(
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
      profilePictureUrl: freezed == profilePictureUrl
          ? _value.profilePictureUrl
          : profilePictureUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$EventParticipantImpl extends _EventParticipant {
  const _$EventParticipantImpl(
      {required this.color,
      required this.userId,
      required this.username,
      this.profilePictureUrl})
      : super._();

  @override
  final Color color;
  @override
  final String userId;
  @override
  final String username;
  @override
  final String? profilePictureUrl;

  @override
  String toString() {
    return 'EventParticipant(color: $color, userId: $userId, username: $username, profilePictureUrl: $profilePictureUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EventParticipantImpl &&
            (identical(other.color, color) || other.color == color) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.profilePictureUrl, profilePictureUrl) ||
                other.profilePictureUrl == profilePictureUrl));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, color, userId, username, profilePictureUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EventParticipantImplCopyWith<_$EventParticipantImpl> get copyWith =>
      __$$EventParticipantImplCopyWithImpl<_$EventParticipantImpl>(
          this, _$identity);
}

abstract class _EventParticipant extends EventParticipant {
  const factory _EventParticipant(
      {required final Color color,
      required final String userId,
      required final String username,
      final String? profilePictureUrl}) = _$EventParticipantImpl;
  const _EventParticipant._() : super._();

  @override
  Color get color;
  @override
  String get userId;
  @override
  String get username;
  @override
  String? get profilePictureUrl;
  @override
  @JsonKey(ignore: true)
  _$$EventParticipantImplCopyWith<_$EventParticipantImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
