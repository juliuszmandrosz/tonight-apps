// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'welcome_loading_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$WelcomeLoadingState {
  CubitStatus get status => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $WelcomeLoadingStateCopyWith<WelcomeLoadingState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WelcomeLoadingStateCopyWith<$Res> {
  factory $WelcomeLoadingStateCopyWith(
          WelcomeLoadingState value, $Res Function(WelcomeLoadingState) then) =
      _$WelcomeLoadingStateCopyWithImpl<$Res, WelcomeLoadingState>;
  @useResult
  $Res call({CubitStatus status});
}

/// @nodoc
class _$WelcomeLoadingStateCopyWithImpl<$Res, $Val extends WelcomeLoadingState>
    implements $WelcomeLoadingStateCopyWith<$Res> {
  _$WelcomeLoadingStateCopyWithImpl(this._value, this._then);

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
abstract class _$$_WelcomeLoadingStateCopyWith<$Res>
    implements $WelcomeLoadingStateCopyWith<$Res> {
  factory _$$_WelcomeLoadingStateCopyWith(_$_WelcomeLoadingState value,
          $Res Function(_$_WelcomeLoadingState) then) =
      __$$_WelcomeLoadingStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({CubitStatus status});
}

/// @nodoc
class __$$_WelcomeLoadingStateCopyWithImpl<$Res>
    extends _$WelcomeLoadingStateCopyWithImpl<$Res, _$_WelcomeLoadingState>
    implements _$$_WelcomeLoadingStateCopyWith<$Res> {
  __$$_WelcomeLoadingStateCopyWithImpl(_$_WelcomeLoadingState _value,
      $Res Function(_$_WelcomeLoadingState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
  }) {
    return _then(_$_WelcomeLoadingState(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as CubitStatus,
    ));
  }
}

/// @nodoc

class _$_WelcomeLoadingState extends _WelcomeLoadingState {
  _$_WelcomeLoadingState({required this.status}) : super._();

  @override
  final CubitStatus status;

  @override
  String toString() {
    return 'WelcomeLoadingState(status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WelcomeLoadingState &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_WelcomeLoadingStateCopyWith<_$_WelcomeLoadingState> get copyWith =>
      __$$_WelcomeLoadingStateCopyWithImpl<_$_WelcomeLoadingState>(
          this, _$identity);
}

abstract class _WelcomeLoadingState extends WelcomeLoadingState {
  factory _WelcomeLoadingState({required final CubitStatus status}) =
      _$_WelcomeLoadingState;
  _WelcomeLoadingState._() : super._();

  @override
  CubitStatus get status;
  @override
  @JsonKey(ignore: true)
  _$$_WelcomeLoadingStateCopyWith<_$_WelcomeLoadingState> get copyWith =>
      throw _privateConstructorUsedError;
}
