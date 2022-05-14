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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserProfileDto _$UserProfileDtoFromJson(Map<String, dynamic> json) {
  return _UserProfileDto.fromJson(json);
}

/// @nodoc
class _$UserProfileDtoTearOff {
  const _$UserProfileDtoTearOff();

  _UserProfileDto call(
      {@JsonKey(ignore: true) String? id,
      required String username,
      required String email,
      List<String> favoriteClubIds = const [],
      List<String> favoriteEventIds = const [],
      Map<String, int> attendance = const {},
      int ticketCount = 0}) {
    return _UserProfileDto(
      id: id,
      username: username,
      email: email,
      favoriteClubIds: favoriteClubIds,
      favoriteEventIds: favoriteEventIds,
      attendance: attendance,
      ticketCount: ticketCount,
    );
  }

  UserProfileDto fromJson(Map<String, Object?> json) {
    return UserProfileDto.fromJson(json);
  }
}

/// @nodoc
const $UserProfileDto = _$UserProfileDtoTearOff();

/// @nodoc
mixin _$UserProfileDto {
  @JsonKey(ignore: true)
  String? get id => throw _privateConstructorUsedError;
  String get username => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  List<String> get favoriteClubIds => throw _privateConstructorUsedError;
  List<String> get favoriteEventIds => throw _privateConstructorUsedError;
  Map<String, int> get attendance => throw _privateConstructorUsedError;
  int get ticketCount => throw _privateConstructorUsedError;

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
      String username,
      String email,
      List<String> favoriteClubIds,
      List<String> favoriteEventIds,
      Map<String, int> attendance,
      int ticketCount});
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
    Object? username = freezed,
    Object? email = freezed,
    Object? favoriteClubIds = freezed,
    Object? favoriteEventIds = freezed,
    Object? attendance = freezed,
    Object? ticketCount = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
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
      ticketCount: ticketCount == freezed
          ? _value.ticketCount
          : ticketCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$UserProfileDtoCopyWith<$Res>
    implements $UserProfileDtoCopyWith<$Res> {
  factory _$UserProfileDtoCopyWith(
          _UserProfileDto value, $Res Function(_UserProfileDto) then) =
      __$UserProfileDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(ignore: true) String? id,
      String username,
      String email,
      List<String> favoriteClubIds,
      List<String> favoriteEventIds,
      Map<String, int> attendance,
      int ticketCount});
}

/// @nodoc
class __$UserProfileDtoCopyWithImpl<$Res>
    extends _$UserProfileDtoCopyWithImpl<$Res>
    implements _$UserProfileDtoCopyWith<$Res> {
  __$UserProfileDtoCopyWithImpl(
      _UserProfileDto _value, $Res Function(_UserProfileDto) _then)
      : super(_value, (v) => _then(v as _UserProfileDto));

  @override
  _UserProfileDto get _value => super._value as _UserProfileDto;

  @override
  $Res call({
    Object? id = freezed,
    Object? username = freezed,
    Object? email = freezed,
    Object? favoriteClubIds = freezed,
    Object? favoriteEventIds = freezed,
    Object? attendance = freezed,
    Object? ticketCount = freezed,
  }) {
    return _then(_UserProfileDto(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
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
      ticketCount: ticketCount == freezed
          ? _value.ticketCount
          : ticketCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

@JsonSerializable()
class _$_UserProfileDto extends _UserProfileDto {
  const _$_UserProfileDto(
      {@JsonKey(ignore: true) this.id,
      required this.username,
      required this.email,
      this.favoriteClubIds = const [],
      this.favoriteEventIds = const [],
      this.attendance = const {},
      this.ticketCount = 0})
      : super._();

  factory _$_UserProfileDto.fromJson(Map<String, dynamic> json) =>
      _$$_UserProfileDtoFromJson(json);

  @override
  @JsonKey(ignore: true)
  final String? id;
  @override
  final String username;
  @override
  final String email;
  @JsonKey()
  @override
  final List<String> favoriteClubIds;
  @JsonKey()
  @override
  final List<String> favoriteEventIds;
  @JsonKey()
  @override
  final Map<String, int> attendance;
  @JsonKey()
  @override
  final int ticketCount;

  @override
  String toString() {
    return 'UserProfileDto(id: $id, username: $username, email: $email, favoriteClubIds: $favoriteClubIds, favoriteEventIds: $favoriteEventIds, attendance: $attendance, ticketCount: $ticketCount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UserProfileDto &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.username, username) &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality()
                .equals(other.favoriteClubIds, favoriteClubIds) &&
            const DeepCollectionEquality()
                .equals(other.favoriteEventIds, favoriteEventIds) &&
            const DeepCollectionEquality()
                .equals(other.attendance, attendance) &&
            const DeepCollectionEquality()
                .equals(other.ticketCount, ticketCount));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(username),
      const DeepCollectionEquality().hash(email),
      const DeepCollectionEquality().hash(favoriteClubIds),
      const DeepCollectionEquality().hash(favoriteEventIds),
      const DeepCollectionEquality().hash(attendance),
      const DeepCollectionEquality().hash(ticketCount));

  @JsonKey(ignore: true)
  @override
  _$UserProfileDtoCopyWith<_UserProfileDto> get copyWith =>
      __$UserProfileDtoCopyWithImpl<_UserProfileDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserProfileDtoToJson(this);
  }
}

abstract class _UserProfileDto extends UserProfileDto {
  const factory _UserProfileDto(
      {@JsonKey(ignore: true) String? id,
      required String username,
      required String email,
      List<String> favoriteClubIds,
      List<String> favoriteEventIds,
      Map<String, int> attendance,
      int ticketCount}) = _$_UserProfileDto;
  const _UserProfileDto._() : super._();

  factory _UserProfileDto.fromJson(Map<String, dynamic> json) =
      _$_UserProfileDto.fromJson;

  @override
  @JsonKey(ignore: true)
  String? get id;
  @override
  String get username;
  @override
  String get email;
  @override
  List<String> get favoriteClubIds;
  @override
  List<String> get favoriteEventIds;
  @override
  Map<String, int> get attendance;
  @override
  int get ticketCount;
  @override
  @JsonKey(ignore: true)
  _$UserProfileDtoCopyWith<_UserProfileDto> get copyWith =>
      throw _privateConstructorUsedError;
}
