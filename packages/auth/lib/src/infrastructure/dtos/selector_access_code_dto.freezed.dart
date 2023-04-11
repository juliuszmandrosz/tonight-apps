// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'selector_access_code_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SelectorAccessCodeDto _$SelectorAccessCodeDtoFromJson(
    Map<String, dynamic> json) {
  return _SelectorAccessCodeDto.fromJson(json);
}

/// @nodoc
mixin _$SelectorAccessCodeDto {
  @JsonKey(ignore: true)
  String? get code => throw _privateConstructorUsedError;
  String get partnerId => throw _privateConstructorUsedError;
  @TimestampJsonConverter()
  DateTime get expirationDateTime => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SelectorAccessCodeDtoCopyWith<SelectorAccessCodeDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SelectorAccessCodeDtoCopyWith<$Res> {
  factory $SelectorAccessCodeDtoCopyWith(SelectorAccessCodeDto value,
          $Res Function(SelectorAccessCodeDto) then) =
      _$SelectorAccessCodeDtoCopyWithImpl<$Res, SelectorAccessCodeDto>;
  @useResult
  $Res call(
      {@JsonKey(ignore: true) String? code,
      String partnerId,
      @TimestampJsonConverter() DateTime expirationDateTime});
}

/// @nodoc
class _$SelectorAccessCodeDtoCopyWithImpl<$Res,
        $Val extends SelectorAccessCodeDto>
    implements $SelectorAccessCodeDtoCopyWith<$Res> {
  _$SelectorAccessCodeDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? partnerId = null,
    Object? expirationDateTime = null,
  }) {
    return _then(_value.copyWith(
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      partnerId: null == partnerId
          ? _value.partnerId
          : partnerId // ignore: cast_nullable_to_non_nullable
              as String,
      expirationDateTime: null == expirationDateTime
          ? _value.expirationDateTime
          : expirationDateTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SelectorAccessCodeDtoCopyWith<$Res>
    implements $SelectorAccessCodeDtoCopyWith<$Res> {
  factory _$$_SelectorAccessCodeDtoCopyWith(_$_SelectorAccessCodeDto value,
          $Res Function(_$_SelectorAccessCodeDto) then) =
      __$$_SelectorAccessCodeDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(ignore: true) String? code,
      String partnerId,
      @TimestampJsonConverter() DateTime expirationDateTime});
}

/// @nodoc
class __$$_SelectorAccessCodeDtoCopyWithImpl<$Res>
    extends _$SelectorAccessCodeDtoCopyWithImpl<$Res, _$_SelectorAccessCodeDto>
    implements _$$_SelectorAccessCodeDtoCopyWith<$Res> {
  __$$_SelectorAccessCodeDtoCopyWithImpl(_$_SelectorAccessCodeDto _value,
      $Res Function(_$_SelectorAccessCodeDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? partnerId = null,
    Object? expirationDateTime = null,
  }) {
    return _then(_$_SelectorAccessCodeDto(
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      partnerId: null == partnerId
          ? _value.partnerId
          : partnerId // ignore: cast_nullable_to_non_nullable
              as String,
      expirationDateTime: null == expirationDateTime
          ? _value.expirationDateTime
          : expirationDateTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

@JsonSerializable()
class _$_SelectorAccessCodeDto extends _SelectorAccessCodeDto {
  const _$_SelectorAccessCodeDto(
      {@JsonKey(ignore: true) this.code,
      required this.partnerId,
      @TimestampJsonConverter() required this.expirationDateTime})
      : super._();

  factory _$_SelectorAccessCodeDto.fromJson(Map<String, dynamic> json) =>
      _$$_SelectorAccessCodeDtoFromJson(json);

  @override
  @JsonKey(ignore: true)
  final String? code;
  @override
  final String partnerId;
  @override
  @TimestampJsonConverter()
  final DateTime expirationDateTime;

  @override
  String toString() {
    return 'SelectorAccessCodeDto(code: $code, partnerId: $partnerId, expirationDateTime: $expirationDateTime)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SelectorAccessCodeDto &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.partnerId, partnerId) ||
                other.partnerId == partnerId) &&
            (identical(other.expirationDateTime, expirationDateTime) ||
                other.expirationDateTime == expirationDateTime));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, code, partnerId, expirationDateTime);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SelectorAccessCodeDtoCopyWith<_$_SelectorAccessCodeDto> get copyWith =>
      __$$_SelectorAccessCodeDtoCopyWithImpl<_$_SelectorAccessCodeDto>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SelectorAccessCodeDtoToJson(
      this,
    );
  }
}

abstract class _SelectorAccessCodeDto extends SelectorAccessCodeDto {
  const factory _SelectorAccessCodeDto(
          {@JsonKey(ignore: true)
              final String? code,
          required final String partnerId,
          @TimestampJsonConverter()
              required final DateTime expirationDateTime}) =
      _$_SelectorAccessCodeDto;
  const _SelectorAccessCodeDto._() : super._();

  factory _SelectorAccessCodeDto.fromJson(Map<String, dynamic> json) =
      _$_SelectorAccessCodeDto.fromJson;

  @override
  @JsonKey(ignore: true)
  String? get code;
  @override
  String get partnerId;
  @override
  @TimestampJsonConverter()
  DateTime get expirationDateTime;
  @override
  @JsonKey(ignore: true)
  _$$_SelectorAccessCodeDtoCopyWith<_$_SelectorAccessCodeDto> get copyWith =>
      throw _privateConstructorUsedError;
}
