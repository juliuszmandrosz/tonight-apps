// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'selector_club_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SelectorClubState {
  Option<Club> get selectorClub => throw _privateConstructorUsedError;
  List<Reward> get rewards => throw _privateConstructorUsedError;
  CubitStatus get status => throw _privateConstructorUsedError;
  Option<String> get errorMessage => throw _privateConstructorUsedError;
  FormzStatus get enterAccessCodeStatus => throw _privateConstructorUsedError;
  String get accessCode => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SelectorClubStateCopyWith<SelectorClubState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SelectorClubStateCopyWith<$Res> {
  factory $SelectorClubStateCopyWith(
          SelectorClubState value, $Res Function(SelectorClubState) then) =
      _$SelectorClubStateCopyWithImpl<$Res>;
  $Res call(
      {Option<Club> selectorClub,
      List<Reward> rewards,
      CubitStatus status,
      Option<String> errorMessage,
      FormzStatus enterAccessCodeStatus,
      String accessCode});
}

/// @nodoc
class _$SelectorClubStateCopyWithImpl<$Res>
    implements $SelectorClubStateCopyWith<$Res> {
  _$SelectorClubStateCopyWithImpl(this._value, this._then);

  final SelectorClubState _value;
  // ignore: unused_field
  final $Res Function(SelectorClubState) _then;

  @override
  $Res call({
    Object? selectorClub = freezed,
    Object? rewards = freezed,
    Object? status = freezed,
    Object? errorMessage = freezed,
    Object? enterAccessCodeStatus = freezed,
    Object? accessCode = freezed,
  }) {
    return _then(_value.copyWith(
      selectorClub: selectorClub == freezed
          ? _value.selectorClub
          : selectorClub // ignore: cast_nullable_to_non_nullable
              as Option<Club>,
      rewards: rewards == freezed
          ? _value.rewards
          : rewards // ignore: cast_nullable_to_non_nullable
              as List<Reward>,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as CubitStatus,
      errorMessage: errorMessage == freezed
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as Option<String>,
      enterAccessCodeStatus: enterAccessCodeStatus == freezed
          ? _value.enterAccessCodeStatus
          : enterAccessCodeStatus // ignore: cast_nullable_to_non_nullable
              as FormzStatus,
      accessCode: accessCode == freezed
          ? _value.accessCode
          : accessCode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_SelectorClubStateCopyWith<$Res>
    implements $SelectorClubStateCopyWith<$Res> {
  factory _$$_SelectorClubStateCopyWith(_$_SelectorClubState value,
          $Res Function(_$_SelectorClubState) then) =
      __$$_SelectorClubStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {Option<Club> selectorClub,
      List<Reward> rewards,
      CubitStatus status,
      Option<String> errorMessage,
      FormzStatus enterAccessCodeStatus,
      String accessCode});
}

/// @nodoc
class __$$_SelectorClubStateCopyWithImpl<$Res>
    extends _$SelectorClubStateCopyWithImpl<$Res>
    implements _$$_SelectorClubStateCopyWith<$Res> {
  __$$_SelectorClubStateCopyWithImpl(
      _$_SelectorClubState _value, $Res Function(_$_SelectorClubState) _then)
      : super(_value, (v) => _then(v as _$_SelectorClubState));

  @override
  _$_SelectorClubState get _value => super._value as _$_SelectorClubState;

  @override
  $Res call({
    Object? selectorClub = freezed,
    Object? rewards = freezed,
    Object? status = freezed,
    Object? errorMessage = freezed,
    Object? enterAccessCodeStatus = freezed,
    Object? accessCode = freezed,
  }) {
    return _then(_$_SelectorClubState(
      selectorClub: selectorClub == freezed
          ? _value.selectorClub
          : selectorClub // ignore: cast_nullable_to_non_nullable
              as Option<Club>,
      rewards: rewards == freezed
          ? _value._rewards
          : rewards // ignore: cast_nullable_to_non_nullable
              as List<Reward>,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as CubitStatus,
      errorMessage: errorMessage == freezed
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as Option<String>,
      enterAccessCodeStatus: enterAccessCodeStatus == freezed
          ? _value.enterAccessCodeStatus
          : enterAccessCodeStatus // ignore: cast_nullable_to_non_nullable
              as FormzStatus,
      accessCode: accessCode == freezed
          ? _value.accessCode
          : accessCode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_SelectorClubState implements _SelectorClubState {
  const _$_SelectorClubState(
      {required this.selectorClub,
      required final List<Reward> rewards,
      required this.status,
      required this.errorMessage,
      required this.enterAccessCodeStatus,
      required this.accessCode})
      : _rewards = rewards;

  @override
  final Option<Club> selectorClub;
  final List<Reward> _rewards;
  @override
  List<Reward> get rewards {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_rewards);
  }

  @override
  final CubitStatus status;
  @override
  final Option<String> errorMessage;
  @override
  final FormzStatus enterAccessCodeStatus;
  @override
  final String accessCode;

  @override
  String toString() {
    return 'SelectorClubState(selectorClub: $selectorClub, rewards: $rewards, status: $status, errorMessage: $errorMessage, enterAccessCodeStatus: $enterAccessCodeStatus, accessCode: $accessCode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SelectorClubState &&
            const DeepCollectionEquality()
                .equals(other.selectorClub, selectorClub) &&
            const DeepCollectionEquality().equals(other._rewards, _rewards) &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality()
                .equals(other.errorMessage, errorMessage) &&
            const DeepCollectionEquality()
                .equals(other.enterAccessCodeStatus, enterAccessCodeStatus) &&
            const DeepCollectionEquality()
                .equals(other.accessCode, accessCode));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(selectorClub),
      const DeepCollectionEquality().hash(_rewards),
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(errorMessage),
      const DeepCollectionEquality().hash(enterAccessCodeStatus),
      const DeepCollectionEquality().hash(accessCode));

  @JsonKey(ignore: true)
  @override
  _$$_SelectorClubStateCopyWith<_$_SelectorClubState> get copyWith =>
      __$$_SelectorClubStateCopyWithImpl<_$_SelectorClubState>(
          this, _$identity);
}

abstract class _SelectorClubState implements SelectorClubState {
  const factory _SelectorClubState(
      {required final Option<Club> selectorClub,
      required final List<Reward> rewards,
      required final CubitStatus status,
      required final Option<String> errorMessage,
      required final FormzStatus enterAccessCodeStatus,
      required final String accessCode}) = _$_SelectorClubState;

  @override
  Option<Club> get selectorClub;
  @override
  List<Reward> get rewards;
  @override
  CubitStatus get status;
  @override
  Option<String> get errorMessage;
  @override
  FormzStatus get enterAccessCodeStatus;
  @override
  String get accessCode;
  @override
  @JsonKey(ignore: true)
  _$$_SelectorClubStateCopyWith<_$_SelectorClubState> get copyWith =>
      throw _privateConstructorUsedError;
}
