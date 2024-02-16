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
  String? get lastHandledMessageId => throw _privateConstructorUsedError;

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
  $Res call({CubitStatus status, String? lastHandledMessageId});
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
    Object? lastHandledMessageId = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as CubitStatus,
      lastHandledMessageId: freezed == lastHandledMessageId
          ? _value.lastHandledMessageId
          : lastHandledMessageId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PushNotificationsStateImplCopyWith<$Res>
    implements $PushNotificationsStateCopyWith<$Res> {
  factory _$$PushNotificationsStateImplCopyWith(
          _$PushNotificationsStateImpl value,
          $Res Function(_$PushNotificationsStateImpl) then) =
      __$$PushNotificationsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({CubitStatus status, String? lastHandledMessageId});
}

/// @nodoc
class __$$PushNotificationsStateImplCopyWithImpl<$Res>
    extends _$PushNotificationsStateCopyWithImpl<$Res,
        _$PushNotificationsStateImpl>
    implements _$$PushNotificationsStateImplCopyWith<$Res> {
  __$$PushNotificationsStateImplCopyWithImpl(
      _$PushNotificationsStateImpl _value,
      $Res Function(_$PushNotificationsStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? lastHandledMessageId = freezed,
  }) {
    return _then(_$PushNotificationsStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as CubitStatus,
      lastHandledMessageId: freezed == lastHandledMessageId
          ? _value.lastHandledMessageId
          : lastHandledMessageId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$PushNotificationsStateImpl extends _PushNotificationsState {
  _$PushNotificationsStateImpl(
      {required this.status, required this.lastHandledMessageId})
      : super._();

  @override
  final CubitStatus status;
  @override
  final String? lastHandledMessageId;

  @override
  String toString() {
    return 'PushNotificationsState(status: $status, lastHandledMessageId: $lastHandledMessageId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PushNotificationsStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.lastHandledMessageId, lastHandledMessageId) ||
                other.lastHandledMessageId == lastHandledMessageId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, lastHandledMessageId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PushNotificationsStateImplCopyWith<_$PushNotificationsStateImpl>
      get copyWith => __$$PushNotificationsStateImplCopyWithImpl<
          _$PushNotificationsStateImpl>(this, _$identity);
}

abstract class _PushNotificationsState extends PushNotificationsState {
  factory _PushNotificationsState(
          {required final CubitStatus status,
          required final String? lastHandledMessageId}) =
      _$PushNotificationsStateImpl;
  _PushNotificationsState._() : super._();

  @override
  CubitStatus get status;
  @override
  String? get lastHandledMessageId;
  @override
  @JsonKey(ignore: true)
  _$$PushNotificationsStateImplCopyWith<_$PushNotificationsStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
