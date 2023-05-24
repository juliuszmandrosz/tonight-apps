// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'welcome_loader_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$WelcomeLoaderState {
  CubitStatus get status => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $WelcomeLoaderStateCopyWith<WelcomeLoaderState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WelcomeLoaderStateCopyWith<$Res> {
  factory $WelcomeLoaderStateCopyWith(
          WelcomeLoaderState value, $Res Function(WelcomeLoaderState) then) =
      _$WelcomeLoaderStateCopyWithImpl<$Res, WelcomeLoaderState>;
  @useResult
  $Res call({CubitStatus status});
}

/// @nodoc
class _$WelcomeLoaderStateCopyWithImpl<$Res, $Val extends WelcomeLoaderState>
    implements $WelcomeLoaderStateCopyWith<$Res> {
  _$WelcomeLoaderStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as CubitStatus,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_WelcomeLoaderStateCopyWith<$Res>
    implements $WelcomeLoaderStateCopyWith<$Res> {
  factory _$$_WelcomeLoaderStateCopyWith(_$_WelcomeLoaderState value,
          $Res Function(_$_WelcomeLoaderState) then) =
      __$$_WelcomeLoaderStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({CubitStatus status});
}

/// @nodoc
class __$$_WelcomeLoaderStateCopyWithImpl<$Res>
    extends _$WelcomeLoaderStateCopyWithImpl<$Res, _$_WelcomeLoaderState>
    implements _$$_WelcomeLoaderStateCopyWith<$Res> {
  __$$_WelcomeLoaderStateCopyWithImpl(
      _$_WelcomeLoaderState _value, $Res Function(_$_WelcomeLoaderState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
  }) {
    return _then(_$_WelcomeLoaderState(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as CubitStatus,
    ));
  }
}

/// @nodoc

class _$_WelcomeLoaderState implements _WelcomeLoaderState {
  const _$_WelcomeLoaderState({required this.status});

  @override
  final CubitStatus status;

  @override
  String toString() {
    return 'WelcomeLoaderState(status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WelcomeLoaderState &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_WelcomeLoaderStateCopyWith<_$_WelcomeLoaderState> get copyWith =>
      __$$_WelcomeLoaderStateCopyWithImpl<_$_WelcomeLoaderState>(
          this, _$identity);
}

abstract class _WelcomeLoaderState implements WelcomeLoaderState {
  const factory _WelcomeLoaderState({required final CubitStatus status}) =
      _$_WelcomeLoaderState;

  @override
  CubitStatus get status;
  @override
  @JsonKey(ignore: true)
  _$$_WelcomeLoaderStateCopyWith<_$_WelcomeLoaderState> get copyWith =>
      throw _privateConstructorUsedError;
}
