// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'selector_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SelectorDto _$SelectorDtoFromJson(Map<String, dynamic> json) {
  return _SelectorDto.fromJson(json);
}

/// @nodoc
mixin _$SelectorDto {
  @JsonKey(ignore: true)
  String? get id => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SelectorDtoCopyWith<SelectorDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SelectorDtoCopyWith<$Res> {
  factory $SelectorDtoCopyWith(
          SelectorDto value, $Res Function(SelectorDto) then) =
      _$SelectorDtoCopyWithImpl<$Res>;
  $Res call({@JsonKey(ignore: true) String? id, String email});
}

/// @nodoc
class _$SelectorDtoCopyWithImpl<$Res> implements $SelectorDtoCopyWith<$Res> {
  _$SelectorDtoCopyWithImpl(this._value, this._then);

  final SelectorDto _value;
  // ignore: unused_field
  final $Res Function(SelectorDto) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? email = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_SelectorDtoCopyWith<$Res>
    implements $SelectorDtoCopyWith<$Res> {
  factory _$$_SelectorDtoCopyWith(
          _$_SelectorDto value, $Res Function(_$_SelectorDto) then) =
      __$$_SelectorDtoCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(ignore: true) String? id, String email});
}

/// @nodoc
class __$$_SelectorDtoCopyWithImpl<$Res> extends _$SelectorDtoCopyWithImpl<$Res>
    implements _$$_SelectorDtoCopyWith<$Res> {
  __$$_SelectorDtoCopyWithImpl(
      _$_SelectorDto _value, $Res Function(_$_SelectorDto) _then)
      : super(_value, (v) => _then(v as _$_SelectorDto));

  @override
  _$_SelectorDto get _value => super._value as _$_SelectorDto;

  @override
  $Res call({
    Object? id = freezed,
    Object? email = freezed,
  }) {
    return _then(_$_SelectorDto(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable()
class _$_SelectorDto extends _SelectorDto {
  const _$_SelectorDto({@JsonKey(ignore: true) this.id, required this.email})
      : super._();

  factory _$_SelectorDto.fromJson(Map<String, dynamic> json) =>
      _$$_SelectorDtoFromJson(json);

  @override
  @JsonKey(ignore: true)
  final String? id;
  @override
  final String email;

  @override
  String toString() {
    return 'SelectorDto(id: $id, email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SelectorDto &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.email, email));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(email));

  @JsonKey(ignore: true)
  @override
  _$$_SelectorDtoCopyWith<_$_SelectorDto> get copyWith =>
      __$$_SelectorDtoCopyWithImpl<_$_SelectorDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SelectorDtoToJson(
      this,
    );
  }
}

abstract class _SelectorDto extends SelectorDto {
  const factory _SelectorDto(
      {@JsonKey(ignore: true) final String? id,
      required final String email}) = _$_SelectorDto;
  const _SelectorDto._() : super._();

  factory _SelectorDto.fromJson(Map<String, dynamic> json) =
      _$_SelectorDto.fromJson;

  @override
  @JsonKey(ignore: true)
  String? get id;
  @override
  String get email;
  @override
  @JsonKey(ignore: true)
  _$$_SelectorDtoCopyWith<_$_SelectorDto> get copyWith =>
      throw _privateConstructorUsedError;
}
