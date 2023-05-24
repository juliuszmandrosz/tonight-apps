// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'partner_discount_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PartnerDiscountDto _$PartnerDiscountDtoFromJson(Map<String, dynamic> json) {
  return _PartnerDiscountDto.fromJson(json);
}

/// @nodoc
mixin _$PartnerDiscountDto {
  @JsonKey(ignore: true)
  String? get id => throw _privateConstructorUsedError;
  int get requiredExclusiveEventsSales => throw _privateConstructorUsedError;
  int get percentageOff => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PartnerDiscountDtoCopyWith<PartnerDiscountDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PartnerDiscountDtoCopyWith<$Res> {
  factory $PartnerDiscountDtoCopyWith(
          PartnerDiscountDto value, $Res Function(PartnerDiscountDto) then) =
      _$PartnerDiscountDtoCopyWithImpl<$Res, PartnerDiscountDto>;
  @useResult
  $Res call(
      {@JsonKey(ignore: true) String? id,
      int requiredExclusiveEventsSales,
      int percentageOff});
}

/// @nodoc
class _$PartnerDiscountDtoCopyWithImpl<$Res, $Val extends PartnerDiscountDto>
    implements $PartnerDiscountDtoCopyWith<$Res> {
  _$PartnerDiscountDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? requiredExclusiveEventsSales = null,
    Object? percentageOff = null,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      requiredExclusiveEventsSales: null == requiredExclusiveEventsSales
          ? _value.requiredExclusiveEventsSales
          : requiredExclusiveEventsSales // ignore: cast_nullable_to_non_nullable
              as int,
      percentageOff: null == percentageOff
          ? _value.percentageOff
          : percentageOff // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PartnerDiscountDtoCopyWith<$Res>
    implements $PartnerDiscountDtoCopyWith<$Res> {
  factory _$$_PartnerDiscountDtoCopyWith(_$_PartnerDiscountDto value,
          $Res Function(_$_PartnerDiscountDto) then) =
      __$$_PartnerDiscountDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(ignore: true) String? id,
      int requiredExclusiveEventsSales,
      int percentageOff});
}

/// @nodoc
class __$$_PartnerDiscountDtoCopyWithImpl<$Res>
    extends _$PartnerDiscountDtoCopyWithImpl<$Res, _$_PartnerDiscountDto>
    implements _$$_PartnerDiscountDtoCopyWith<$Res> {
  __$$_PartnerDiscountDtoCopyWithImpl(
      _$_PartnerDiscountDto _value, $Res Function(_$_PartnerDiscountDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? requiredExclusiveEventsSales = null,
    Object? percentageOff = null,
  }) {
    return _then(_$_PartnerDiscountDto(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      requiredExclusiveEventsSales: null == requiredExclusiveEventsSales
          ? _value.requiredExclusiveEventsSales
          : requiredExclusiveEventsSales // ignore: cast_nullable_to_non_nullable
              as int,
      percentageOff: null == percentageOff
          ? _value.percentageOff
          : percentageOff // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

@JsonSerializable()
class _$_PartnerDiscountDto extends _PartnerDiscountDto {
  const _$_PartnerDiscountDto(
      {@JsonKey(ignore: true) this.id,
      required this.requiredExclusiveEventsSales,
      required this.percentageOff})
      : super._();

  factory _$_PartnerDiscountDto.fromJson(Map<String, dynamic> json) =>
      _$$_PartnerDiscountDtoFromJson(json);

  @override
  @JsonKey(ignore: true)
  final String? id;
  @override
  final int requiredExclusiveEventsSales;
  @override
  final int percentageOff;

  @override
  String toString() {
    return 'PartnerDiscountDto(id: $id, requiredExclusiveEventsSales: $requiredExclusiveEventsSales, percentageOff: $percentageOff)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PartnerDiscountDto &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.requiredExclusiveEventsSales,
                    requiredExclusiveEventsSales) ||
                other.requiredExclusiveEventsSales ==
                    requiredExclusiveEventsSales) &&
            (identical(other.percentageOff, percentageOff) ||
                other.percentageOff == percentageOff));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, requiredExclusiveEventsSales, percentageOff);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PartnerDiscountDtoCopyWith<_$_PartnerDiscountDto> get copyWith =>
      __$$_PartnerDiscountDtoCopyWithImpl<_$_PartnerDiscountDto>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PartnerDiscountDtoToJson(
      this,
    );
  }
}

abstract class _PartnerDiscountDto extends PartnerDiscountDto {
  const factory _PartnerDiscountDto(
      {@JsonKey(ignore: true) final String? id,
      required final int requiredExclusiveEventsSales,
      required final int percentageOff}) = _$_PartnerDiscountDto;
  const _PartnerDiscountDto._() : super._();

  factory _PartnerDiscountDto.fromJson(Map<String, dynamic> json) =
      _$_PartnerDiscountDto.fromJson;

  @override
  @JsonKey(ignore: true)
  String? get id;
  @override
  int get requiredExclusiveEventsSales;
  @override
  int get percentageOff;
  @override
  @JsonKey(ignore: true)
  _$$_PartnerDiscountDtoCopyWith<_$_PartnerDiscountDto> get copyWith =>
      throw _privateConstructorUsedError;
}
