// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'invoice_data_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

InvoiceDataDto _$InvoiceDataDtoFromJson(Map<String, dynamic> json) {
  return _InvoiceDataDto.fromJson(json);
}

/// @nodoc
mixin _$InvoiceDataDto {
  String? get name => throw _privateConstructorUsedError;
  String? get vatNumber => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InvoiceDataDtoCopyWith<InvoiceDataDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InvoiceDataDtoCopyWith<$Res> {
  factory $InvoiceDataDtoCopyWith(
          InvoiceDataDto value, $Res Function(InvoiceDataDto) then) =
      _$InvoiceDataDtoCopyWithImpl<$Res>;
  $Res call({String? name, String? vatNumber});
}

/// @nodoc
class _$InvoiceDataDtoCopyWithImpl<$Res>
    implements $InvoiceDataDtoCopyWith<$Res> {
  _$InvoiceDataDtoCopyWithImpl(this._value, this._then);

  final InvoiceDataDto _value;
  // ignore: unused_field
  final $Res Function(InvoiceDataDto) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? vatNumber = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      vatNumber: vatNumber == freezed
          ? _value.vatNumber
          : vatNumber // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_InvoiceDataDtoCopyWith<$Res>
    implements $InvoiceDataDtoCopyWith<$Res> {
  factory _$$_InvoiceDataDtoCopyWith(
          _$_InvoiceDataDto value, $Res Function(_$_InvoiceDataDto) then) =
      __$$_InvoiceDataDtoCopyWithImpl<$Res>;
  @override
  $Res call({String? name, String? vatNumber});
}

/// @nodoc
class __$$_InvoiceDataDtoCopyWithImpl<$Res>
    extends _$InvoiceDataDtoCopyWithImpl<$Res>
    implements _$$_InvoiceDataDtoCopyWith<$Res> {
  __$$_InvoiceDataDtoCopyWithImpl(
      _$_InvoiceDataDto _value, $Res Function(_$_InvoiceDataDto) _then)
      : super(_value, (v) => _then(v as _$_InvoiceDataDto));

  @override
  _$_InvoiceDataDto get _value => super._value as _$_InvoiceDataDto;

  @override
  $Res call({
    Object? name = freezed,
    Object? vatNumber = freezed,
  }) {
    return _then(_$_InvoiceDataDto(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      vatNumber: vatNumber == freezed
          ? _value.vatNumber
          : vatNumber // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable()
class _$_InvoiceDataDto extends _InvoiceDataDto {
  const _$_InvoiceDataDto({required this.name, required this.vatNumber})
      : super._();

  factory _$_InvoiceDataDto.fromJson(Map<String, dynamic> json) =>
      _$$_InvoiceDataDtoFromJson(json);

  @override
  final String? name;
  @override
  final String? vatNumber;

  @override
  String toString() {
    return 'InvoiceDataDto(name: $name, vatNumber: $vatNumber)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_InvoiceDataDto &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.vatNumber, vatNumber));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(vatNumber));

  @JsonKey(ignore: true)
  @override
  _$$_InvoiceDataDtoCopyWith<_$_InvoiceDataDto> get copyWith =>
      __$$_InvoiceDataDtoCopyWithImpl<_$_InvoiceDataDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_InvoiceDataDtoToJson(
      this,
    );
  }
}

abstract class _InvoiceDataDto extends InvoiceDataDto {
  const factory _InvoiceDataDto(
      {required final String? name,
      required final String? vatNumber}) = _$_InvoiceDataDto;
  const _InvoiceDataDto._() : super._();

  factory _InvoiceDataDto.fromJson(Map<String, dynamic> json) =
      _$_InvoiceDataDto.fromJson;

  @override
  String? get name;
  @override
  String? get vatNumber;
  @override
  @JsonKey(ignore: true)
  _$$_InvoiceDataDtoCopyWith<_$_InvoiceDataDto> get copyWith =>
      throw _privateConstructorUsedError;
}
