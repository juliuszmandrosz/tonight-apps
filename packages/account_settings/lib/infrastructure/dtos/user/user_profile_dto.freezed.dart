// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

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
  String get profilePictureUrl => throw _privateConstructorUsedError;
  String get username => throw _privateConstructorUsedError;
  List<String> get favoriteClubIds => throw _privateConstructorUsedError;
  List<String> get favoriteEventIds => throw _privateConstructorUsedError;
  Map<String, int> get attendance => throw _privateConstructorUsedError;
  List<String> get pushNotificationTokens => throw _privateConstructorUsedError;
  int get raverCoins => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserProfileDtoCopyWith<UserProfileDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserProfileDtoCopyWith<$Res> {
  factory $UserProfileDtoCopyWith(
          UserProfileDto value, $Res Function(UserProfileDto) then) =
      _$UserProfileDtoCopyWithImpl<$Res, UserProfileDto>;
  @useResult
  $Res call(
      {@JsonKey(ignore: true) String? id,
      String email,
      String profilePictureUrl,
      String username,
      List<String> favoriteClubIds,
      List<String> favoriteEventIds,
      Map<String, int> attendance,
      List<String> pushNotificationTokens,
      int raverCoins});
}

/// @nodoc
class _$UserProfileDtoCopyWithImpl<$Res, $Val extends UserProfileDto>
    implements $UserProfileDtoCopyWith<$Res> {
  _$UserProfileDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? email = null,
    Object? profilePictureUrl = null,
    Object? username = null,
    Object? favoriteClubIds = null,
    Object? favoriteEventIds = null,
    Object? attendance = null,
    Object? pushNotificationTokens = null,
    Object? raverCoins = null,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      profilePictureUrl: null == profilePictureUrl
          ? _value.profilePictureUrl
          : profilePictureUrl // ignore: cast_nullable_to_non_nullable
              as String,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      favoriteClubIds: null == favoriteClubIds
          ? _value.favoriteClubIds
          : favoriteClubIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      favoriteEventIds: null == favoriteEventIds
          ? _value.favoriteEventIds
          : favoriteEventIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      attendance: null == attendance
          ? _value.attendance
          : attendance // ignore: cast_nullable_to_non_nullable
              as Map<String, int>,
      pushNotificationTokens: null == pushNotificationTokens
          ? _value.pushNotificationTokens
          : pushNotificationTokens // ignore: cast_nullable_to_non_nullable
              as List<String>,
      raverCoins: null == raverCoins
          ? _value.raverCoins
          : raverCoins // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UserProfileDtoCopyWith<$Res>
    implements $UserProfileDtoCopyWith<$Res> {
  factory _$$_UserProfileDtoCopyWith(
          _$_UserProfileDto value, $Res Function(_$_UserProfileDto) then) =
      __$$_UserProfileDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(ignore: true) String? id,
      String email,
      String profilePictureUrl,
      String username,
      List<String> favoriteClubIds,
      List<String> favoriteEventIds,
      Map<String, int> attendance,
      List<String> pushNotificationTokens,
      int raverCoins});
}

/// @nodoc
class __$$_UserProfileDtoCopyWithImpl<$Res>
    extends _$UserProfileDtoCopyWithImpl<$Res, _$_UserProfileDto>
    implements _$$_UserProfileDtoCopyWith<$Res> {
  __$$_UserProfileDtoCopyWithImpl(
      _$_UserProfileDto _value, $Res Function(_$_UserProfileDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? email = null,
    Object? profilePictureUrl = null,
    Object? username = null,
    Object? favoriteClubIds = null,
    Object? favoriteEventIds = null,
    Object? attendance = null,
    Object? pushNotificationTokens = null,
    Object? raverCoins = null,
  }) {
    return _then(_$_UserProfileDto(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      profilePictureUrl: null == profilePictureUrl
          ? _value.profilePictureUrl
          : profilePictureUrl // ignore: cast_nullable_to_non_nullable
              as String,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      favoriteClubIds: null == favoriteClubIds
          ? _value._favoriteClubIds
          : favoriteClubIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      favoriteEventIds: null == favoriteEventIds
          ? _value._favoriteEventIds
          : favoriteEventIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      attendance: null == attendance
          ? _value._attendance
          : attendance // ignore: cast_nullable_to_non_nullable
              as Map<String, int>,
      pushNotificationTokens: null == pushNotificationTokens
          ? _value._pushNotificationTokens
          : pushNotificationTokens // ignore: cast_nullable_to_non_nullable
              as List<String>,
      raverCoins: null == raverCoins
          ? _value.raverCoins
          : raverCoins // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

@JsonSerializable()
class _$_UserProfileDto extends _UserProfileDto {
  const _$_UserProfileDto(
      {@JsonKey(ignore: true) this.id,
      required this.email,
      this.profilePictureUrl = '',
      this.username = '',
      final List<String> favoriteClubIds = const [],
      final List<String> favoriteEventIds = const [],
      final Map<String, int> attendance = const {},
      final List<String> pushNotificationTokens = const [],
      this.raverCoins = 0})
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
  final String profilePictureUrl;
  @override
  @JsonKey()
  final String username;
  final List<String> _favoriteClubIds;
  @override
  @JsonKey()
  List<String> get favoriteClubIds {
    if (_favoriteClubIds is EqualUnmodifiableListView) return _favoriteClubIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_favoriteClubIds);
  }

  final List<String> _favoriteEventIds;
  @override
  @JsonKey()
  List<String> get favoriteEventIds {
    if (_favoriteEventIds is EqualUnmodifiableListView)
      return _favoriteEventIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_favoriteEventIds);
  }

  final Map<String, int> _attendance;
  @override
  @JsonKey()
  Map<String, int> get attendance {
    if (_attendance is EqualUnmodifiableMapView) return _attendance;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_attendance);
  }

  final List<String> _pushNotificationTokens;
  @override
  @JsonKey()
  List<String> get pushNotificationTokens {
    if (_pushNotificationTokens is EqualUnmodifiableListView)
      return _pushNotificationTokens;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_pushNotificationTokens);
  }

  @override
  @JsonKey()
  final int raverCoins;

  @override
  String toString() {
    return 'UserProfileDto(id: $id, email: $email, profilePictureUrl: $profilePictureUrl, username: $username, favoriteClubIds: $favoriteClubIds, favoriteEventIds: $favoriteEventIds, attendance: $attendance, pushNotificationTokens: $pushNotificationTokens, raverCoins: $raverCoins)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserProfileDto &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.profilePictureUrl, profilePictureUrl) ||
                other.profilePictureUrl == profilePictureUrl) &&
            (identical(other.username, username) ||
                other.username == username) &&
            const DeepCollectionEquality()
                .equals(other._favoriteClubIds, _favoriteClubIds) &&
            const DeepCollectionEquality()
                .equals(other._favoriteEventIds, _favoriteEventIds) &&
            const DeepCollectionEquality()
                .equals(other._attendance, _attendance) &&
            const DeepCollectionEquality().equals(
                other._pushNotificationTokens, _pushNotificationTokens) &&
            (identical(other.raverCoins, raverCoins) ||
                other.raverCoins == raverCoins));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      email,
      profilePictureUrl,
      username,
      const DeepCollectionEquality().hash(_favoriteClubIds),
      const DeepCollectionEquality().hash(_favoriteEventIds),
      const DeepCollectionEquality().hash(_attendance),
      const DeepCollectionEquality().hash(_pushNotificationTokens),
      raverCoins);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserProfileDtoCopyWith<_$_UserProfileDto> get copyWith =>
      __$$_UserProfileDtoCopyWithImpl<_$_UserProfileDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserProfileDtoToJson(
      this,
    );
  }
}

abstract class _UserProfileDto extends UserProfileDto {
  const factory _UserProfileDto(
      {@JsonKey(ignore: true) final String? id,
      required final String email,
      final String profilePictureUrl,
      final String username,
      final List<String> favoriteClubIds,
      final List<String> favoriteEventIds,
      final Map<String, int> attendance,
      final List<String> pushNotificationTokens,
      final int raverCoins}) = _$_UserProfileDto;
  const _UserProfileDto._() : super._();

  factory _UserProfileDto.fromJson(Map<String, dynamic> json) =
      _$_UserProfileDto.fromJson;

  @override
  @JsonKey(ignore: true)
  String? get id;
  @override
  String get email;
  @override
  String get profilePictureUrl;
  @override
  String get username;
  @override
  List<String> get favoriteClubIds;
  @override
  List<String> get favoriteEventIds;
  @override
  Map<String, int> get attendance;
  @override
  List<String> get pushNotificationTokens;
  @override
  int get raverCoins;
  @override
  @JsonKey(ignore: true)
  _$$_UserProfileDtoCopyWith<_$_UserProfileDto> get copyWith =>
      throw _privateConstructorUsedError;
}
