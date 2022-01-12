// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'club_value_failures.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ClubValueFailureTearOff {
  const _$ClubValueFailureTearOff();

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
    required TResult Function(T failedValue) invalidPhoneNumber,
    required TResult Function(T failedValue) invalidReviewAvg,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T failedValue)? invalidPhoneNumber,
    TResult Function(T failedValue)? invalidReviewAvg,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue)? invalidPhoneNumber,
    TResult Function(T failedValue)? invalidReviewAvg,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InvalidPhoneNumber<T> value) invalidPhoneNumber,
    required TResult Function(InvalidReviewAvg<T> value) invalidReviewAvg,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InvalidPhoneNumber<T> value)? invalidPhoneNumber,
    TResult Function(InvalidReviewAvg<T> value)? invalidReviewAvg,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
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
    required TResult Function(T failedValue) invalidPhoneNumber,
    required TResult Function(T failedValue) invalidReviewAvg,
  }) {
    return invalidPhoneNumber(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T failedValue)? invalidPhoneNumber,
    TResult Function(T failedValue)? invalidReviewAvg,
  }) {
    return invalidPhoneNumber?.call(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
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
    required TResult Function(InvalidPhoneNumber<T> value) invalidPhoneNumber,
    required TResult Function(InvalidReviewAvg<T> value) invalidReviewAvg,
  }) {
    return invalidPhoneNumber(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InvalidPhoneNumber<T> value)? invalidPhoneNumber,
    TResult Function(InvalidReviewAvg<T> value)? invalidReviewAvg,
  }) {
    return invalidPhoneNumber?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
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
    required TResult Function(T failedValue) invalidPhoneNumber,
    required TResult Function(T failedValue) invalidReviewAvg,
  }) {
    return invalidReviewAvg(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T failedValue)? invalidPhoneNumber,
    TResult Function(T failedValue)? invalidReviewAvg,
  }) {
    return invalidReviewAvg?.call(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
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
    required TResult Function(InvalidPhoneNumber<T> value) invalidPhoneNumber,
    required TResult Function(InvalidReviewAvg<T> value) invalidReviewAvg,
  }) {
    return invalidReviewAvg(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InvalidPhoneNumber<T> value)? invalidPhoneNumber,
    TResult Function(InvalidReviewAvg<T> value)? invalidReviewAvg,
  }) {
    return invalidReviewAvg?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
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
