// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'value_failures.dart';

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
}

/// @nodoc
const $ValueFailure = _$ValueFailureTearOff();

/// @nodoc
mixin _$ValueFailure<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AuthValueFailure<T> failure) auth,
    required TResult Function(ClubValueFailure<T> failure) clubs,
    required TResult Function(T failedValue, int maxStringLength)
        exceedingLength,
    required TResult Function(T failedValue) empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(AuthValueFailure<T> failure)? auth,
    TResult Function(ClubValueFailure<T> failure)? clubs,
    TResult Function(T failedValue, int maxStringLength)? exceedingLength,
    TResult Function(T failedValue)? empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AuthValueFailure<T> failure)? auth,
    TResult Function(ClubValueFailure<T> failure)? clubs,
    TResult Function(T failedValue, int maxStringLength)? exceedingLength,
    TResult Function(T failedValue)? empty,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Auth<T> value) auth,
    required TResult Function(Clubs<T> value) clubs,
    required TResult Function(MaxStringLength<T> value) exceedingLength,
    required TResult Function(EmptyString<T> value) empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Auth<T> value)? auth,
    TResult Function(Clubs<T> value)? clubs,
    TResult Function(MaxStringLength<T> value)? exceedingLength,
    TResult Function(EmptyString<T> value)? empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Auth<T> value)? auth,
    TResult Function(Clubs<T> value)? clubs,
    TResult Function(MaxStringLength<T> value)? exceedingLength,
    TResult Function(EmptyString<T> value)? empty,
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
    required TResult Function(T failedValue, int maxStringLength)
        exceedingLength,
    required TResult Function(T failedValue) empty,
  }) {
    return auth(failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(AuthValueFailure<T> failure)? auth,
    TResult Function(ClubValueFailure<T> failure)? clubs,
    TResult Function(T failedValue, int maxStringLength)? exceedingLength,
    TResult Function(T failedValue)? empty,
  }) {
    return auth?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AuthValueFailure<T> failure)? auth,
    TResult Function(ClubValueFailure<T> failure)? clubs,
    TResult Function(T failedValue, int maxStringLength)? exceedingLength,
    TResult Function(T failedValue)? empty,
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
    required TResult Function(MaxStringLength<T> value) exceedingLength,
    required TResult Function(EmptyString<T> value) empty,
  }) {
    return auth(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Auth<T> value)? auth,
    TResult Function(Clubs<T> value)? clubs,
    TResult Function(MaxStringLength<T> value)? exceedingLength,
    TResult Function(EmptyString<T> value)? empty,
  }) {
    return auth?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Auth<T> value)? auth,
    TResult Function(Clubs<T> value)? clubs,
    TResult Function(MaxStringLength<T> value)? exceedingLength,
    TResult Function(EmptyString<T> value)? empty,
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
    required TResult Function(T failedValue, int maxStringLength)
        exceedingLength,
    required TResult Function(T failedValue) empty,
  }) {
    return clubs(failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(AuthValueFailure<T> failure)? auth,
    TResult Function(ClubValueFailure<T> failure)? clubs,
    TResult Function(T failedValue, int maxStringLength)? exceedingLength,
    TResult Function(T failedValue)? empty,
  }) {
    return clubs?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AuthValueFailure<T> failure)? auth,
    TResult Function(ClubValueFailure<T> failure)? clubs,
    TResult Function(T failedValue, int maxStringLength)? exceedingLength,
    TResult Function(T failedValue)? empty,
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
    required TResult Function(MaxStringLength<T> value) exceedingLength,
    required TResult Function(EmptyString<T> value) empty,
  }) {
    return clubs(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Auth<T> value)? auth,
    TResult Function(Clubs<T> value)? clubs,
    TResult Function(MaxStringLength<T> value)? exceedingLength,
    TResult Function(EmptyString<T> value)? empty,
  }) {
    return clubs?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Auth<T> value)? auth,
    TResult Function(Clubs<T> value)? clubs,
    TResult Function(MaxStringLength<T> value)? exceedingLength,
    TResult Function(EmptyString<T> value)? empty,
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
abstract class $MaxStringLengthCopyWith<T, $Res> {
  factory $MaxStringLengthCopyWith(
          MaxStringLength<T> value, $Res Function(MaxStringLength<T>) then) =
      _$MaxStringLengthCopyWithImpl<T, $Res>;

  $Res call({T failedValue, int maxStringLength});
}

/// @nodoc
class _$MaxStringLengthCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
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
    return 'ValueFailure<$T>.exceedingLength(failedValue: $failedValue, maxStringLength: $maxStringLength)';
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
    required TResult Function(AuthValueFailure<T> failure) auth,
    required TResult Function(ClubValueFailure<T> failure) clubs,
    required TResult Function(T failedValue, int maxStringLength)
        exceedingLength,
    required TResult Function(T failedValue) empty,
  }) {
    return exceedingLength(failedValue, maxStringLength);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(AuthValueFailure<T> failure)? auth,
    TResult Function(ClubValueFailure<T> failure)? clubs,
    TResult Function(T failedValue, int maxStringLength)? exceedingLength,
    TResult Function(T failedValue)? empty,
  }) {
    return exceedingLength?.call(failedValue, maxStringLength);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AuthValueFailure<T> failure)? auth,
    TResult Function(ClubValueFailure<T> failure)? clubs,
    TResult Function(T failedValue, int maxStringLength)? exceedingLength,
    TResult Function(T failedValue)? empty,
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
    required TResult Function(Auth<T> value) auth,
    required TResult Function(Clubs<T> value) clubs,
    required TResult Function(MaxStringLength<T> value) exceedingLength,
    required TResult Function(EmptyString<T> value) empty,
  }) {
    return exceedingLength(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Auth<T> value)? auth,
    TResult Function(Clubs<T> value)? clubs,
    TResult Function(MaxStringLength<T> value)? exceedingLength,
    TResult Function(EmptyString<T> value)? empty,
  }) {
    return exceedingLength?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Auth<T> value)? auth,
    TResult Function(Clubs<T> value)? clubs,
    TResult Function(MaxStringLength<T> value)? exceedingLength,
    TResult Function(EmptyString<T> value)? empty,
    required TResult orElse(),
  }) {
    if (exceedingLength != null) {
      return exceedingLength(this);
    }
    return orElse();
  }
}

abstract class MaxStringLength<T> implements ValueFailure<T> {
  const factory MaxStringLength(
      {required T failedValue,
      required int maxStringLength}) = _$MaxStringLength<T>;

  T get failedValue;

  int get maxStringLength;

  @JsonKey(ignore: true)
  $MaxStringLengthCopyWith<T, MaxStringLength<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmptyStringCopyWith<T, $Res> {
  factory $EmptyStringCopyWith(
          EmptyString<T> value, $Res Function(EmptyString<T>) then) =
      _$EmptyStringCopyWithImpl<T, $Res>;

  $Res call({T failedValue});
}

/// @nodoc
class _$EmptyStringCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
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
    return 'ValueFailure<$T>.empty(failedValue: $failedValue)';
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
    required TResult Function(AuthValueFailure<T> failure) auth,
    required TResult Function(ClubValueFailure<T> failure) clubs,
    required TResult Function(T failedValue, int maxStringLength)
        exceedingLength,
    required TResult Function(T failedValue) empty,
  }) {
    return empty(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(AuthValueFailure<T> failure)? auth,
    TResult Function(ClubValueFailure<T> failure)? clubs,
    TResult Function(T failedValue, int maxStringLength)? exceedingLength,
    TResult Function(T failedValue)? empty,
  }) {
    return empty?.call(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AuthValueFailure<T> failure)? auth,
    TResult Function(ClubValueFailure<T> failure)? clubs,
    TResult Function(T failedValue, int maxStringLength)? exceedingLength,
    TResult Function(T failedValue)? empty,
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
    required TResult Function(Auth<T> value) auth,
    required TResult Function(Clubs<T> value) clubs,
    required TResult Function(MaxStringLength<T> value) exceedingLength,
    required TResult Function(EmptyString<T> value) empty,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Auth<T> value)? auth,
    TResult Function(Clubs<T> value)? clubs,
    TResult Function(MaxStringLength<T> value)? exceedingLength,
    TResult Function(EmptyString<T> value)? empty,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Auth<T> value)? auth,
    TResult Function(Clubs<T> value)? clubs,
    TResult Function(MaxStringLength<T> value)? exceedingLength,
    TResult Function(EmptyString<T> value)? empty,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class EmptyString<T> implements ValueFailure<T> {
  const factory EmptyString({required T failedValue}) = _$EmptyString<T>;

  T get failedValue;

  @JsonKey(ignore: true)
  $EmptyStringCopyWith<T, EmptyString<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
