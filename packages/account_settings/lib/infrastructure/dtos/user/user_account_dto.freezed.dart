// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_account_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserAccountDto _$UserAccountDtoFromJson(Map<String, dynamic> json) {
  return _UserAccountDto.fromJson(json);
}

/// @nodoc
mixin _$UserAccountDto {
  @JsonKey(includeFromJson: false, includeToJson: false)
  String? get id => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get phoneNumber => throw _privateConstructorUsedError;
  String get profilePictureUrl => throw _privateConstructorUsedError;
  String get username => throw _privateConstructorUsedError;
  List<String> get favoriteClubIds => throw _privateConstructorUsedError;
  List<String> get favoriteEventIds => throw _privateConstructorUsedError;
  Map<String, int> get attendance => throw _privateConstructorUsedError;
  List<String> get pushNotificationTokens => throw _privateConstructorUsedError;
  int get raverCoins => throw _privateConstructorUsedError;
  int get ticketsCount => throw _privateConstructorUsedError;
  int get photosCount => throw _privateConstructorUsedError;
  @FirebaseNullableTimestampJsonConverter()
  DateTime? get lastDailySpinAt => throw _privateConstructorUsedError;
  @FirebaseNullableTimestampJsonConverter()
  DateTime? get lastTonightVoucherUseAt => throw _privateConstructorUsedError;
  @FirebaseNullableTimestampJsonConverter()
  DateTime? get birthdate => throw _privateConstructorUsedError;
  String? get gender => throw _privateConstructorUsedError;
  String? get cityId => throw _privateConstructorUsedError;
  String? get cityName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserAccountDtoCopyWith<UserAccountDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserAccountDtoCopyWith<$Res> {
  factory $UserAccountDtoCopyWith(
          UserAccountDto value, $Res Function(UserAccountDto) then) =
      _$UserAccountDtoCopyWithImpl<$Res, UserAccountDto>;
  @useResult
  $Res call(
      {@JsonKey(includeFromJson: false, includeToJson: false)
          String? id,
      String email,
      String phoneNumber,
      String profilePictureUrl,
      String username,
      List<String> favoriteClubIds,
      List<String> favoriteEventIds,
      Map<String, int> attendance,
      List<String> pushNotificationTokens,
      int raverCoins,
      int ticketsCount,
      int photosCount,
      @FirebaseNullableTimestampJsonConverter()
          DateTime? lastDailySpinAt,
      @FirebaseNullableTimestampJsonConverter()
          DateTime? lastTonightVoucherUseAt,
      @FirebaseNullableTimestampJsonConverter()
          DateTime? birthdate,
      String? gender,
      String? cityId,
      String? cityName});
}

/// @nodoc
class _$UserAccountDtoCopyWithImpl<$Res, $Val extends UserAccountDto>
    implements $UserAccountDtoCopyWith<$Res> {
  _$UserAccountDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? email = null,
    Object? phoneNumber = null,
    Object? profilePictureUrl = null,
    Object? username = null,
    Object? favoriteClubIds = null,
    Object? favoriteEventIds = null,
    Object? attendance = null,
    Object? pushNotificationTokens = null,
    Object? raverCoins = null,
    Object? ticketsCount = null,
    Object? photosCount = null,
    Object? lastDailySpinAt = freezed,
    Object? lastTonightVoucherUseAt = freezed,
    Object? birthdate = freezed,
    Object? gender = freezed,
    Object? cityId = freezed,
    Object? cityName = freezed,
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
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
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
      ticketsCount: null == ticketsCount
          ? _value.ticketsCount
          : ticketsCount // ignore: cast_nullable_to_non_nullable
              as int,
      photosCount: null == photosCount
          ? _value.photosCount
          : photosCount // ignore: cast_nullable_to_non_nullable
              as int,
      lastDailySpinAt: freezed == lastDailySpinAt
          ? _value.lastDailySpinAt
          : lastDailySpinAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      lastTonightVoucherUseAt: freezed == lastTonightVoucherUseAt
          ? _value.lastTonightVoucherUseAt
          : lastTonightVoucherUseAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      birthdate: freezed == birthdate
          ? _value.birthdate
          : birthdate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String?,
      cityId: freezed == cityId
          ? _value.cityId
          : cityId // ignore: cast_nullable_to_non_nullable
              as String?,
      cityName: freezed == cityName
          ? _value.cityName
          : cityName // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UserAccountDtoCopyWith<$Res>
    implements $UserAccountDtoCopyWith<$Res> {
  factory _$$_UserAccountDtoCopyWith(
          _$_UserAccountDto value, $Res Function(_$_UserAccountDto) then) =
      __$$_UserAccountDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(includeFromJson: false, includeToJson: false)
          String? id,
      String email,
      String phoneNumber,
      String profilePictureUrl,
      String username,
      List<String> favoriteClubIds,
      List<String> favoriteEventIds,
      Map<String, int> attendance,
      List<String> pushNotificationTokens,
      int raverCoins,
      int ticketsCount,
      int photosCount,
      @FirebaseNullableTimestampJsonConverter()
          DateTime? lastDailySpinAt,
      @FirebaseNullableTimestampJsonConverter()
          DateTime? lastTonightVoucherUseAt,
      @FirebaseNullableTimestampJsonConverter()
          DateTime? birthdate,
      String? gender,
      String? cityId,
      String? cityName});
}

/// @nodoc
class __$$_UserAccountDtoCopyWithImpl<$Res>
    extends _$UserAccountDtoCopyWithImpl<$Res, _$_UserAccountDto>
    implements _$$_UserAccountDtoCopyWith<$Res> {
  __$$_UserAccountDtoCopyWithImpl(
      _$_UserAccountDto _value, $Res Function(_$_UserAccountDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? email = null,
    Object? phoneNumber = null,
    Object? profilePictureUrl = null,
    Object? username = null,
    Object? favoriteClubIds = null,
    Object? favoriteEventIds = null,
    Object? attendance = null,
    Object? pushNotificationTokens = null,
    Object? raverCoins = null,
    Object? ticketsCount = null,
    Object? photosCount = null,
    Object? lastDailySpinAt = freezed,
    Object? lastTonightVoucherUseAt = freezed,
    Object? birthdate = freezed,
    Object? gender = freezed,
    Object? cityId = freezed,
    Object? cityName = freezed,
  }) {
    return _then(_$_UserAccountDto(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
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
      ticketsCount: null == ticketsCount
          ? _value.ticketsCount
          : ticketsCount // ignore: cast_nullable_to_non_nullable
              as int,
      photosCount: null == photosCount
          ? _value.photosCount
          : photosCount // ignore: cast_nullable_to_non_nullable
              as int,
      lastDailySpinAt: freezed == lastDailySpinAt
          ? _value.lastDailySpinAt
          : lastDailySpinAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      lastTonightVoucherUseAt: freezed == lastTonightVoucherUseAt
          ? _value.lastTonightVoucherUseAt
          : lastTonightVoucherUseAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      birthdate: freezed == birthdate
          ? _value.birthdate
          : birthdate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String?,
      cityId: freezed == cityId
          ? _value.cityId
          : cityId // ignore: cast_nullable_to_non_nullable
              as String?,
      cityName: freezed == cityName
          ? _value.cityName
          : cityName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable()
class _$_UserAccountDto extends _UserAccountDto {
  const _$_UserAccountDto(
      {@JsonKey(includeFromJson: false, includeToJson: false) this.id,
      this.email = '',
      this.phoneNumber = '',
      this.profilePictureUrl = '',
      this.username = '',
      final List<String> favoriteClubIds = const [],
      final List<String> favoriteEventIds = const [],
      final Map<String, int> attendance = const {},
      final List<String> pushNotificationTokens = const [],
      this.raverCoins = 0,
      this.ticketsCount = 0,
      this.photosCount = 0,
      @FirebaseNullableTimestampJsonConverter() this.lastDailySpinAt,
      @FirebaseNullableTimestampJsonConverter() this.lastTonightVoucherUseAt,
      @FirebaseNullableTimestampJsonConverter() this.birthdate,
      this.gender,
      this.cityId,
      this.cityName})
      : _favoriteClubIds = favoriteClubIds,
        _favoriteEventIds = favoriteEventIds,
        _attendance = attendance,
        _pushNotificationTokens = pushNotificationTokens,
        super._();

  factory _$_UserAccountDto.fromJson(Map<String, dynamic> json) =>
      _$$_UserAccountDtoFromJson(json);

  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  final String? id;
  @override
  @JsonKey()
  final String email;
  @override
  @JsonKey()
  final String phoneNumber;
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
  @JsonKey()
  final int ticketsCount;
  @override
  @JsonKey()
  final int photosCount;
  @override
  @FirebaseNullableTimestampJsonConverter()
  final DateTime? lastDailySpinAt;
  @override
  @FirebaseNullableTimestampJsonConverter()
  final DateTime? lastTonightVoucherUseAt;
  @override
  @FirebaseNullableTimestampJsonConverter()
  final DateTime? birthdate;
  @override
  final String? gender;
  @override
  final String? cityId;
  @override
  final String? cityName;

  @override
  String toString() {
    return 'UserAccountDto(id: $id, email: $email, phoneNumber: $phoneNumber, profilePictureUrl: $profilePictureUrl, username: $username, favoriteClubIds: $favoriteClubIds, favoriteEventIds: $favoriteEventIds, attendance: $attendance, pushNotificationTokens: $pushNotificationTokens, raverCoins: $raverCoins, ticketsCount: $ticketsCount, photosCount: $photosCount, lastDailySpinAt: $lastDailySpinAt, lastTonightVoucherUseAt: $lastTonightVoucherUseAt, birthdate: $birthdate, gender: $gender, cityId: $cityId, cityName: $cityName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserAccountDto &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
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
                other.raverCoins == raverCoins) &&
            (identical(other.ticketsCount, ticketsCount) ||
                other.ticketsCount == ticketsCount) &&
            (identical(other.photosCount, photosCount) ||
                other.photosCount == photosCount) &&
            (identical(other.lastDailySpinAt, lastDailySpinAt) ||
                other.lastDailySpinAt == lastDailySpinAt) &&
            (identical(
                    other.lastTonightVoucherUseAt, lastTonightVoucherUseAt) ||
                other.lastTonightVoucherUseAt == lastTonightVoucherUseAt) &&
            (identical(other.birthdate, birthdate) ||
                other.birthdate == birthdate) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.cityId, cityId) || other.cityId == cityId) &&
            (identical(other.cityName, cityName) ||
                other.cityName == cityName));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      email,
      phoneNumber,
      profilePictureUrl,
      username,
      const DeepCollectionEquality().hash(_favoriteClubIds),
      const DeepCollectionEquality().hash(_favoriteEventIds),
      const DeepCollectionEquality().hash(_attendance),
      const DeepCollectionEquality().hash(_pushNotificationTokens),
      raverCoins,
      ticketsCount,
      photosCount,
      lastDailySpinAt,
      lastTonightVoucherUseAt,
      birthdate,
      gender,
      cityId,
      cityName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserAccountDtoCopyWith<_$_UserAccountDto> get copyWith =>
      __$$_UserAccountDtoCopyWithImpl<_$_UserAccountDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserAccountDtoToJson(
      this,
    );
  }
}

abstract class _UserAccountDto extends UserAccountDto {
  const factory _UserAccountDto(
      {@JsonKey(includeFromJson: false, includeToJson: false)
          final String? id,
      final String email,
      final String phoneNumber,
      final String profilePictureUrl,
      final String username,
      final List<String> favoriteClubIds,
      final List<String> favoriteEventIds,
      final Map<String, int> attendance,
      final List<String> pushNotificationTokens,
      final int raverCoins,
      final int ticketsCount,
      final int photosCount,
      @FirebaseNullableTimestampJsonConverter()
          final DateTime? lastDailySpinAt,
      @FirebaseNullableTimestampJsonConverter()
          final DateTime? lastTonightVoucherUseAt,
      @FirebaseNullableTimestampJsonConverter()
          final DateTime? birthdate,
      final String? gender,
      final String? cityId,
      final String? cityName}) = _$_UserAccountDto;
  const _UserAccountDto._() : super._();

  factory _UserAccountDto.fromJson(Map<String, dynamic> json) =
      _$_UserAccountDto.fromJson;

  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  String? get id;
  @override
  String get email;
  @override
  String get phoneNumber;
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
  int get ticketsCount;
  @override
  int get photosCount;
  @override
  @FirebaseNullableTimestampJsonConverter()
  DateTime? get lastDailySpinAt;
  @override
  @FirebaseNullableTimestampJsonConverter()
  DateTime? get lastTonightVoucherUseAt;
  @override
  @FirebaseNullableTimestampJsonConverter()
  DateTime? get birthdate;
  @override
  String? get gender;
  @override
  String? get cityId;
  @override
  String? get cityName;
  @override
  @JsonKey(ignore: true)
  _$$_UserAccountDtoCopyWith<_$_UserAccountDto> get copyWith =>
      throw _privateConstructorUsedError;
}
