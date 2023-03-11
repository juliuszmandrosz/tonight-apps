// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'push_notifications_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PushNotificationsState {
  CubitStatus get status => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PushNotificationsStateCopyWith<PushNotificationsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PushNotificationsStateCopyWith<$Res> {
  factory $PushNotificationsStateCopyWith(PushNotificationsState value,
          $Res Function(PushNotificationsState) then) =
      _$PushNotificationsStateCopyWithImpl<$Res, PushNotificationsState>;
  @useResult
  $Res call({CubitStatus status});
}

/// @nodoc
class _$PushNotificationsStateCopyWithImpl<$Res,
        $Val extends PushNotificationsState>
    implements $PushNotificationsStateCopyWith<$Res> {
  _$PushNotificationsStateCopyWithImpl(this._value, this._then);

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
abstract class _$$_PushNotificationsStateCopyWith<$Res>
    implements $PushNotificationsStateCopyWith<$Res> {
  factory _$$_PushNotificationsStateCopyWith(_$_PushNotificationsState value,
          $Res Function(_$_PushNotificationsState) then) =
      __$$_PushNotificationsStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({CubitStatus status});
}

/// @nodoc
class __$$_PushNotificationsStateCopyWithImpl<$Res>
    extends _$PushNotificationsStateCopyWithImpl<$Res,
        _$_PushNotificationsState>
    implements _$$_PushNotificationsStateCopyWith<$Res> {
  __$$_PushNotificationsStateCopyWithImpl(_$_PushNotificationsState _value,
      $Res Function(_$_PushNotificationsState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
  }) {
    return _then(_$_PushNotificationsState(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as CubitStatus,
    ));
  }
}

/// @nodoc

class _$_PushNotificationsState extends _PushNotificationsState {
  _$_PushNotificationsState({required this.status}) : super._();

  @override
  final CubitStatus status;

  @override
  String toString() {
    return 'PushNotificationsState(status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PushNotificationsState &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PushNotificationsStateCopyWith<_$_PushNotificationsState> get copyWith =>
      __$$_PushNotificationsStateCopyWithImpl<_$_PushNotificationsState>(
          this, _$identity);
}

abstract class _PushNotificationsState extends PushNotificationsState {
  factory _PushNotificationsState({required final CubitStatus status}) =
      _$_PushNotificationsState;
  _PushNotificationsState._() : super._();

  @override
  CubitStatus get status;
  @override
  @JsonKey(ignore: true)
  _$$_PushNotificationsStateCopyWith<_$_PushNotificationsState> get copyWith =>
      throw _privateConstructorUsedError;
}
