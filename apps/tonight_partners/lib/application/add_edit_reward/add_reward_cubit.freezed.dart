// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'add_reward_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AddRewardState {
  RequiredEntries get requiredEntries => throw _privateConstructorUsedError;
  RewardDescription get rewardDescription => throw _privateConstructorUsedError;
  FormzStatus get status => throw _privateConstructorUsedError;
  Option<String> get errorMessage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AddRewardStateCopyWith<AddRewardState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddRewardStateCopyWith<$Res> {
  factory $AddRewardStateCopyWith(
          AddRewardState value, $Res Function(AddRewardState) then) =
      _$AddRewardStateCopyWithImpl<$Res>;
  $Res call(
      {RequiredEntries requiredEntries,
      RewardDescription rewardDescription,
      FormzStatus status,
      Option<String> errorMessage});
}

/// @nodoc
class _$AddRewardStateCopyWithImpl<$Res>
    implements $AddRewardStateCopyWith<$Res> {
  _$AddRewardStateCopyWithImpl(this._value, this._then);

  final AddRewardState _value;
  // ignore: unused_field
  final $Res Function(AddRewardState) _then;

  @override
  $Res call({
    Object? requiredEntries = freezed,
    Object? rewardDescription = freezed,
    Object? status = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(_value.copyWith(
      requiredEntries: requiredEntries == freezed
          ? _value.requiredEntries
          : requiredEntries // ignore: cast_nullable_to_non_nullable
              as RequiredEntries,
      rewardDescription: rewardDescription == freezed
          ? _value.rewardDescription
          : rewardDescription // ignore: cast_nullable_to_non_nullable
              as RewardDescription,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FormzStatus,
      errorMessage: errorMessage == freezed
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as Option<String>,
    ));
  }
}

/// @nodoc
abstract class _$$_AddRewardStateCopyWith<$Res>
    implements $AddRewardStateCopyWith<$Res> {
  factory _$$_AddRewardStateCopyWith(
          _$_AddRewardState value, $Res Function(_$_AddRewardState) then) =
      __$$_AddRewardStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {RequiredEntries requiredEntries,
      RewardDescription rewardDescription,
      FormzStatus status,
      Option<String> errorMessage});
}

/// @nodoc
class __$$_AddRewardStateCopyWithImpl<$Res>
    extends _$AddRewardStateCopyWithImpl<$Res>
    implements _$$_AddRewardStateCopyWith<$Res> {
  __$$_AddRewardStateCopyWithImpl(
      _$_AddRewardState _value, $Res Function(_$_AddRewardState) _then)
      : super(_value, (v) => _then(v as _$_AddRewardState));

  @override
  _$_AddRewardState get _value => super._value as _$_AddRewardState;

  @override
  $Res call({
    Object? requiredEntries = freezed,
    Object? rewardDescription = freezed,
    Object? status = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(_$_AddRewardState(
      requiredEntries: requiredEntries == freezed
          ? _value.requiredEntries
          : requiredEntries // ignore: cast_nullable_to_non_nullable
              as RequiredEntries,
      rewardDescription: rewardDescription == freezed
          ? _value.rewardDescription
          : rewardDescription // ignore: cast_nullable_to_non_nullable
              as RewardDescription,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FormzStatus,
      errorMessage: errorMessage == freezed
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as Option<String>,
    ));
  }
}

/// @nodoc

class _$_AddRewardState implements _AddRewardState {
  const _$_AddRewardState(
      {required this.requiredEntries,
      required this.rewardDescription,
      required this.status,
      required this.errorMessage});

  @override
  final RequiredEntries requiredEntries;
  @override
  final RewardDescription rewardDescription;
  @override
  final FormzStatus status;
  @override
  final Option<String> errorMessage;

  @override
  String toString() {
    return 'AddRewardState(requiredEntries: $requiredEntries, rewardDescription: $rewardDescription, status: $status, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AddRewardState &&
            const DeepCollectionEquality()
                .equals(other.requiredEntries, requiredEntries) &&
            const DeepCollectionEquality()
                .equals(other.rewardDescription, rewardDescription) &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality()
                .equals(other.errorMessage, errorMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(requiredEntries),
      const DeepCollectionEquality().hash(rewardDescription),
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(errorMessage));

  @JsonKey(ignore: true)
  @override
  _$$_AddRewardStateCopyWith<_$_AddRewardState> get copyWith =>
      __$$_AddRewardStateCopyWithImpl<_$_AddRewardState>(this, _$identity);
}

abstract class _AddRewardState implements AddRewardState {
  const factory _AddRewardState(
      {required final RequiredEntries requiredEntries,
      required final RewardDescription rewardDescription,
      required final FormzStatus status,
      required final Option<String> errorMessage}) = _$_AddRewardState;

  @override
  RequiredEntries get requiredEntries;
  @override
  RewardDescription get rewardDescription;
  @override
  FormzStatus get status;
  @override
  Option<String> get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$_AddRewardStateCopyWith<_$_AddRewardState> get copyWith =>
      throw _privateConstructorUsedError;
}
