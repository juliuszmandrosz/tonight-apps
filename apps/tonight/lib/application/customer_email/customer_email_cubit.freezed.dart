// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'customer_email_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CustomerEmailState {
  Option<CustomerData> get customerData => throw _privateConstructorUsedError;
  EmailInput get email => throw _privateConstructorUsedError;
  FormzStatus get status => throw _privateConstructorUsedError;
  Option<String> get errorMessage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CustomerEmailStateCopyWith<CustomerEmailState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CustomerEmailStateCopyWith<$Res> {
  factory $CustomerEmailStateCopyWith(
          CustomerEmailState value, $Res Function(CustomerEmailState) then) =
      _$CustomerEmailStateCopyWithImpl<$Res, CustomerEmailState>;
  @useResult
  $Res call(
      {Option<CustomerData> customerData,
      EmailInput email,
      FormzStatus status,
      Option<String> errorMessage});
}

/// @nodoc
class _$CustomerEmailStateCopyWithImpl<$Res, $Val extends CustomerEmailState>
    implements $CustomerEmailStateCopyWith<$Res> {
  _$CustomerEmailStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? customerData = null,
    Object? email = null,
    Object? status = null,
    Object? errorMessage = null,
  }) {
    return _then(_value.copyWith(
      customerData: null == customerData
          ? _value.customerData
          : customerData // ignore: cast_nullable_to_non_nullable
              as Option<CustomerData>,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as EmailInput,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FormzStatus,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as Option<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CustomerEmailStateCopyWith<$Res>
    implements $CustomerEmailStateCopyWith<$Res> {
  factory _$$_CustomerEmailStateCopyWith(_$_CustomerEmailState value,
          $Res Function(_$_CustomerEmailState) then) =
      __$$_CustomerEmailStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Option<CustomerData> customerData,
      EmailInput email,
      FormzStatus status,
      Option<String> errorMessage});
}

/// @nodoc
class __$$_CustomerEmailStateCopyWithImpl<$Res>
    extends _$CustomerEmailStateCopyWithImpl<$Res, _$_CustomerEmailState>
    implements _$$_CustomerEmailStateCopyWith<$Res> {
  __$$_CustomerEmailStateCopyWithImpl(
      _$_CustomerEmailState _value, $Res Function(_$_CustomerEmailState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? customerData = null,
    Object? email = null,
    Object? status = null,
    Object? errorMessage = null,
  }) {
    return _then(_$_CustomerEmailState(
      customerData: null == customerData
          ? _value.customerData
          : customerData // ignore: cast_nullable_to_non_nullable
              as Option<CustomerData>,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as EmailInput,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FormzStatus,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as Option<String>,
    ));
  }
}

/// @nodoc

class _$_CustomerEmailState implements _CustomerEmailState {
  const _$_CustomerEmailState(
      {required this.customerData,
      required this.email,
      required this.status,
      required this.errorMessage});

  @override
  final Option<CustomerData> customerData;
  @override
  final EmailInput email;
  @override
  final FormzStatus status;
  @override
  final Option<String> errorMessage;

  @override
  String toString() {
    return 'CustomerEmailState(customerData: $customerData, email: $email, status: $status, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CustomerEmailState &&
            (identical(other.customerData, customerData) ||
                other.customerData == customerData) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, customerData, email, status, errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CustomerEmailStateCopyWith<_$_CustomerEmailState> get copyWith =>
      __$$_CustomerEmailStateCopyWithImpl<_$_CustomerEmailState>(
          this, _$identity);
}

abstract class _CustomerEmailState implements CustomerEmailState {
  const factory _CustomerEmailState(
      {required final Option<CustomerData> customerData,
      required final EmailInput email,
      required final FormzStatus status,
      required final Option<String> errorMessage}) = _$_CustomerEmailState;

  @override
  Option<CustomerData> get customerData;
  @override
  EmailInput get email;
  @override
  FormzStatus get status;
  @override
  Option<String> get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$_CustomerEmailStateCopyWith<_$_CustomerEmailState> get copyWith =>
      throw _privateConstructorUsedError;
}
