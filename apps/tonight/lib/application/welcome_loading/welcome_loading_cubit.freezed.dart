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
  bool get dependenciesLoaded => throw _privateConstructorUsedError;
  Option<String> get username => throw _privateConstructorUsedError;
  CubitStatus get status => throw _privateConstructorUsedError;
  bool get hasConnection => throw _privateConstructorUsedError;

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
  $Res call(
      {bool dependenciesLoaded,
      Option<String> username,
      CubitStatus status,
      bool hasConnection});
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
    Object? dependenciesLoaded = null,
    Object? username = null,
    Object? status = null,
    Object? hasConnection = null,
  }) {
    return _then(_value.copyWith(
      dependenciesLoaded: null == dependenciesLoaded
          ? _value.dependenciesLoaded
          : dependenciesLoaded // ignore: cast_nullable_to_non_nullable
              as bool,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as Option<String>,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as CubitStatus,
      hasConnection: null == hasConnection
          ? _value.hasConnection
          : hasConnection // ignore: cast_nullable_to_non_nullable
              as bool,
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
  $Res call(
      {bool dependenciesLoaded,
      Option<String> username,
      CubitStatus status,
      bool hasConnection});
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
    Object? dependenciesLoaded = null,
    Object? username = null,
    Object? status = null,
    Object? hasConnection = null,
  }) {
    return _then(_$_WelcomeLoadingState(
      dependenciesLoaded: null == dependenciesLoaded
          ? _value.dependenciesLoaded
          : dependenciesLoaded // ignore: cast_nullable_to_non_nullable
              as bool,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as Option<String>,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as CubitStatus,
      hasConnection: null == hasConnection
          ? _value.hasConnection
          : hasConnection // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_WelcomeLoadingState extends _WelcomeLoadingState {
  _$_WelcomeLoadingState(
      {required this.dependenciesLoaded,
      required this.username,
      required this.status,
      required this.hasConnection})
      : super._();

  @override
  final bool dependenciesLoaded;
  @override
  final Option<String> username;
  @override
  final CubitStatus status;
  @override
  final bool hasConnection;

  @override
  String toString() {
    return 'WelcomeLoadingState(dependenciesLoaded: $dependenciesLoaded, username: $username, status: $status, hasConnection: $hasConnection)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WelcomeLoadingState &&
            (identical(other.dependenciesLoaded, dependenciesLoaded) ||
                other.dependenciesLoaded == dependenciesLoaded) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.hasConnection, hasConnection) ||
                other.hasConnection == hasConnection));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, dependenciesLoaded, username, status, hasConnection);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_WelcomeLoadingStateCopyWith<_$_WelcomeLoadingState> get copyWith =>
      __$$_WelcomeLoadingStateCopyWithImpl<_$_WelcomeLoadingState>(
          this, _$identity);
}

abstract class _WelcomeLoadingState extends WelcomeLoadingState {
  factory _WelcomeLoadingState(
      {required final bool dependenciesLoaded,
      required final Option<String> username,
      required final CubitStatus status,
      required final bool hasConnection}) = _$_WelcomeLoadingState;
  _WelcomeLoadingState._() : super._();

  @override
  bool get dependenciesLoaded;
  @override
  Option<String> get username;
  @override
  CubitStatus get status;
  @override
  bool get hasConnection;
  @override
  @JsonKey(ignore: true)
  _$$_WelcomeLoadingStateCopyWith<_$_WelcomeLoadingState> get copyWith =>
      throw _privateConstructorUsedError;
}
