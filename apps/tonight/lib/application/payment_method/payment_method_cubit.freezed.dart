// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'payment_method_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PaymentMethodState {
  Option<CustomerData> get updatedCustomerData =>
      throw _privateConstructorUsedError;
  TonightPaymentMethod get selectedPaymentMethod =>
      throw _privateConstructorUsedError;
  CubitStatus get cubitStatus => throw _privateConstructorUsedError;
  Option<String> get errorMessage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PaymentMethodStateCopyWith<PaymentMethodState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentMethodStateCopyWith<$Res> {
  factory $PaymentMethodStateCopyWith(
          PaymentMethodState value, $Res Function(PaymentMethodState) then) =
      _$PaymentMethodStateCopyWithImpl<$Res, PaymentMethodState>;
  @useResult
  $Res call(
      {Option<CustomerData> updatedCustomerData,
      TonightPaymentMethod selectedPaymentMethod,
      CubitStatus cubitStatus,
      Option<String> errorMessage});
}

/// @nodoc
class _$PaymentMethodStateCopyWithImpl<$Res, $Val extends PaymentMethodState>
    implements $PaymentMethodStateCopyWith<$Res> {
  _$PaymentMethodStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? updatedCustomerData = null,
    Object? selectedPaymentMethod = null,
    Object? cubitStatus = null,
    Object? errorMessage = null,
  }) {
    return _then(_value.copyWith(
      updatedCustomerData: null == updatedCustomerData
          ? _value.updatedCustomerData
          : updatedCustomerData // ignore: cast_nullable_to_non_nullable
              as Option<CustomerData>,
      selectedPaymentMethod: null == selectedPaymentMethod
          ? _value.selectedPaymentMethod
          : selectedPaymentMethod // ignore: cast_nullable_to_non_nullable
              as TonightPaymentMethod,
      cubitStatus: null == cubitStatus
          ? _value.cubitStatus
          : cubitStatus // ignore: cast_nullable_to_non_nullable
              as CubitStatus,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as Option<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PaymentMethodStateCopyWith<$Res>
    implements $PaymentMethodStateCopyWith<$Res> {
  factory _$$_PaymentMethodStateCopyWith(_$_PaymentMethodState value,
          $Res Function(_$_PaymentMethodState) then) =
      __$$_PaymentMethodStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Option<CustomerData> updatedCustomerData,
      TonightPaymentMethod selectedPaymentMethod,
      CubitStatus cubitStatus,
      Option<String> errorMessage});
}

/// @nodoc
class __$$_PaymentMethodStateCopyWithImpl<$Res>
    extends _$PaymentMethodStateCopyWithImpl<$Res, _$_PaymentMethodState>
    implements _$$_PaymentMethodStateCopyWith<$Res> {
  __$$_PaymentMethodStateCopyWithImpl(
      _$_PaymentMethodState _value, $Res Function(_$_PaymentMethodState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? updatedCustomerData = null,
    Object? selectedPaymentMethod = null,
    Object? cubitStatus = null,
    Object? errorMessage = null,
  }) {
    return _then(_$_PaymentMethodState(
      updatedCustomerData: null == updatedCustomerData
          ? _value.updatedCustomerData
          : updatedCustomerData // ignore: cast_nullable_to_non_nullable
              as Option<CustomerData>,
      selectedPaymentMethod: null == selectedPaymentMethod
          ? _value.selectedPaymentMethod
          : selectedPaymentMethod // ignore: cast_nullable_to_non_nullable
              as TonightPaymentMethod,
      cubitStatus: null == cubitStatus
          ? _value.cubitStatus
          : cubitStatus // ignore: cast_nullable_to_non_nullable
              as CubitStatus,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as Option<String>,
    ));
  }
}

/// @nodoc

class _$_PaymentMethodState extends _PaymentMethodState {
  _$_PaymentMethodState(
      {required this.updatedCustomerData,
      required this.selectedPaymentMethod,
      required this.cubitStatus,
      required this.errorMessage})
      : super._();

  @override
  final Option<CustomerData> updatedCustomerData;
  @override
  final TonightPaymentMethod selectedPaymentMethod;
  @override
  final CubitStatus cubitStatus;
  @override
  final Option<String> errorMessage;

  @override
  String toString() {
    return 'PaymentMethodState(updatedCustomerData: $updatedCustomerData, selectedPaymentMethod: $selectedPaymentMethod, cubitStatus: $cubitStatus, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PaymentMethodState &&
            (identical(other.updatedCustomerData, updatedCustomerData) ||
                other.updatedCustomerData == updatedCustomerData) &&
            (identical(other.selectedPaymentMethod, selectedPaymentMethod) ||
                other.selectedPaymentMethod == selectedPaymentMethod) &&
            (identical(other.cubitStatus, cubitStatus) ||
                other.cubitStatus == cubitStatus) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, updatedCustomerData,
      selectedPaymentMethod, cubitStatus, errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PaymentMethodStateCopyWith<_$_PaymentMethodState> get copyWith =>
      __$$_PaymentMethodStateCopyWithImpl<_$_PaymentMethodState>(
          this, _$identity);
}

abstract class _PaymentMethodState extends PaymentMethodState {
  factory _PaymentMethodState(
      {required final Option<CustomerData> updatedCustomerData,
      required final TonightPaymentMethod selectedPaymentMethod,
      required final CubitStatus cubitStatus,
      required final Option<String> errorMessage}) = _$_PaymentMethodState;
  _PaymentMethodState._() : super._();

  @override
  Option<CustomerData> get updatedCustomerData;
  @override
  TonightPaymentMethod get selectedPaymentMethod;
  @override
  CubitStatus get cubitStatus;
  @override
  Option<String> get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$_PaymentMethodStateCopyWith<_$_PaymentMethodState> get copyWith =>
      throw _privateConstructorUsedError;
}
