// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'event_fees_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

EventFeesDto _$EventFeesDtoFromJson(Map<String, dynamic> json) {
  return _EventFeesDto.fromJson(json);
}

/// @nodoc
mixin _$EventFeesDto {
  double get normal => throw _privateConstructorUsedError;
  double get exclusive => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EventFeesDtoCopyWith<EventFeesDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EventFeesDtoCopyWith<$Res> {
  factory $EventFeesDtoCopyWith(
          EventFeesDto value, $Res Function(EventFeesDto) then) =
      _$EventFeesDtoCopyWithImpl<$Res>;
  $Res call({double normal, double exclusive});
}

/// @nodoc
class _$EventFeesDtoCopyWithImpl<$Res> implements $EventFeesDtoCopyWith<$Res> {
  _$EventFeesDtoCopyWithImpl(this._value, this._then);

  final EventFeesDto _value;
  // ignore: unused_field
  final $Res Function(EventFeesDto) _then;

  @override
  $Res call({
    Object? normal = freezed,
    Object? exclusive = freezed,
  }) {
    return _then(_value.copyWith(
      normal: normal == freezed
          ? _value.normal
          : normal // ignore: cast_nullable_to_non_nullable
              as double,
      exclusive: exclusive == freezed
          ? _value.exclusive
          : exclusive // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
abstract class _$$_EventFeesDtoCopyWith<$Res>
    implements $EventFeesDtoCopyWith<$Res> {
  factory _$$_EventFeesDtoCopyWith(
          _$_EventFeesDto value, $Res Function(_$_EventFeesDto) then) =
      __$$_EventFeesDtoCopyWithImpl<$Res>;
  @override
  $Res call({double normal, double exclusive});
}

/// @nodoc
class __$$_EventFeesDtoCopyWithImpl<$Res>
    extends _$EventFeesDtoCopyWithImpl<$Res>
    implements _$$_EventFeesDtoCopyWith<$Res> {
  __$$_EventFeesDtoCopyWithImpl(
      _$_EventFeesDto _value, $Res Function(_$_EventFeesDto) _then)
      : super(_value, (v) => _then(v as _$_EventFeesDto));

  @override
  _$_EventFeesDto get _value => super._value as _$_EventFeesDto;

  @override
  $Res call({
    Object? normal = freezed,
    Object? exclusive = freezed,
  }) {
    return _then(_$_EventFeesDto(
      normal: normal == freezed
          ? _value.normal
          : normal // ignore: cast_nullable_to_non_nullable
              as double,
      exclusive: exclusive == freezed
          ? _value.exclusive
          : exclusive // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

@JsonSerializable()
class _$_EventFeesDto extends _EventFeesDto {
  const _$_EventFeesDto({required this.normal, required this.exclusive})
      : super._();

  factory _$_EventFeesDto.fromJson(Map<String, dynamic> json) =>
      _$$_EventFeesDtoFromJson(json);

  @override
  final double normal;
  @override
  final double exclusive;

  @override
  String toString() {
    return 'EventFeesDto(normal: $normal, exclusive: $exclusive)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EventFeesDto &&
            const DeepCollectionEquality().equals(other.normal, normal) &&
            const DeepCollectionEquality().equals(other.exclusive, exclusive));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(normal),
      const DeepCollectionEquality().hash(exclusive));

  @JsonKey(ignore: true)
  @override
  _$$_EventFeesDtoCopyWith<_$_EventFeesDto> get copyWith =>
      __$$_EventFeesDtoCopyWithImpl<_$_EventFeesDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_EventFeesDtoToJson(
      this,
    );
  }
}

abstract class _EventFeesDto extends EventFeesDto {
  const factory _EventFeesDto(
      {required final double normal,
      required final double exclusive}) = _$_EventFeesDto;
  const _EventFeesDto._() : super._();

  factory _EventFeesDto.fromJson(Map<String, dynamic> json) =
      _$_EventFeesDto.fromJson;

  @override
  double get normal;
  @override
  double get exclusive;
  @override
  @JsonKey(ignore: true)
  _$$_EventFeesDtoCopyWith<_$_EventFeesDto> get copyWith =>
      throw _privateConstructorUsedError;
}
