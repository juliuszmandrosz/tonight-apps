// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_user_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AppUser {
  String get id => throw _privateConstructorUsedError;
  bool get isOnboardingCompleted => throw _privateConstructorUsedError;
  bool get isPhoneNumberVerified => throw _privateConstructorUsedError;
  bool get isAnonymous => throw _privateConstructorUsedError;
  DateTime? get lastDailySpinAt => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AppUserCopyWith<AppUser> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppUserCopyWith<$Res> {
  factory $AppUserCopyWith(AppUser value, $Res Function(AppUser) then) =
      _$AppUserCopyWithImpl<$Res, AppUser>;
  @useResult
  $Res call(
      {String id,
      bool isOnboardingCompleted,
      bool isPhoneNumberVerified,
      bool isAnonymous,
      DateTime? lastDailySpinAt,
      String? email});
}

/// @nodoc
class _$AppUserCopyWithImpl<$Res, $Val extends AppUser>
    implements $AppUserCopyWith<$Res> {
  _$AppUserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? isOnboardingCompleted = null,
    Object? isPhoneNumberVerified = null,
    Object? isAnonymous = null,
    Object? lastDailySpinAt = freezed,
    Object? email = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      isOnboardingCompleted: null == isOnboardingCompleted
          ? _value.isOnboardingCompleted
          : isOnboardingCompleted // ignore: cast_nullable_to_non_nullable
              as bool,
      isPhoneNumberVerified: null == isPhoneNumberVerified
          ? _value.isPhoneNumberVerified
          : isPhoneNumberVerified // ignore: cast_nullable_to_non_nullable
              as bool,
      isAnonymous: null == isAnonymous
          ? _value.isAnonymous
          : isAnonymous // ignore: cast_nullable_to_non_nullable
              as bool,
      lastDailySpinAt: freezed == lastDailySpinAt
          ? _value.lastDailySpinAt
          : lastDailySpinAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AppUserCopyWith<$Res> implements $AppUserCopyWith<$Res> {
  factory _$$_AppUserCopyWith(
          _$_AppUser value, $Res Function(_$_AppUser) then) =
      __$$_AppUserCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      bool isOnboardingCompleted,
      bool isPhoneNumberVerified,
      bool isAnonymous,
      DateTime? lastDailySpinAt,
      String? email});
}

/// @nodoc
class __$$_AppUserCopyWithImpl<$Res>
    extends _$AppUserCopyWithImpl<$Res, _$_AppUser>
    implements _$$_AppUserCopyWith<$Res> {
  __$$_AppUserCopyWithImpl(_$_AppUser _value, $Res Function(_$_AppUser) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? isOnboardingCompleted = null,
    Object? isPhoneNumberVerified = null,
    Object? isAnonymous = null,
    Object? lastDailySpinAt = freezed,
    Object? email = freezed,
  }) {
    return _then(_$_AppUser(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      isOnboardingCompleted: null == isOnboardingCompleted
          ? _value.isOnboardingCompleted
          : isOnboardingCompleted // ignore: cast_nullable_to_non_nullable
              as bool,
      isPhoneNumberVerified: null == isPhoneNumberVerified
          ? _value.isPhoneNumberVerified
          : isPhoneNumberVerified // ignore: cast_nullable_to_non_nullable
              as bool,
      isAnonymous: null == isAnonymous
          ? _value.isAnonymous
          : isAnonymous // ignore: cast_nullable_to_non_nullable
              as bool,
      lastDailySpinAt: freezed == lastDailySpinAt
          ? _value.lastDailySpinAt
          : lastDailySpinAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_AppUser implements _AppUser {
  const _$_AppUser(
      {required this.id,
      required this.isOnboardingCompleted,
      required this.isPhoneNumberVerified,
      this.isAnonymous = false,
      this.lastDailySpinAt,
      this.email});

  @override
  final String id;
  @override
  final bool isOnboardingCompleted;
  @override
  final bool isPhoneNumberVerified;
  @override
  @JsonKey()
  final bool isAnonymous;
  @override
  final DateTime? lastDailySpinAt;
  @override
  final String? email;

  @override
  String toString() {
    return 'AppUser(id: $id, isOnboardingCompleted: $isOnboardingCompleted, isPhoneNumberVerified: $isPhoneNumberVerified, isAnonymous: $isAnonymous, lastDailySpinAt: $lastDailySpinAt, email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AppUser &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.isOnboardingCompleted, isOnboardingCompleted) ||
                other.isOnboardingCompleted == isOnboardingCompleted) &&
            (identical(other.isPhoneNumberVerified, isPhoneNumberVerified) ||
                other.isPhoneNumberVerified == isPhoneNumberVerified) &&
            (identical(other.isAnonymous, isAnonymous) ||
                other.isAnonymous == isAnonymous) &&
            (identical(other.lastDailySpinAt, lastDailySpinAt) ||
                other.lastDailySpinAt == lastDailySpinAt) &&
            (identical(other.email, email) || other.email == email));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, isOnboardingCompleted,
      isPhoneNumberVerified, isAnonymous, lastDailySpinAt, email);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AppUserCopyWith<_$_AppUser> get copyWith =>
      __$$_AppUserCopyWithImpl<_$_AppUser>(this, _$identity);
}

abstract class _AppUser implements AppUser {
  const factory _AppUser(
      {required final String id,
      required final bool isOnboardingCompleted,
      required final bool isPhoneNumberVerified,
      final bool isAnonymous,
      final DateTime? lastDailySpinAt,
      final String? email}) = _$_AppUser;

  @override
  String get id;
  @override
  bool get isOnboardingCompleted;
  @override
  bool get isPhoneNumberVerified;
  @override
  bool get isAnonymous;
  @override
  DateTime? get lastDailySpinAt;
  @override
  String? get email;
  @override
  @JsonKey(ignore: true)
  _$$_AppUserCopyWith<_$_AppUser> get copyWith =>
      throw _privateConstructorUsedError;
}
