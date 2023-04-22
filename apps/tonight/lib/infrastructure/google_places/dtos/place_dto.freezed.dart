// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'place_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PlaceDto _$PlaceDtoFromJson(Map<String, dynamic> json) {
  return _PlaceDto.fromJson(json);
}

/// @nodoc
mixin _$PlaceDto {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PlaceDtoCopyWith<PlaceDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlaceDtoCopyWith<$Res> {
  factory $PlaceDtoCopyWith(PlaceDto value, $Res Function(PlaceDto) then) =
      _$PlaceDtoCopyWithImpl<$Res, PlaceDto>;
  @useResult
  $Res call({String id, String name});
}

/// @nodoc
class _$PlaceDtoCopyWithImpl<$Res, $Val extends PlaceDto>
    implements $PlaceDtoCopyWith<$Res> {
  _$PlaceDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PlaceDtoCopyWith<$Res> implements $PlaceDtoCopyWith<$Res> {
  factory _$$_PlaceDtoCopyWith(
          _$_PlaceDto value, $Res Function(_$_PlaceDto) then) =
      __$$_PlaceDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String name});
}

/// @nodoc
class __$$_PlaceDtoCopyWithImpl<$Res>
    extends _$PlaceDtoCopyWithImpl<$Res, _$_PlaceDto>
    implements _$$_PlaceDtoCopyWith<$Res> {
  __$$_PlaceDtoCopyWithImpl(
      _$_PlaceDto _value, $Res Function(_$_PlaceDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_$_PlaceDto(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable()
class _$_PlaceDto extends _PlaceDto {
  const _$_PlaceDto({required this.id, required this.name}) : super._();

  factory _$_PlaceDto.fromJson(Map<String, dynamic> json) =>
      _$$_PlaceDtoFromJson(json);

  @override
  final String id;
  @override
  final String name;

  @override
  String toString() {
    return 'PlaceDto(id: $id, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PlaceDto &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PlaceDtoCopyWith<_$_PlaceDto> get copyWith =>
      __$$_PlaceDtoCopyWithImpl<_$_PlaceDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PlaceDtoToJson(
      this,
    );
  }
}

abstract class _PlaceDto extends PlaceDto {
  const factory _PlaceDto(
      {required final String id, required final String name}) = _$_PlaceDto;
  const _PlaceDto._() : super._();

  factory _PlaceDto.fromJson(Map<String, dynamic> json) = _$_PlaceDto.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$_PlaceDtoCopyWith<_$_PlaceDto> get copyWith =>
      throw _privateConstructorUsedError;
}
