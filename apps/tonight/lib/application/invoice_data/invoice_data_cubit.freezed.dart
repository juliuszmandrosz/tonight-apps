// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'invoice_data_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$InvoiceDataState {
  FormzStatus get status => throw _privateConstructorUsedError;
  Name get name => throw _privateConstructorUsedError;
  VatNumber get vatNumber => throw _privateConstructorUsedError;
  CountryCode get countryCode => throw _privateConstructorUsedError;
  InvoiceDataType get invoiceDataType => throw _privateConstructorUsedError;
  Option<CustomerData> get updatedCustomerData =>
      throw _privateConstructorUsedError;
  Option<String> get errorMessage => throw _privateConstructorUsedError;
  Option<CustomerData> get initialCustomerData =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $InvoiceDataStateCopyWith<InvoiceDataState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InvoiceDataStateCopyWith<$Res> {
  factory $InvoiceDataStateCopyWith(
          InvoiceDataState value, $Res Function(InvoiceDataState) then) =
      _$InvoiceDataStateCopyWithImpl<$Res, InvoiceDataState>;
  @useResult
  $Res call(
      {FormzStatus status,
      Name name,
      VatNumber vatNumber,
      CountryCode countryCode,
      InvoiceDataType invoiceDataType,
      Option<CustomerData> updatedCustomerData,
      Option<String> errorMessage,
      Option<CustomerData> initialCustomerData});
}

/// @nodoc
class _$InvoiceDataStateCopyWithImpl<$Res, $Val extends InvoiceDataState>
    implements $InvoiceDataStateCopyWith<$Res> {
  _$InvoiceDataStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? name = null,
    Object? vatNumber = null,
    Object? countryCode = null,
    Object? invoiceDataType = null,
    Object? updatedCustomerData = null,
    Object? errorMessage = null,
    Object? initialCustomerData = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FormzStatus,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as Name,
      vatNumber: null == vatNumber
          ? _value.vatNumber
          : vatNumber // ignore: cast_nullable_to_non_nullable
              as VatNumber,
      countryCode: null == countryCode
          ? _value.countryCode
          : countryCode // ignore: cast_nullable_to_non_nullable
              as CountryCode,
      invoiceDataType: null == invoiceDataType
          ? _value.invoiceDataType
          : invoiceDataType // ignore: cast_nullable_to_non_nullable
              as InvoiceDataType,
      updatedCustomerData: null == updatedCustomerData
          ? _value.updatedCustomerData
          : updatedCustomerData // ignore: cast_nullable_to_non_nullable
              as Option<CustomerData>,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as Option<String>,
      initialCustomerData: null == initialCustomerData
          ? _value.initialCustomerData
          : initialCustomerData // ignore: cast_nullable_to_non_nullable
              as Option<CustomerData>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InvoiceDataStateImplCopyWith<$Res>
    implements $InvoiceDataStateCopyWith<$Res> {
  factory _$$InvoiceDataStateImplCopyWith(_$InvoiceDataStateImpl value,
          $Res Function(_$InvoiceDataStateImpl) then) =
      __$$InvoiceDataStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {FormzStatus status,
      Name name,
      VatNumber vatNumber,
      CountryCode countryCode,
      InvoiceDataType invoiceDataType,
      Option<CustomerData> updatedCustomerData,
      Option<String> errorMessage,
      Option<CustomerData> initialCustomerData});
}

/// @nodoc
class __$$InvoiceDataStateImplCopyWithImpl<$Res>
    extends _$InvoiceDataStateCopyWithImpl<$Res, _$InvoiceDataStateImpl>
    implements _$$InvoiceDataStateImplCopyWith<$Res> {
  __$$InvoiceDataStateImplCopyWithImpl(_$InvoiceDataStateImpl _value,
      $Res Function(_$InvoiceDataStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? name = null,
    Object? vatNumber = null,
    Object? countryCode = null,
    Object? invoiceDataType = null,
    Object? updatedCustomerData = null,
    Object? errorMessage = null,
    Object? initialCustomerData = null,
  }) {
    return _then(_$InvoiceDataStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FormzStatus,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as Name,
      vatNumber: null == vatNumber
          ? _value.vatNumber
          : vatNumber // ignore: cast_nullable_to_non_nullable
              as VatNumber,
      countryCode: null == countryCode
          ? _value.countryCode
          : countryCode // ignore: cast_nullable_to_non_nullable
              as CountryCode,
      invoiceDataType: null == invoiceDataType
          ? _value.invoiceDataType
          : invoiceDataType // ignore: cast_nullable_to_non_nullable
              as InvoiceDataType,
      updatedCustomerData: null == updatedCustomerData
          ? _value.updatedCustomerData
          : updatedCustomerData // ignore: cast_nullable_to_non_nullable
              as Option<CustomerData>,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as Option<String>,
      initialCustomerData: null == initialCustomerData
          ? _value.initialCustomerData
          : initialCustomerData // ignore: cast_nullable_to_non_nullable
              as Option<CustomerData>,
    ));
  }
}

/// @nodoc

class _$InvoiceDataStateImpl extends _InvoiceDataState {
  _$InvoiceDataStateImpl(
      {required this.status,
      required this.name,
      required this.vatNumber,
      required this.countryCode,
      required this.invoiceDataType,
      required this.updatedCustomerData,
      required this.errorMessage,
      required this.initialCustomerData})
      : super._();

  @override
  final FormzStatus status;
  @override
  final Name name;
  @override
  final VatNumber vatNumber;
  @override
  final CountryCode countryCode;
  @override
  final InvoiceDataType invoiceDataType;
  @override
  final Option<CustomerData> updatedCustomerData;
  @override
  final Option<String> errorMessage;
  @override
  final Option<CustomerData> initialCustomerData;

  @override
  String toString() {
    return 'InvoiceDataState(status: $status, name: $name, vatNumber: $vatNumber, countryCode: $countryCode, invoiceDataType: $invoiceDataType, updatedCustomerData: $updatedCustomerData, errorMessage: $errorMessage, initialCustomerData: $initialCustomerData)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InvoiceDataStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.vatNumber, vatNumber) ||
                other.vatNumber == vatNumber) &&
            (identical(other.countryCode, countryCode) ||
                other.countryCode == countryCode) &&
            (identical(other.invoiceDataType, invoiceDataType) ||
                other.invoiceDataType == invoiceDataType) &&
            (identical(other.updatedCustomerData, updatedCustomerData) ||
                other.updatedCustomerData == updatedCustomerData) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.initialCustomerData, initialCustomerData) ||
                other.initialCustomerData == initialCustomerData));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      status,
      name,
      vatNumber,
      countryCode,
      invoiceDataType,
      updatedCustomerData,
      errorMessage,
      initialCustomerData);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InvoiceDataStateImplCopyWith<_$InvoiceDataStateImpl> get copyWith =>
      __$$InvoiceDataStateImplCopyWithImpl<_$InvoiceDataStateImpl>(
          this, _$identity);
}

abstract class _InvoiceDataState extends InvoiceDataState {
  factory _InvoiceDataState(
          {required final FormzStatus status,
          required final Name name,
          required final VatNumber vatNumber,
          required final CountryCode countryCode,
          required final InvoiceDataType invoiceDataType,
          required final Option<CustomerData> updatedCustomerData,
          required final Option<String> errorMessage,
          required final Option<CustomerData> initialCustomerData}) =
      _$InvoiceDataStateImpl;
  _InvoiceDataState._() : super._();

  @override
  FormzStatus get status;
  @override
  Name get name;
  @override
  VatNumber get vatNumber;
  @override
  CountryCode get countryCode;
  @override
  InvoiceDataType get invoiceDataType;
  @override
  Option<CustomerData> get updatedCustomerData;
  @override
  Option<String> get errorMessage;
  @override
  Option<CustomerData> get initialCustomerData;
  @override
  @JsonKey(ignore: true)
  _$$InvoiceDataStateImplCopyWith<_$InvoiceDataStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
