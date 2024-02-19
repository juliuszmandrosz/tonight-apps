// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'daily_spin_rewards_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DailySpinRewardsDto _$DailySpinRewardsDtoFromJson(Map<String, dynamic> json) {
  return _DailySpinRewardsDto.fromJson(json);
}

/// @nodoc
mixin _$DailySpinRewardsDto {
  List<int> get rewards => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DailySpinRewardsDtoCopyWith<DailySpinRewardsDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DailySpinRewardsDtoCopyWith<$Res> {
  factory $DailySpinRewardsDtoCopyWith(
          DailySpinRewardsDto value, $Res Function(DailySpinRewardsDto) then) =
      _$DailySpinRewardsDtoCopyWithImpl<$Res, DailySpinRewardsDto>;
  @useResult
  $Res call({List<int> rewards});
}

/// @nodoc
class _$DailySpinRewardsDtoCopyWithImpl<$Res, $Val extends DailySpinRewardsDto>
    implements $DailySpinRewardsDtoCopyWith<$Res> {
  _$DailySpinRewardsDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rewards = null,
  }) {
    return _then(_value.copyWith(
      rewards: null == rewards
          ? _value.rewards
          : rewards // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DailySpinRewardsDtoImplCopyWith<$Res>
    implements $DailySpinRewardsDtoCopyWith<$Res> {
  factory _$$DailySpinRewardsDtoImplCopyWith(_$DailySpinRewardsDtoImpl value,
          $Res Function(_$DailySpinRewardsDtoImpl) then) =
      __$$DailySpinRewardsDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<int> rewards});
}

/// @nodoc
class __$$DailySpinRewardsDtoImplCopyWithImpl<$Res>
    extends _$DailySpinRewardsDtoCopyWithImpl<$Res, _$DailySpinRewardsDtoImpl>
    implements _$$DailySpinRewardsDtoImplCopyWith<$Res> {
  __$$DailySpinRewardsDtoImplCopyWithImpl(_$DailySpinRewardsDtoImpl _value,
      $Res Function(_$DailySpinRewardsDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rewards = null,
  }) {
    return _then(_$DailySpinRewardsDtoImpl(
      rewards: null == rewards
          ? _value._rewards
          : rewards // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ));
  }
}

/// @nodoc

@JsonSerializable()
class _$DailySpinRewardsDtoImpl extends _DailySpinRewardsDto {
  const _$DailySpinRewardsDtoImpl({required final List<int> rewards})
      : _rewards = rewards,
        super._();

  factory _$DailySpinRewardsDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$DailySpinRewardsDtoImplFromJson(json);

  final List<int> _rewards;
  @override
  List<int> get rewards {
    if (_rewards is EqualUnmodifiableListView) return _rewards;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_rewards);
  }

  @override
  String toString() {
    return 'DailySpinRewardsDto(rewards: $rewards)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DailySpinRewardsDtoImpl &&
            const DeepCollectionEquality().equals(other._rewards, _rewards));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_rewards));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DailySpinRewardsDtoImplCopyWith<_$DailySpinRewardsDtoImpl> get copyWith =>
      __$$DailySpinRewardsDtoImplCopyWithImpl<_$DailySpinRewardsDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DailySpinRewardsDtoImplToJson(
      this,
    );
  }
}

abstract class _DailySpinRewardsDto extends DailySpinRewardsDto {
  const factory _DailySpinRewardsDto({required final List<int> rewards}) =
      _$DailySpinRewardsDtoImpl;
  const _DailySpinRewardsDto._() : super._();

  factory _DailySpinRewardsDto.fromJson(Map<String, dynamic> json) =
      _$DailySpinRewardsDtoImpl.fromJson;

  @override
  List<int> get rewards;
  @override
  @JsonKey(ignore: true)
  _$$DailySpinRewardsDtoImplCopyWith<_$DailySpinRewardsDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
