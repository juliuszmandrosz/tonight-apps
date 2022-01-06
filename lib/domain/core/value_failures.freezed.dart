// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'failures.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ValueFailureTearOff {
  const _$ValueFailureTearOff();

  Auth<T> auth<T>(AuthValueFailure<T> failure) {
    return Auth<T>(
      failure,
    );
  }

  Clubs<T> clubs<T>(ClubValueFailure<T> failure) {
    return Clubs<T>(
      failure,
    );
  }
}

/// @nodoc
const $ValueFailure = _$ValueFailureTearOff();

/// @nodoc
mixin _$ValueFailure<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AuthValueFailure<T> failure) auth,
    required TResult Function(ClubValueFailure<T> failure) clubs,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(AuthValueFailure<T> failure)? auth,
    TResult Function(ClubValueFailure<T> failure)? clubs,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AuthValueFailure<T> failure)? auth,
    TResult Function(ClubValueFailure<T> failure)? clubs,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Auth<T> value) auth,
    required TResult Function(Clubs<T> value) clubs,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Auth<T> value)? auth,
    TResult Function(Clubs<T> value)? clubs,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Auth<T> value)? auth,
    TResult Function(Clubs<T> value)? clubs,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ValueFailureCopyWith<T, $Res> {
  factory $ValueFailureCopyWith(
          ValueFailure<T> value, $Res Function(ValueFailure<T>) then) =
      _$ValueFailureCopyWithImpl<T, $Res>;
}

/// @nodoc
class _$ValueFailureCopyWithImpl<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  _$ValueFailureCopyWithImpl(this._value, this._then);

  final ValueFailure<T> _value;
  // ignore: unused_field
  final $Res Function(ValueFailure<T>) _then;
}

/// @nodoc
abstract class $AuthCopyWith<T, $Res> {
  factory $AuthCopyWith(Auth<T> value, $Res Function(Auth<T>) then) =
      _$AuthCopyWithImpl<T, $Res>;
  $Res call({AuthValueFailure<T> failure});

  $AuthValueFailureCopyWith<T, $Res> get failure;
}

/// @nodoc
class _$AuthCopyWithImpl<T, $Res> extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $AuthCopyWith<T, $Res> {
  _$AuthCopyWithImpl(Auth<T> _value, $Res Function(Auth<T>) _then)
      : super(_value, (v) => _then(v as Auth<T>));

  @override
  Auth<T> get _value => super._value as Auth<T>;

  @override
  $Res call({
    Object? failure = freezed,
  }) {
    return _then(Auth<T>(
      failure == freezed
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as AuthValueFailure<T>,
    ));
  }

  @override
  $AuthValueFailureCopyWith<T, $Res> get failure {
    return $AuthValueFailureCopyWith<T, $Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

/// @nodoc

class _$Auth<T> implements Auth<T> {
  const _$Auth(this.failure);

  @override
  final AuthValueFailure<T> failure;

  @override
  String toString() {
    return 'ValueFailure<$T>.auth(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Auth<T> &&
            const DeepCollectionEquality().equals(other.failure, failure));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(failure));

  @JsonKey(ignore: true)
  @override
  $AuthCopyWith<T, Auth<T>> get copyWith =>
      _$AuthCopyWithImpl<T, Auth<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AuthValueFailure<T> failure) auth,
    required TResult Function(ClubValueFailure<T> failure) clubs,
  }) {
    return auth(failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(AuthValueFailure<T> failure)? auth,
    TResult Function(ClubValueFailure<T> failure)? clubs,
  }) {
    return auth?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AuthValueFailure<T> failure)? auth,
    TResult Function(ClubValueFailure<T> failure)? clubs,
    required TResult orElse(),
  }) {
    if (auth != null) {
      return auth(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Auth<T> value) auth,
    required TResult Function(Clubs<T> value) clubs,
  }) {
    return auth(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Auth<T> value)? auth,
    TResult Function(Clubs<T> value)? clubs,
  }) {
    return auth?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Auth<T> value)? auth,
    TResult Function(Clubs<T> value)? clubs,
    required TResult orElse(),
  }) {
    if (auth != null) {
      return auth(this);
    }
    return orElse();
  }
}

abstract class Auth<T> implements ValueFailure<T> {
  const factory Auth(AuthValueFailure<T> failure) = _$Auth<T>;

  AuthValueFailure<T> get failure;
  @JsonKey(ignore: true)
  $AuthCopyWith<T, Auth<T>> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClubsCopyWith<T, $Res> {
  factory $ClubsCopyWith(Clubs<T> value, $Res Function(Clubs<T>) then) =
      _$ClubsCopyWithImpl<T, $Res>;
  $Res call({ClubValueFailure<T> failure});

  $ClubValueFailureCopyWith<T, $Res> get failure;
}

/// @nodoc
class _$ClubsCopyWithImpl<T, $Res> extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $ClubsCopyWith<T, $Res> {
  _$ClubsCopyWithImpl(Clubs<T> _value, $Res Function(Clubs<T>) _then)
      : super(_value, (v) => _then(v as Clubs<T>));

  @override
  Clubs<T> get _value => super._value as Clubs<T>;

  @override
  $Res call({
    Object? failure = freezed,
  }) {
    return _then(Clubs<T>(
      failure == freezed
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as ClubValueFailure<T>,
    ));
  }

  @override
  $ClubValueFailureCopyWith<T, $Res> get failure {
    return $ClubValueFailureCopyWith<T, $Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

/// @nodoc

class _$Clubs<T> implements Clubs<T> {
  const _$Clubs(this.failure);

  @override
  final ClubValueFailure<T> failure;

  @override
  String toString() {
    return 'ValueFailure<$T>.clubs(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Clubs<T> &&
            const DeepCollectionEquality().equals(other.failure, failure));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(failure));

  @JsonKey(ignore: true)
  @override
  $ClubsCopyWith<T, Clubs<T>> get copyWith =>
      _$ClubsCopyWithImpl<T, Clubs<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AuthValueFailure<T> failure) auth,
    required TResult Function(ClubValueFailure<T> failure) clubs,
  }) {
    return clubs(failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(AuthValueFailure<T> failure)? auth,
    TResult Function(ClubValueFailure<T> failure)? clubs,
  }) {
    return clubs?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AuthValueFailure<T> failure)? auth,
    TResult Function(ClubValueFailure<T> failure)? clubs,
    required TResult orElse(),
  }) {
    if (clubs != null) {
      return clubs(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Auth<T> value) auth,
    required TResult Function(Clubs<T> value) clubs,
  }) {
    return clubs(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Auth<T> value)? auth,
    TResult Function(Clubs<T> value)? clubs,
  }) {
    return clubs?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Auth<T> value)? auth,
    TResult Function(Clubs<T> value)? clubs,
    required TResult orElse(),
  }) {
    if (clubs != null) {
      return clubs(this);
    }
    return orElse();
  }
}

abstract class Clubs<T> implements ValueFailure<T> {
  const factory Clubs(ClubValueFailure<T> failure) = _$Clubs<T>;

  ClubValueFailure<T> get failure;
  @JsonKey(ignore: true)
  $ClubsCopyWith<T, Clubs<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$AuthValueFailureTearOff {
  const _$AuthValueFailureTearOff();

  InvalidEmail<T> invalidEmail<T>({required String failedValue}) {
    return InvalidEmail<T>(
      failedValue: failedValue,
    );
  }

  ShortPassword<T> shortPassword<T>({required T failedValue}) {
    return ShortPassword<T>(
      failedValue: failedValue,
    );
  }
}

/// @nodoc
const $AuthValueFailure = _$AuthValueFailureTearOff();

/// @nodoc
mixin _$AuthValueFailure<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String failedValue) invalidEmail,
    required TResult Function(T failedValue) shortPassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String failedValue)? invalidEmail,
    TResult Function(T failedValue)? shortPassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String failedValue)? invalidEmail,
    TResult Function(T failedValue)? shortPassword,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InvalidEmail<T> value) invalidEmail,
    required TResult Function(ShortPassword<T> value) shortPassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(ShortPassword<T> value)? shortPassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(ShortPassword<T> value)? shortPassword,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthValueFailureCopyWith<T, $Res> {
  factory $AuthValueFailureCopyWith(
          AuthValueFailure<T> value, $Res Function(AuthValueFailure<T>) then) =
      _$AuthValueFailureCopyWithImpl<T, $Res>;
}

/// @nodoc
class _$AuthValueFailureCopyWithImpl<T, $Res>
    implements $AuthValueFailureCopyWith<T, $Res> {
  _$AuthValueFailureCopyWithImpl(this._value, this._then);

  final AuthValueFailure<T> _value;
  // ignore: unused_field
  final $Res Function(AuthValueFailure<T>) _then;
}

/// @nodoc
abstract class $InvalidEmailCopyWith<T, $Res> {
  factory $InvalidEmailCopyWith(
          InvalidEmail<T> value, $Res Function(InvalidEmail<T>) then) =
      _$InvalidEmailCopyWithImpl<T, $Res>;
  $Res call({String failedValue});
}

/// @nodoc
class _$InvalidEmailCopyWithImpl<T, $Res>
    extends _$AuthValueFailureCopyWithImpl<T, $Res>
    implements $InvalidEmailCopyWith<T, $Res> {
  _$InvalidEmailCopyWithImpl(
      InvalidEmail<T> _value, $Res Function(InvalidEmail<T>) _then)
      : super(_value, (v) => _then(v as InvalidEmail<T>));

  @override
  InvalidEmail<T> get _value => super._value as InvalidEmail<T>;

  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(InvalidEmail<T>(
      failedValue: failedValue == freezed
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$InvalidEmail<T> implements InvalidEmail<T> {
  const _$InvalidEmail({required this.failedValue});

  @override
  final String failedValue;

  @override
  String toString() {
    return 'AuthValueFailure<$T>.invalidEmail(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is InvalidEmail<T> &&
            const DeepCollectionEquality()
                .equals(other.failedValue, failedValue));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(failedValue));

  @JsonKey(ignore: true)
  @override
  $InvalidEmailCopyWith<T, InvalidEmail<T>> get copyWith =>
      _$InvalidEmailCopyWithImpl<T, InvalidEmail<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String failedValue) invalidEmail,
    required TResult Function(T failedValue) shortPassword,
  }) {
    return invalidEmail(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String failedValue)? invalidEmail,
    TResult Function(T failedValue)? shortPassword,
  }) {
    return invalidEmail?.call(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String failedValue)? invalidEmail,
    TResult Function(T failedValue)? shortPassword,
    required TResult orElse(),
  }) {
    if (invalidEmail != null) {
      return invalidEmail(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InvalidEmail<T> value) invalidEmail,
    required TResult Function(ShortPassword<T> value) shortPassword,
  }) {
    return invalidEmail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(ShortPassword<T> value)? shortPassword,
  }) {
    return invalidEmail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(ShortPassword<T> value)? shortPassword,
    required TResult orElse(),
  }) {
    if (invalidEmail != null) {
      return invalidEmail(this);
    }
    return orElse();
  }
}

abstract class InvalidEmail<T> implements AuthValueFailure<T> {
  const factory InvalidEmail({required String failedValue}) = _$InvalidEmail<T>;

  String get failedValue;
  @JsonKey(ignore: true)
  $InvalidEmailCopyWith<T, InvalidEmail<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShortPasswordCopyWith<T, $Res> {
  factory $ShortPasswordCopyWith(
          ShortPassword<T> value, $Res Function(ShortPassword<T>) then) =
      _$ShortPasswordCopyWithImpl<T, $Res>;
  $Res call({T failedValue});
}

/// @nodoc
class _$ShortPasswordCopyWithImpl<T, $Res>
    extends _$AuthValueFailureCopyWithImpl<T, $Res>
    implements $ShortPasswordCopyWith<T, $Res> {
  _$ShortPasswordCopyWithImpl(
      ShortPassword<T> _value, $Res Function(ShortPassword<T>) _then)
      : super(_value, (v) => _then(v as ShortPassword<T>));

  @override
  ShortPassword<T> get _value => super._value as ShortPassword<T>;

  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(ShortPassword<T>(
      failedValue: failedValue == freezed
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$ShortPassword<T> implements ShortPassword<T> {
  const _$ShortPassword({required this.failedValue});

  @override
  final T failedValue;

  @override
  String toString() {
    return 'AuthValueFailure<$T>.shortPassword(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ShortPassword<T> &&
            const DeepCollectionEquality()
                .equals(other.failedValue, failedValue));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(failedValue));

  @JsonKey(ignore: true)
  @override
  $ShortPasswordCopyWith<T, ShortPassword<T>> get copyWith =>
      _$ShortPasswordCopyWithImpl<T, ShortPassword<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String failedValue) invalidEmail,
    required TResult Function(T failedValue) shortPassword,
  }) {
    return shortPassword(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String failedValue)? invalidEmail,
    TResult Function(T failedValue)? shortPassword,
  }) {
    return shortPassword?.call(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String failedValue)? invalidEmail,
    TResult Function(T failedValue)? shortPassword,
    required TResult orElse(),
  }) {
    if (shortPassword != null) {
      return shortPassword(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InvalidEmail<T> value) invalidEmail,
    required TResult Function(ShortPassword<T> value) shortPassword,
  }) {
    return shortPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(ShortPassword<T> value)? shortPassword,
  }) {
    return shortPassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(ShortPassword<T> value)? shortPassword,
    required TResult orElse(),
  }) {
    if (shortPassword != null) {
      return shortPassword(this);
    }
    return orElse();
  }
}

abstract class ShortPassword<T> implements AuthValueFailure<T> {
  const factory ShortPassword({required T failedValue}) = _$ShortPassword<T>;

  T get failedValue;
  @JsonKey(ignore: true)
  $ShortPasswordCopyWith<T, ShortPassword<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$ClubValueFailureTearOff {
  const _$ClubValueFailureTearOff();

  MaxStringLength<T> exceedingLength<T>(
      {required T failedValue, required int maxStringLength}) {
    return MaxStringLength<T>(
      failedValue: failedValue,
      maxStringLength: maxStringLength,
    );
  }

  EmptyString<T> empty<T>({required T failedValue}) {
    return EmptyString<T>(
      failedValue: failedValue,
    );
  }

  InvalidPhoneNumber<T> invalidPhoneNumber<T>({required T failedValue}) {
    return InvalidPhoneNumber<T>(
      failedValue: failedValue,
    );
  }

  InvalidReviewAvg<T> invalidReviewAvg<T>({required T failedValue}) {
    return InvalidReviewAvg<T>(
      failedValue: failedValue,
    );
  }
}

/// @nodoc
const $ClubValueFailure = _$ClubValueFailureTearOff();

/// @nodoc
mixin _$ClubValueFailure<T> {
  T get failedValue => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue, int maxStringLength)
        exceedingLength,
    required TResult Function(T failedValue) empty,
    required TResult Function(T failedValue) invalidPhoneNumber,
    required TResult Function(T failedValue) invalidReviewAvg,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T failedValue, int maxStringLength)? exceedingLength,
    TResult Function(T failedValue)? empty,
    TResult Function(T failedValue)? invalidPhoneNumber,
    TResult Function(T failedValue)? invalidReviewAvg,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue, int maxStringLength)? exceedingLength,
    TResult Function(T failedValue)? empty,
    TResult Function(T failedValue)? invalidPhoneNumber,
    TResult Function(T failedValue)? invalidReviewAvg,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MaxStringLength<T> value) exceedingLength,
    required TResult Function(EmptyString<T> value) empty,
    required TResult Function(InvalidPhoneNumber<T> value) invalidPhoneNumber,
    required TResult Function(InvalidReviewAvg<T> value) invalidReviewAvg,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(MaxStringLength<T> value)? exceedingLength,
    TResult Function(EmptyString<T> value)? empty,
    TResult Function(InvalidPhoneNumber<T> value)? invalidPhoneNumber,
    TResult Function(InvalidReviewAvg<T> value)? invalidReviewAvg,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MaxStringLength<T> value)? exceedingLength,
    TResult Function(EmptyString<T> value)? empty,
    TResult Function(InvalidPhoneNumber<T> value)? invalidPhoneNumber,
    TResult Function(InvalidReviewAvg<T> value)? invalidReviewAvg,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ClubValueFailureCopyWith<T, ClubValueFailure<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClubValueFailureCopyWith<T, $Res> {
  factory $ClubValueFailureCopyWith(
          ClubValueFailure<T> value, $Res Function(ClubValueFailure<T>) then) =
      _$ClubValueFailureCopyWithImpl<T, $Res>;
  $Res call({T failedValue});
}

/// @nodoc
class _$ClubValueFailureCopyWithImpl<T, $Res>
    implements $ClubValueFailureCopyWith<T, $Res> {
  _$ClubValueFailureCopyWithImpl(this._value, this._then);

  final ClubValueFailure<T> _value;
  // ignore: unused_field
  final $Res Function(ClubValueFailure<T>) _then;

  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(_value.copyWith(
      failedValue: failedValue == freezed
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc
abstract class $MaxStringLengthCopyWith<T, $Res>
    implements $ClubValueFailureCopyWith<T, $Res> {
  factory $MaxStringLengthCopyWith(
          MaxStringLength<T> value, $Res Function(MaxStringLength<T>) then) =
      _$MaxStringLengthCopyWithImpl<T, $Res>;
  @override
  $Res call({T failedValue, int maxStringLength});
}

/// @nodoc
class _$MaxStringLengthCopyWithImpl<T, $Res>
    extends _$ClubValueFailureCopyWithImpl<T, $Res>
    implements $MaxStringLengthCopyWith<T, $Res> {
  _$MaxStringLengthCopyWithImpl(
      MaxStringLength<T> _value, $Res Function(MaxStringLength<T>) _then)
      : super(_value, (v) => _then(v as MaxStringLength<T>));

  @override
  MaxStringLength<T> get _value => super._value as MaxStringLength<T>;

  @override
  $Res call({
    Object? failedValue = freezed,
    Object? maxStringLength = freezed,
  }) {
    return _then(MaxStringLength<T>(
      failedValue: failedValue == freezed
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
      maxStringLength: maxStringLength == freezed
          ? _value.maxStringLength
          : maxStringLength // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$MaxStringLength<T> implements MaxStringLength<T> {
  const _$MaxStringLength(
      {required this.failedValue, required this.maxStringLength});

  @override
  final T failedValue;
  @override
  final int maxStringLength;

  @override
  String toString() {
    return 'ClubValueFailure<$T>.exceedingLength(failedValue: $failedValue, maxStringLength: $maxStringLength)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is MaxStringLength<T> &&
            const DeepCollectionEquality()
                .equals(other.failedValue, failedValue) &&
            const DeepCollectionEquality()
                .equals(other.maxStringLength, maxStringLength));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(failedValue),
      const DeepCollectionEquality().hash(maxStringLength));

  @JsonKey(ignore: true)
  @override
  $MaxStringLengthCopyWith<T, MaxStringLength<T>> get copyWith =>
      _$MaxStringLengthCopyWithImpl<T, MaxStringLength<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue, int maxStringLength)
        exceedingLength,
    required TResult Function(T failedValue) empty,
    required TResult Function(T failedValue) invalidPhoneNumber,
    required TResult Function(T failedValue) invalidReviewAvg,
  }) {
    return exceedingLength(failedValue, maxStringLength);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T failedValue, int maxStringLength)? exceedingLength,
    TResult Function(T failedValue)? empty,
    TResult Function(T failedValue)? invalidPhoneNumber,
    TResult Function(T failedValue)? invalidReviewAvg,
  }) {
    return exceedingLength?.call(failedValue, maxStringLength);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue, int maxStringLength)? exceedingLength,
    TResult Function(T failedValue)? empty,
    TResult Function(T failedValue)? invalidPhoneNumber,
    TResult Function(T failedValue)? invalidReviewAvg,
    required TResult orElse(),
  }) {
    if (exceedingLength != null) {
      return exceedingLength(failedValue, maxStringLength);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MaxStringLength<T> value) exceedingLength,
    required TResult Function(EmptyString<T> value) empty,
    required TResult Function(InvalidPhoneNumber<T> value) invalidPhoneNumber,
    required TResult Function(InvalidReviewAvg<T> value) invalidReviewAvg,
  }) {
    return exceedingLength(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(MaxStringLength<T> value)? exceedingLength,
    TResult Function(EmptyString<T> value)? empty,
    TResult Function(InvalidPhoneNumber<T> value)? invalidPhoneNumber,
    TResult Function(InvalidReviewAvg<T> value)? invalidReviewAvg,
  }) {
    return exceedingLength?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MaxStringLength<T> value)? exceedingLength,
    TResult Function(EmptyString<T> value)? empty,
    TResult Function(InvalidPhoneNumber<T> value)? invalidPhoneNumber,
    TResult Function(InvalidReviewAvg<T> value)? invalidReviewAvg,
    required TResult orElse(),
  }) {
    if (exceedingLength != null) {
      return exceedingLength(this);
    }
    return orElse();
  }
}

abstract class MaxStringLength<T> implements ClubValueFailure<T> {
  const factory MaxStringLength(
      {required T failedValue,
      required int maxStringLength}) = _$MaxStringLength<T>;

  @override
  T get failedValue;
  int get maxStringLength;
  @override
  @JsonKey(ignore: true)
  $MaxStringLengthCopyWith<T, MaxStringLength<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmptyStringCopyWith<T, $Res>
    implements $ClubValueFailureCopyWith<T, $Res> {
  factory $EmptyStringCopyWith(
          EmptyString<T> value, $Res Function(EmptyString<T>) then) =
      _$EmptyStringCopyWithImpl<T, $Res>;
  @override
  $Res call({T failedValue});
}

/// @nodoc
class _$EmptyStringCopyWithImpl<T, $Res>
    extends _$ClubValueFailureCopyWithImpl<T, $Res>
    implements $EmptyStringCopyWith<T, $Res> {
  _$EmptyStringCopyWithImpl(
      EmptyString<T> _value, $Res Function(EmptyString<T>) _then)
      : super(_value, (v) => _then(v as EmptyString<T>));

  @override
  EmptyString<T> get _value => super._value as EmptyString<T>;

  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(EmptyString<T>(
      failedValue: failedValue == freezed
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$EmptyString<T> implements EmptyString<T> {
  const _$EmptyString({required this.failedValue});

  @override
  final T failedValue;

  @override
  String toString() {
    return 'ClubValueFailure<$T>.empty(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is EmptyString<T> &&
            const DeepCollectionEquality()
                .equals(other.failedValue, failedValue));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(failedValue));

  @JsonKey(ignore: true)
  @override
  $EmptyStringCopyWith<T, EmptyString<T>> get copyWith =>
      _$EmptyStringCopyWithImpl<T, EmptyString<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue, int maxStringLength)
        exceedingLength,
    required TResult Function(T failedValue) empty,
    required TResult Function(T failedValue) invalidPhoneNumber,
    required TResult Function(T failedValue) invalidReviewAvg,
  }) {
    return empty(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T failedValue, int maxStringLength)? exceedingLength,
    TResult Function(T failedValue)? empty,
    TResult Function(T failedValue)? invalidPhoneNumber,
    TResult Function(T failedValue)? invalidReviewAvg,
  }) {
    return empty?.call(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue, int maxStringLength)? exceedingLength,
    TResult Function(T failedValue)? empty,
    TResult Function(T failedValue)? invalidPhoneNumber,
    TResult Function(T failedValue)? invalidReviewAvg,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MaxStringLength<T> value) exceedingLength,
    required TResult Function(EmptyString<T> value) empty,
    required TResult Function(InvalidPhoneNumber<T> value) invalidPhoneNumber,
    required TResult Function(InvalidReviewAvg<T> value) invalidReviewAvg,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(MaxStringLength<T> value)? exceedingLength,
    TResult Function(EmptyString<T> value)? empty,
    TResult Function(InvalidPhoneNumber<T> value)? invalidPhoneNumber,
    TResult Function(InvalidReviewAvg<T> value)? invalidReviewAvg,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MaxStringLength<T> value)? exceedingLength,
    TResult Function(EmptyString<T> value)? empty,
    TResult Function(InvalidPhoneNumber<T> value)? invalidPhoneNumber,
    TResult Function(InvalidReviewAvg<T> value)? invalidReviewAvg,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class EmptyString<T> implements ClubValueFailure<T> {
  const factory EmptyString({required T failedValue}) = _$EmptyString<T>;

  @override
  T get failedValue;
  @override
  @JsonKey(ignore: true)
  $EmptyStringCopyWith<T, EmptyString<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InvalidPhoneNumberCopyWith<T, $Res>
    implements $ClubValueFailureCopyWith<T, $Res> {
  factory $InvalidPhoneNumberCopyWith(InvalidPhoneNumber<T> value,
          $Res Function(InvalidPhoneNumber<T>) then) =
      _$InvalidPhoneNumberCopyWithImpl<T, $Res>;
  @override
  $Res call({T failedValue});
}

/// @nodoc
class _$InvalidPhoneNumberCopyWithImpl<T, $Res>
    extends _$ClubValueFailureCopyWithImpl<T, $Res>
    implements $InvalidPhoneNumberCopyWith<T, $Res> {
  _$InvalidPhoneNumberCopyWithImpl(
      InvalidPhoneNumber<T> _value, $Res Function(InvalidPhoneNumber<T>) _then)
      : super(_value, (v) => _then(v as InvalidPhoneNumber<T>));

  @override
  InvalidPhoneNumber<T> get _value => super._value as InvalidPhoneNumber<T>;

  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(InvalidPhoneNumber<T>(
      failedValue: failedValue == freezed
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$InvalidPhoneNumber<T> implements InvalidPhoneNumber<T> {
  const _$InvalidPhoneNumber({required this.failedValue});

  @override
  final T failedValue;

  @override
  String toString() {
    return 'ClubValueFailure<$T>.invalidPhoneNumber(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is InvalidPhoneNumber<T> &&
            const DeepCollectionEquality()
                .equals(other.failedValue, failedValue));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(failedValue));

  @JsonKey(ignore: true)
  @override
  $InvalidPhoneNumberCopyWith<T, InvalidPhoneNumber<T>> get copyWith =>
      _$InvalidPhoneNumberCopyWithImpl<T, InvalidPhoneNumber<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue, int maxStringLength)
        exceedingLength,
    required TResult Function(T failedValue) empty,
    required TResult Function(T failedValue) invalidPhoneNumber,
    required TResult Function(T failedValue) invalidReviewAvg,
  }) {
    return invalidPhoneNumber(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T failedValue, int maxStringLength)? exceedingLength,
    TResult Function(T failedValue)? empty,
    TResult Function(T failedValue)? invalidPhoneNumber,
    TResult Function(T failedValue)? invalidReviewAvg,
  }) {
    return invalidPhoneNumber?.call(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue, int maxStringLength)? exceedingLength,
    TResult Function(T failedValue)? empty,
    TResult Function(T failedValue)? invalidPhoneNumber,
    TResult Function(T failedValue)? invalidReviewAvg,
    required TResult orElse(),
  }) {
    if (invalidPhoneNumber != null) {
      return invalidPhoneNumber(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MaxStringLength<T> value) exceedingLength,
    required TResult Function(EmptyString<T> value) empty,
    required TResult Function(InvalidPhoneNumber<T> value) invalidPhoneNumber,
    required TResult Function(InvalidReviewAvg<T> value) invalidReviewAvg,
  }) {
    return invalidPhoneNumber(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(MaxStringLength<T> value)? exceedingLength,
    TResult Function(EmptyString<T> value)? empty,
    TResult Function(InvalidPhoneNumber<T> value)? invalidPhoneNumber,
    TResult Function(InvalidReviewAvg<T> value)? invalidReviewAvg,
  }) {
    return invalidPhoneNumber?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MaxStringLength<T> value)? exceedingLength,
    TResult Function(EmptyString<T> value)? empty,
    TResult Function(InvalidPhoneNumber<T> value)? invalidPhoneNumber,
    TResult Function(InvalidReviewAvg<T> value)? invalidReviewAvg,
    required TResult orElse(),
  }) {
    if (invalidPhoneNumber != null) {
      return invalidPhoneNumber(this);
    }
    return orElse();
  }
}

abstract class InvalidPhoneNumber<T> implements ClubValueFailure<T> {
  const factory InvalidPhoneNumber({required T failedValue}) =
      _$InvalidPhoneNumber<T>;

  @override
  T get failedValue;
  @override
  @JsonKey(ignore: true)
  $InvalidPhoneNumberCopyWith<T, InvalidPhoneNumber<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InvalidReviewAvgCopyWith<T, $Res>
    implements $ClubValueFailureCopyWith<T, $Res> {
  factory $InvalidReviewAvgCopyWith(
          InvalidReviewAvg<T> value, $Res Function(InvalidReviewAvg<T>) then) =
      _$InvalidReviewAvgCopyWithImpl<T, $Res>;
  @override
  $Res call({T failedValue});
}

/// @nodoc
class _$InvalidReviewAvgCopyWithImpl<T, $Res>
    extends _$ClubValueFailureCopyWithImpl<T, $Res>
    implements $InvalidReviewAvgCopyWith<T, $Res> {
  _$InvalidReviewAvgCopyWithImpl(
      InvalidReviewAvg<T> _value, $Res Function(InvalidReviewAvg<T>) _then)
      : super(_value, (v) => _then(v as InvalidReviewAvg<T>));

  @override
  InvalidReviewAvg<T> get _value => super._value as InvalidReviewAvg<T>;

  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(InvalidReviewAvg<T>(
      failedValue: failedValue == freezed
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$InvalidReviewAvg<T> implements InvalidReviewAvg<T> {
  const _$InvalidReviewAvg({required this.failedValue});

  @override
  final T failedValue;

  @override
  String toString() {
    return 'ClubValueFailure<$T>.invalidReviewAvg(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is InvalidReviewAvg<T> &&
            const DeepCollectionEquality()
                .equals(other.failedValue, failedValue));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(failedValue));

  @JsonKey(ignore: true)
  @override
  $InvalidReviewAvgCopyWith<T, InvalidReviewAvg<T>> get copyWith =>
      _$InvalidReviewAvgCopyWithImpl<T, InvalidReviewAvg<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue, int maxStringLength)
        exceedingLength,
    required TResult Function(T failedValue) empty,
    required TResult Function(T failedValue) invalidPhoneNumber,
    required TResult Function(T failedValue) invalidReviewAvg,
  }) {
    return invalidReviewAvg(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T failedValue, int maxStringLength)? exceedingLength,
    TResult Function(T failedValue)? empty,
    TResult Function(T failedValue)? invalidPhoneNumber,
    TResult Function(T failedValue)? invalidReviewAvg,
  }) {
    return invalidReviewAvg?.call(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue, int maxStringLength)? exceedingLength,
    TResult Function(T failedValue)? empty,
    TResult Function(T failedValue)? invalidPhoneNumber,
    TResult Function(T failedValue)? invalidReviewAvg,
    required TResult orElse(),
  }) {
    if (invalidReviewAvg != null) {
      return invalidReviewAvg(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MaxStringLength<T> value) exceedingLength,
    required TResult Function(EmptyString<T> value) empty,
    required TResult Function(InvalidPhoneNumber<T> value) invalidPhoneNumber,
    required TResult Function(InvalidReviewAvg<T> value) invalidReviewAvg,
  }) {
    return invalidReviewAvg(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(MaxStringLength<T> value)? exceedingLength,
    TResult Function(EmptyString<T> value)? empty,
    TResult Function(InvalidPhoneNumber<T> value)? invalidPhoneNumber,
    TResult Function(InvalidReviewAvg<T> value)? invalidReviewAvg,
  }) {
    return invalidReviewAvg?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MaxStringLength<T> value)? exceedingLength,
    TResult Function(EmptyString<T> value)? empty,
    TResult Function(InvalidPhoneNumber<T> value)? invalidPhoneNumber,
    TResult Function(InvalidReviewAvg<T> value)? invalidReviewAvg,
    required TResult orElse(),
  }) {
    if (invalidReviewAvg != null) {
      return invalidReviewAvg(this);
    }
    return orElse();
  }
}

abstract class InvalidReviewAvg<T> implements ClubValueFailure<T> {
  const factory InvalidReviewAvg({required T failedValue}) =
      _$InvalidReviewAvg<T>;

  @override
  T get failedValue;
  @override
  @JsonKey(ignore: true)
  $InvalidReviewAvgCopyWith<T, InvalidReviewAvg<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
