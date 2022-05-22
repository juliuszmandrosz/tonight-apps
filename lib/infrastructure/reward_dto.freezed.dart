// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'reward_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RewardDto _$RewardDtoFromJson(Map<String, dynamic> json) {
  return _RewardDto.fromJson(json);
}

/// @nodoc
mixin _$RewardDto {
  @JsonKey(ignore: true)
  String? get id => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  int get requiredEntries => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RewardDtoCopyWith<RewardDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RewardDtoCopyWith<$Res> {
  factory $RewardDtoCopyWith(RewardDto value, $Res Function(RewardDto) then) =
      _$RewardDtoCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(ignore: true) String? id,
      String description,
      int requiredEntries});
}

/// @nodoc
class _$RewardDtoCopyWithImpl<$Res> implements $RewardDtoCopyWith<$Res> {
  _$RewardDtoCopyWithImpl(this._value, this._then);

  final RewardDto _value;
  // ignore: unused_field
  final $Res Function(RewardDto) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? description = freezed,
    Object? requiredEntries = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      requiredEntries: requiredEntries == freezed
          ? _value.requiredEntries
          : requiredEntries // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$$_RewardDtoCopyWith<$Res> implements $RewardDtoCopyWith<$Res> {
  factory _$$_RewardDtoCopyWith(
          _$_RewardDto value, $Res Function(_$_RewardDto) then) =
      __$$_RewardDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(ignore: true) String? id,
      String description,
      int requiredEntries});
}

/// @nodoc
class __$$_RewardDtoCopyWithImpl<$Res> extends _$RewardDtoCopyWithImpl<$Res>
    implements _$$_RewardDtoCopyWith<$Res> {
  __$$_RewardDtoCopyWithImpl(
      _$_RewardDto _value, $Res Function(_$_RewardDto) _then)
      : super(_value, (v) => _then(v as _$_RewardDto));

  @override
  _$_RewardDto get _value => super._value as _$_RewardDto;

  @override
  $Res call({
    Object? id = freezed,
    Object? description = freezed,
    Object? requiredEntries = freezed,
  }) {
    return _then(_$_RewardDto(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      requiredEntries: requiredEntries == freezed
          ? _value.requiredEntries
          : requiredEntries // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

@JsonSerializable()
class _$_RewardDto extends _RewardDto {
  const _$_RewardDto(
      {@JsonKey(ignore: true) this.id,
      required this.description,
      required this.requiredEntries})
      : super._();

  factory _$_RewardDto.fromJson(Map<String, dynamic> json) =>
      _$$_RewardDtoFromJson(json);

  @override
  @JsonKey(ignore: true)
  final String? id;
  @override
  final String description;
  @override
  final int requiredEntries;

  @override
  String toString() {
    return 'RewardDto(id: $id, description: $description, requiredEntries: $requiredEntries)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RewardDto &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality()
                .equals(other.requiredEntries, requiredEntries));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(requiredEntries));

  @JsonKey(ignore: true)
  @override
  _$$_RewardDtoCopyWith<_$_RewardDto> get copyWith =>
      __$$_RewardDtoCopyWithImpl<_$_RewardDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RewardDtoToJson(this);
  }
}

abstract class _RewardDto extends RewardDto {
  const factory _RewardDto(
      {@JsonKey(ignore: true) final String? id,
      required final String description,
      required final int requiredEntries}) = _$_RewardDto;
  const _RewardDto._() : super._();

  factory _RewardDto.fromJson(Map<String, dynamic> json) =
      _$_RewardDto.fromJson;

  @override
  @JsonKey(ignore: true)
  String? get id => throw _privateConstructorUsedError;
  @override
  String get description => throw _privateConstructorUsedError;
  @override
  int get requiredEntries => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_RewardDtoCopyWith<_$_RewardDto> get copyWith =>
      throw _privateConstructorUsedError;
}
