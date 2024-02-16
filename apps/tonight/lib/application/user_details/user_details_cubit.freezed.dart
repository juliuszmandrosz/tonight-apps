// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_details_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UserDetailsState {
  CubitStatus get status => throw _privateConstructorUsedError;
  Option<UserDetails> get user => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserDetailsStateCopyWith<UserDetailsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserDetailsStateCopyWith<$Res> {
  factory $UserDetailsStateCopyWith(
          UserDetailsState value, $Res Function(UserDetailsState) then) =
      _$UserDetailsStateCopyWithImpl<$Res, UserDetailsState>;
  @useResult
  $Res call({CubitStatus status, Option<UserDetails> user});
}

/// @nodoc
class _$UserDetailsStateCopyWithImpl<$Res, $Val extends UserDetailsState>
    implements $UserDetailsStateCopyWith<$Res> {
  _$UserDetailsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? user = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as CubitStatus,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as Option<UserDetails>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserDetailsStateImplCopyWith<$Res>
    implements $UserDetailsStateCopyWith<$Res> {
  factory _$$UserDetailsStateImplCopyWith(_$UserDetailsStateImpl value,
          $Res Function(_$UserDetailsStateImpl) then) =
      __$$UserDetailsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({CubitStatus status, Option<UserDetails> user});
}

/// @nodoc
class __$$UserDetailsStateImplCopyWithImpl<$Res>
    extends _$UserDetailsStateCopyWithImpl<$Res, _$UserDetailsStateImpl>
    implements _$$UserDetailsStateImplCopyWith<$Res> {
  __$$UserDetailsStateImplCopyWithImpl(_$UserDetailsStateImpl _value,
      $Res Function(_$UserDetailsStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? user = null,
  }) {
    return _then(_$UserDetailsStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as CubitStatus,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as Option<UserDetails>,
    ));
  }
}

/// @nodoc

class _$UserDetailsStateImpl implements _UserDetailsState {
  const _$UserDetailsStateImpl({required this.status, required this.user});

  @override
  final CubitStatus status;
  @override
  final Option<UserDetails> user;

  @override
  String toString() {
    return 'UserDetailsState(status: $status, user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserDetailsStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserDetailsStateImplCopyWith<_$UserDetailsStateImpl> get copyWith =>
      __$$UserDetailsStateImplCopyWithImpl<_$UserDetailsStateImpl>(
          this, _$identity);
}

abstract class _UserDetailsState implements UserDetailsState {
  const factory _UserDetailsState(
      {required final CubitStatus status,
      required final Option<UserDetails> user}) = _$UserDetailsStateImpl;

  @override
  CubitStatus get status;
  @override
  Option<UserDetails> get user;
  @override
  @JsonKey(ignore: true)
  _$$UserDetailsStateImplCopyWith<_$UserDetailsStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
