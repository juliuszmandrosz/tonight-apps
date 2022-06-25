// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user_profile_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserProfileDto _$UserProfileDtoFromJson(Map<String, dynamic> json) {
  return _UserProfileDto.fromJson(json);
}

/// @nodoc
mixin _$UserProfileDto {
  @JsonKey(ignore: true)
  String? get id => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get username => throw _privateConstructorUsedError;
  List<String> get favoriteClubIds => throw _privateConstructorUsedError;
  List<String> get favoriteEventIds => throw _privateConstructorUsedError;
  Map<String, int> get attendance => throw _privateConstructorUsedError;
  List<String> get pushNotificationTokens => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserProfileDtoCopyWith<UserProfileDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserProfileDtoCopyWith<$Res> {
  factory $UserProfileDtoCopyWith(
          UserProfileDto value, $Res Function(UserProfileDto) then) =
      _$UserProfileDtoCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(ignore: true) String? id,
      String email,
      String username,
      List<String> favoriteClubIds,
      List<String> favoriteEventIds,
      Map<String, int> attendance,
      List<String> pushNotificationTokens});
}

/// @nodoc
class _$UserProfileDtoCopyWithImpl<$Res>
    implements $UserProfileDtoCopyWith<$Res> {
  _$UserProfileDtoCopyWithImpl(this._value, this._then);

  final UserProfileDto _value;
  // ignore: unused_field
  final $Res Function(UserProfileDto) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? email = freezed,
    Object? username = freezed,
    Object? favoriteClubIds = freezed,
    Object? favoriteEventIds = freezed,
    Object? attendance = freezed,
    Object? pushNotificationTokens = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      favoriteClubIds: favoriteClubIds == freezed
          ? _value.favoriteClubIds
          : favoriteClubIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      favoriteEventIds: favoriteEventIds == freezed
          ? _value.favoriteEventIds
          : favoriteEventIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      attendance: attendance == freezed
          ? _value.attendance
          : attendance // ignore: cast_nullable_to_non_nullable
              as Map<String, int>,
      pushNotificationTokens: pushNotificationTokens == freezed
          ? _value.pushNotificationTokens
          : pushNotificationTokens // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
abstract class _$$_UserProfileDtoCopyWith<$Res>
    implements $UserProfileDtoCopyWith<$Res> {
  factory _$$_UserProfileDtoCopyWith(
          _$_UserProfileDto value, $Res Function(_$_UserProfileDto) then) =
      __$$_UserProfileDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(ignore: true) String? id,
      String email,
      String username,
      List<String> favoriteClubIds,
      List<String> favoriteEventIds,
      Map<String, int> attendance,
      List<String> pushNotificationTokens});
}

/// @nodoc
class __$$_UserProfileDtoCopyWithImpl<$Res>
    extends _$UserProfileDtoCopyWithImpl<$Res>
    implements _$$_UserProfileDtoCopyWith<$Res> {
  __$$_UserProfileDtoCopyWithImpl(
      _$_UserProfileDto _value, $Res Function(_$_UserProfileDto) _then)
      : super(_value, (v) => _then(v as _$_UserProfileDto));

  @override
  _$_UserProfileDto get _value => super._value as _$_UserProfileDto;

  @override
  $Res call({
    Object? id = freezed,
    Object? email = freezed,
    Object? username = freezed,
    Object? favoriteClubIds = freezed,
    Object? favoriteEventIds = freezed,
    Object? attendance = freezed,
    Object? pushNotificationTokens = freezed,
  }) {
    return _then(_$_UserProfileDto(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      favoriteClubIds: favoriteClubIds == freezed
          ? _value._favoriteClubIds
          : favoriteClubIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      favoriteEventIds: favoriteEventIds == freezed
          ? _value._favoriteEventIds
          : favoriteEventIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      attendance: attendance == freezed
          ? _value._attendance
          : attendance // ignore: cast_nullable_to_non_nullable
              as Map<String, int>,
      pushNotificationTokens: pushNotificationTokens == freezed
          ? _value._pushNotificationTokens
          : pushNotificationTokens // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

@JsonSerializable()
class _$_UserProfileDto extends _UserProfileDto {
  const _$_UserProfileDto(
      {@JsonKey(ignore: true) this.id,
      required this.email,
      this.username = '',
      final List<String> favoriteClubIds = const [],
      final List<String> favoriteEventIds = const [],
      final Map<String, int> attendance = const {},
      final List<String> pushNotificationTokens = const []})
      : _favoriteClubIds = favoriteClubIds,
        _favoriteEventIds = favoriteEventIds,
        _attendance = attendance,
        _pushNotificationTokens = pushNotificationTokens,
        super._();

  factory _$_UserProfileDto.fromJson(Map<String, dynamic> json) =>
      _$$_UserProfileDtoFromJson(json);

  @override
  @JsonKey(ignore: true)
  final String? id;
  @override
  final String email;
  @override
  @JsonKey()
  final String username;
  final List<String> _favoriteClubIds;
  @override
  @JsonKey()
  List<String> get favoriteClubIds {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_favoriteClubIds);
  }

  final List<String> _favoriteEventIds;
  @override
  @JsonKey()
  List<String> get favoriteEventIds {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_favoriteEventIds);
  }

  final Map<String, int> _attendance;
  @override
  @JsonKey()
  Map<String, int> get attendance {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_attendance);
  }

  final List<String> _pushNotificationTokens;
  @override
  @JsonKey()
  List<String> get pushNotificationTokens {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_pushNotificationTokens);
  }

  @override
  String toString() {
    return 'UserProfileDto(id: $id, email: $email, username: $username, favoriteClubIds: $favoriteClubIds, favoriteEventIds: $favoriteEventIds, attendance: $attendance, pushNotificationTokens: $pushNotificationTokens)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserProfileDto &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality().equals(other.username, username) &&
            const DeepCollectionEquality()
                .equals(other._favoriteClubIds, _favoriteClubIds) &&
            const DeepCollectionEquality()
                .equals(other._favoriteEventIds, _favoriteEventIds) &&
            const DeepCollectionEquality()
                .equals(other._attendance, _attendance) &&
            const DeepCollectionEquality().equals(
                other._pushNotificationTokens, _pushNotificationTokens));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(email),
      const DeepCollectionEquality().hash(username),
      const DeepCollectionEquality().hash(_favoriteClubIds),
      const DeepCollectionEquality().hash(_favoriteEventIds),
      const DeepCollectionEquality().hash(_attendance),
      const DeepCollectionEquality().hash(_pushNotificationTokens));

  @JsonKey(ignore: true)
  @override
  _$$_UserProfileDtoCopyWith<_$_UserProfileDto> get copyWith =>
      __$$_UserProfileDtoCopyWithImpl<_$_UserProfileDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserProfileDtoToJson(this);
  }
}

abstract class _UserProfileDto extends UserProfileDto {
  const factory _UserProfileDto(
      {@JsonKey(ignore: true) final String? id,
      required final String email,
      final String username,
      final List<String> favoriteClubIds,
      final List<String> favoriteEventIds,
      final Map<String, int> attendance,
      final List<String> pushNotificationTokens}) = _$_UserProfileDto;
  const _UserProfileDto._() : super._();

  factory _UserProfileDto.fromJson(Map<String, dynamic> json) =
      _$_UserProfileDto.fromJson;

  @override
  @JsonKey(ignore: true)
  String? get id => throw _privateConstructorUsedError;
  @override
  String get email => throw _privateConstructorUsedError;
  @override
  String get username => throw _privateConstructorUsedError;
  @override
  List<String> get favoriteClubIds => throw _privateConstructorUsedError;
  @override
  List<String> get favoriteEventIds => throw _privateConstructorUsedError;
  @override
  Map<String, int> get attendance => throw _privateConstructorUsedError;
  @override
  List<String> get pushNotificationTokens => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_UserProfileDtoCopyWith<_$_UserProfileDto> get copyWith =>
      throw _privateConstructorUsedError;
}
