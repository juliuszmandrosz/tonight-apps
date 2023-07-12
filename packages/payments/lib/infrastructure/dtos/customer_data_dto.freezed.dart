// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'customer_data_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CustomerDataDto _$CustomerDataDtoFromJson(Map<String, dynamic> json) {
  return _CustomerDataDto.fromJson(json);
}

/// @nodoc
mixin _$CustomerDataDto {
  String? get paymentMethod => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get vatNumber => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CustomerDataDtoCopyWith<CustomerDataDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CustomerDataDtoCopyWith<$Res> {
  factory $CustomerDataDtoCopyWith(
          CustomerDataDto value, $Res Function(CustomerDataDto) then) =
      _$CustomerDataDtoCopyWithImpl<$Res, CustomerDataDto>;
  @useResult
  $Res call(
      {String? paymentMethod, String? name, String? vatNumber, String? email});
}

/// @nodoc
class _$CustomerDataDtoCopyWithImpl<$Res, $Val extends CustomerDataDto>
    implements $CustomerDataDtoCopyWith<$Res> {
  _$CustomerDataDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? paymentMethod = freezed,
    Object? name = freezed,
    Object? vatNumber = freezed,
    Object? email = freezed,
  }) {
    return _then(_value.copyWith(
      paymentMethod: freezed == paymentMethod
          ? _value.paymentMethod
          : paymentMethod // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      vatNumber: freezed == vatNumber
          ? _value.vatNumber
          : vatNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CustomerDataDtoCopyWith<$Res>
    implements $CustomerDataDtoCopyWith<$Res> {
  factory _$$_CustomerDataDtoCopyWith(
          _$_CustomerDataDto value, $Res Function(_$_CustomerDataDto) then) =
      __$$_CustomerDataDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? paymentMethod, String? name, String? vatNumber, String? email});
}

/// @nodoc
class __$$_CustomerDataDtoCopyWithImpl<$Res>
    extends _$CustomerDataDtoCopyWithImpl<$Res, _$_CustomerDataDto>
    implements _$$_CustomerDataDtoCopyWith<$Res> {
  __$$_CustomerDataDtoCopyWithImpl(
      _$_CustomerDataDto _value, $Res Function(_$_CustomerDataDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? paymentMethod = freezed,
    Object? name = freezed,
    Object? vatNumber = freezed,
    Object? email = freezed,
  }) {
    return _then(_$_CustomerDataDto(
      paymentMethod: freezed == paymentMethod
          ? _value.paymentMethod
          : paymentMethod // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      vatNumber: freezed == vatNumber
          ? _value.vatNumber
          : vatNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable()
class _$_CustomerDataDto extends _CustomerDataDto {
  const _$_CustomerDataDto(
      {required this.paymentMethod,
      required this.name,
      required this.vatNumber,
      required this.email})
      : super._();

  factory _$_CustomerDataDto.fromJson(Map<String, dynamic> json) =>
      _$$_CustomerDataDtoFromJson(json);

  @override
  final String? paymentMethod;
  @override
  final String? name;
  @override
  final String? vatNumber;
  @override
  final String? email;

  @override
  String toString() {
    return 'CustomerDataDto(paymentMethod: $paymentMethod, name: $name, vatNumber: $vatNumber, email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CustomerDataDto &&
            (identical(other.paymentMethod, paymentMethod) ||
                other.paymentMethod == paymentMethod) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.vatNumber, vatNumber) ||
                other.vatNumber == vatNumber) &&
            (identical(other.email, email) || other.email == email));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, paymentMethod, name, vatNumber, email);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CustomerDataDtoCopyWith<_$_CustomerDataDto> get copyWith =>
      __$$_CustomerDataDtoCopyWithImpl<_$_CustomerDataDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CustomerDataDtoToJson(
      this,
    );
  }
}

abstract class _CustomerDataDto extends CustomerDataDto {
  const factory _CustomerDataDto(
      {required final String? paymentMethod,
      required final String? name,
      required final String? vatNumber,
      required final String? email}) = _$_CustomerDataDto;
  const _CustomerDataDto._() : super._();

  factory _CustomerDataDto.fromJson(Map<String, dynamic> json) =
      _$_CustomerDataDto.fromJson;

  @override
  String? get paymentMethod;
  @override
  String? get name;
  @override
  String? get vatNumber;
  @override
  String? get email;
  @override
  @JsonKey(ignore: true)
  _$$_CustomerDataDtoCopyWith<_$_CustomerDataDto> get copyWith =>
      throw _privateConstructorUsedError;
}
