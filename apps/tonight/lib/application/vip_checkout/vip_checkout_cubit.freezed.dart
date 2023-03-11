// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'vip_checkout_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$VipCheckoutState {
  PromotionCode get promotionCode => throw _privateConstructorUsedError;
  Option<Ticket> get ticket => throw _privateConstructorUsedError;
  Option<String> get invalidPromotionCodeMessage =>
      throw _privateConstructorUsedError;
  Option<int> get vipPrice => throw _privateConstructorUsedError;
  Option<Ticket> get upgradedTicket => throw _privateConstructorUsedError;
  Option<EventTickets> get eventTickets => throw _privateConstructorUsedError;
  CubitStatus get initialStatus => throw _privateConstructorUsedError;
  CubitStatus get promotionCodeStatus => throw _privateConstructorUsedError;
  CubitStatus get proceedingToPaymentStatus =>
      throw _privateConstructorUsedError;
  Option<String> get snackbarMessage => throw _privateConstructorUsedError;
  bool get isVipNoLongerAvailable => throw _privateConstructorUsedError;
  bool get sendInvoice => throw _privateConstructorUsedError;
  Option<CustomerData> get customerData => throw _privateConstructorUsedError;
  Option<double> get serviceFee => throw _privateConstructorUsedError;
  Option<double> get serviceFeeAmount => throw _privateConstructorUsedError;
  Option<double> get totalAmount => throw _privateConstructorUsedError;
  Option<CurrencyParams> get currencyParams =>
      throw _privateConstructorUsedError;
  Option<UserPaymentFailure> get paymentFailure =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $VipCheckoutStateCopyWith<VipCheckoutState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VipCheckoutStateCopyWith<$Res> {
  factory $VipCheckoutStateCopyWith(
          VipCheckoutState value, $Res Function(VipCheckoutState) then) =
      _$VipCheckoutStateCopyWithImpl<$Res, VipCheckoutState>;
  @useResult
  $Res call(
      {PromotionCode promotionCode,
      Option<Ticket> ticket,
      Option<String> invalidPromotionCodeMessage,
      Option<int> vipPrice,
      Option<Ticket> upgradedTicket,
      Option<EventTickets> eventTickets,
      CubitStatus initialStatus,
      CubitStatus promotionCodeStatus,
      CubitStatus proceedingToPaymentStatus,
      Option<String> snackbarMessage,
      bool isVipNoLongerAvailable,
      bool sendInvoice,
      Option<CustomerData> customerData,
      Option<double> serviceFee,
      Option<double> serviceFeeAmount,
      Option<double> totalAmount,
      Option<CurrencyParams> currencyParams,
      Option<UserPaymentFailure> paymentFailure});
}

/// @nodoc
class _$VipCheckoutStateCopyWithImpl<$Res, $Val extends VipCheckoutState>
    implements $VipCheckoutStateCopyWith<$Res> {
  _$VipCheckoutStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? promotionCode = null,
    Object? ticket = null,
    Object? invalidPromotionCodeMessage = null,
    Object? vipPrice = null,
    Object? upgradedTicket = null,
    Object? eventTickets = null,
    Object? initialStatus = null,
    Object? promotionCodeStatus = null,
    Object? proceedingToPaymentStatus = null,
    Object? snackbarMessage = null,
    Object? isVipNoLongerAvailable = null,
    Object? sendInvoice = null,
    Object? customerData = null,
    Object? serviceFee = null,
    Object? serviceFeeAmount = null,
    Object? totalAmount = null,
    Object? currencyParams = null,
    Object? paymentFailure = null,
  }) {
    return _then(_value.copyWith(
      promotionCode: null == promotionCode
          ? _value.promotionCode
          : promotionCode // ignore: cast_nullable_to_non_nullable
              as PromotionCode,
      ticket: null == ticket
          ? _value.ticket
          : ticket // ignore: cast_nullable_to_non_nullable
              as Option<Ticket>,
      invalidPromotionCodeMessage: null == invalidPromotionCodeMessage
          ? _value.invalidPromotionCodeMessage
          : invalidPromotionCodeMessage // ignore: cast_nullable_to_non_nullable
              as Option<String>,
      vipPrice: null == vipPrice
          ? _value.vipPrice
          : vipPrice // ignore: cast_nullable_to_non_nullable
              as Option<int>,
      upgradedTicket: null == upgradedTicket
          ? _value.upgradedTicket
          : upgradedTicket // ignore: cast_nullable_to_non_nullable
              as Option<Ticket>,
      eventTickets: null == eventTickets
          ? _value.eventTickets
          : eventTickets // ignore: cast_nullable_to_non_nullable
              as Option<EventTickets>,
      initialStatus: null == initialStatus
          ? _value.initialStatus
          : initialStatus // ignore: cast_nullable_to_non_nullable
              as CubitStatus,
      promotionCodeStatus: null == promotionCodeStatus
          ? _value.promotionCodeStatus
          : promotionCodeStatus // ignore: cast_nullable_to_non_nullable
              as CubitStatus,
      proceedingToPaymentStatus: null == proceedingToPaymentStatus
          ? _value.proceedingToPaymentStatus
          : proceedingToPaymentStatus // ignore: cast_nullable_to_non_nullable
              as CubitStatus,
      snackbarMessage: null == snackbarMessage
          ? _value.snackbarMessage
          : snackbarMessage // ignore: cast_nullable_to_non_nullable
              as Option<String>,
      isVipNoLongerAvailable: null == isVipNoLongerAvailable
          ? _value.isVipNoLongerAvailable
          : isVipNoLongerAvailable // ignore: cast_nullable_to_non_nullable
              as bool,
      sendInvoice: null == sendInvoice
          ? _value.sendInvoice
          : sendInvoice // ignore: cast_nullable_to_non_nullable
              as bool,
      customerData: null == customerData
          ? _value.customerData
          : customerData // ignore: cast_nullable_to_non_nullable
              as Option<CustomerData>,
      serviceFee: null == serviceFee
          ? _value.serviceFee
          : serviceFee // ignore: cast_nullable_to_non_nullable
              as Option<double>,
      serviceFeeAmount: null == serviceFeeAmount
          ? _value.serviceFeeAmount
          : serviceFeeAmount // ignore: cast_nullable_to_non_nullable
              as Option<double>,
      totalAmount: null == totalAmount
          ? _value.totalAmount
          : totalAmount // ignore: cast_nullable_to_non_nullable
              as Option<double>,
      currencyParams: null == currencyParams
          ? _value.currencyParams
          : currencyParams // ignore: cast_nullable_to_non_nullable
              as Option<CurrencyParams>,
      paymentFailure: null == paymentFailure
          ? _value.paymentFailure
          : paymentFailure // ignore: cast_nullable_to_non_nullable
              as Option<UserPaymentFailure>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_VipCheckoutStateCopyWith<$Res>
    implements $VipCheckoutStateCopyWith<$Res> {
  factory _$$_VipCheckoutStateCopyWith(
          _$_VipCheckoutState value, $Res Function(_$_VipCheckoutState) then) =
      __$$_VipCheckoutStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {PromotionCode promotionCode,
      Option<Ticket> ticket,
      Option<String> invalidPromotionCodeMessage,
      Option<int> vipPrice,
      Option<Ticket> upgradedTicket,
      Option<EventTickets> eventTickets,
      CubitStatus initialStatus,
      CubitStatus promotionCodeStatus,
      CubitStatus proceedingToPaymentStatus,
      Option<String> snackbarMessage,
      bool isVipNoLongerAvailable,
      bool sendInvoice,
      Option<CustomerData> customerData,
      Option<double> serviceFee,
      Option<double> serviceFeeAmount,
      Option<double> totalAmount,
      Option<CurrencyParams> currencyParams,
      Option<UserPaymentFailure> paymentFailure});
}

/// @nodoc
class __$$_VipCheckoutStateCopyWithImpl<$Res>
    extends _$VipCheckoutStateCopyWithImpl<$Res, _$_VipCheckoutState>
    implements _$$_VipCheckoutStateCopyWith<$Res> {
  __$$_VipCheckoutStateCopyWithImpl(
      _$_VipCheckoutState _value, $Res Function(_$_VipCheckoutState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? promotionCode = null,
    Object? ticket = null,
    Object? invalidPromotionCodeMessage = null,
    Object? vipPrice = null,
    Object? upgradedTicket = null,
    Object? eventTickets = null,
    Object? initialStatus = null,
    Object? promotionCodeStatus = null,
    Object? proceedingToPaymentStatus = null,
    Object? snackbarMessage = null,
    Object? isVipNoLongerAvailable = null,
    Object? sendInvoice = null,
    Object? customerData = null,
    Object? serviceFee = null,
    Object? serviceFeeAmount = null,
    Object? totalAmount = null,
    Object? currencyParams = null,
    Object? paymentFailure = null,
  }) {
    return _then(_$_VipCheckoutState(
      promotionCode: null == promotionCode
          ? _value.promotionCode
          : promotionCode // ignore: cast_nullable_to_non_nullable
              as PromotionCode,
      ticket: null == ticket
          ? _value.ticket
          : ticket // ignore: cast_nullable_to_non_nullable
              as Option<Ticket>,
      invalidPromotionCodeMessage: null == invalidPromotionCodeMessage
          ? _value.invalidPromotionCodeMessage
          : invalidPromotionCodeMessage // ignore: cast_nullable_to_non_nullable
              as Option<String>,
      vipPrice: null == vipPrice
          ? _value.vipPrice
          : vipPrice // ignore: cast_nullable_to_non_nullable
              as Option<int>,
      upgradedTicket: null == upgradedTicket
          ? _value.upgradedTicket
          : upgradedTicket // ignore: cast_nullable_to_non_nullable
              as Option<Ticket>,
      eventTickets: null == eventTickets
          ? _value.eventTickets
          : eventTickets // ignore: cast_nullable_to_non_nullable
              as Option<EventTickets>,
      initialStatus: null == initialStatus
          ? _value.initialStatus
          : initialStatus // ignore: cast_nullable_to_non_nullable
              as CubitStatus,
      promotionCodeStatus: null == promotionCodeStatus
          ? _value.promotionCodeStatus
          : promotionCodeStatus // ignore: cast_nullable_to_non_nullable
              as CubitStatus,
      proceedingToPaymentStatus: null == proceedingToPaymentStatus
          ? _value.proceedingToPaymentStatus
          : proceedingToPaymentStatus // ignore: cast_nullable_to_non_nullable
              as CubitStatus,
      snackbarMessage: null == snackbarMessage
          ? _value.snackbarMessage
          : snackbarMessage // ignore: cast_nullable_to_non_nullable
              as Option<String>,
      isVipNoLongerAvailable: null == isVipNoLongerAvailable
          ? _value.isVipNoLongerAvailable
          : isVipNoLongerAvailable // ignore: cast_nullable_to_non_nullable
              as bool,
      sendInvoice: null == sendInvoice
          ? _value.sendInvoice
          : sendInvoice // ignore: cast_nullable_to_non_nullable
              as bool,
      customerData: null == customerData
          ? _value.customerData
          : customerData // ignore: cast_nullable_to_non_nullable
              as Option<CustomerData>,
      serviceFee: null == serviceFee
          ? _value.serviceFee
          : serviceFee // ignore: cast_nullable_to_non_nullable
              as Option<double>,
      serviceFeeAmount: null == serviceFeeAmount
          ? _value.serviceFeeAmount
          : serviceFeeAmount // ignore: cast_nullable_to_non_nullable
              as Option<double>,
      totalAmount: null == totalAmount
          ? _value.totalAmount
          : totalAmount // ignore: cast_nullable_to_non_nullable
              as Option<double>,
      currencyParams: null == currencyParams
          ? _value.currencyParams
          : currencyParams // ignore: cast_nullable_to_non_nullable
              as Option<CurrencyParams>,
      paymentFailure: null == paymentFailure
          ? _value.paymentFailure
          : paymentFailure // ignore: cast_nullable_to_non_nullable
              as Option<UserPaymentFailure>,
    ));
  }
}

/// @nodoc

class _$_VipCheckoutState extends _VipCheckoutState {
  _$_VipCheckoutState(
      {required this.promotionCode,
      required this.ticket,
      required this.invalidPromotionCodeMessage,
      required this.vipPrice,
      required this.upgradedTicket,
      required this.eventTickets,
      required this.initialStatus,
      required this.promotionCodeStatus,
      required this.proceedingToPaymentStatus,
      required this.snackbarMessage,
      required this.isVipNoLongerAvailable,
      required this.sendInvoice,
      required this.customerData,
      required this.serviceFee,
      required this.serviceFeeAmount,
      required this.totalAmount,
      required this.currencyParams,
      required this.paymentFailure})
      : super._();

  @override
  final PromotionCode promotionCode;
  @override
  final Option<Ticket> ticket;
  @override
  final Option<String> invalidPromotionCodeMessage;
  @override
  final Option<int> vipPrice;
  @override
  final Option<Ticket> upgradedTicket;
  @override
  final Option<EventTickets> eventTickets;
  @override
  final CubitStatus initialStatus;
  @override
  final CubitStatus promotionCodeStatus;
  @override
  final CubitStatus proceedingToPaymentStatus;
  @override
  final Option<String> snackbarMessage;
  @override
  final bool isVipNoLongerAvailable;
  @override
  final bool sendInvoice;
  @override
  final Option<CustomerData> customerData;
  @override
  final Option<double> serviceFee;
  @override
  final Option<double> serviceFeeAmount;
  @override
  final Option<double> totalAmount;
  @override
  final Option<CurrencyParams> currencyParams;
  @override
  final Option<UserPaymentFailure> paymentFailure;

  @override
  String toString() {
    return 'VipCheckoutState(promotionCode: $promotionCode, ticket: $ticket, invalidPromotionCodeMessage: $invalidPromotionCodeMessage, vipPrice: $vipPrice, upgradedTicket: $upgradedTicket, eventTickets: $eventTickets, initialStatus: $initialStatus, promotionCodeStatus: $promotionCodeStatus, proceedingToPaymentStatus: $proceedingToPaymentStatus, snackbarMessage: $snackbarMessage, isVipNoLongerAvailable: $isVipNoLongerAvailable, sendInvoice: $sendInvoice, customerData: $customerData, serviceFee: $serviceFee, serviceFeeAmount: $serviceFeeAmount, totalAmount: $totalAmount, currencyParams: $currencyParams, paymentFailure: $paymentFailure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_VipCheckoutState &&
            (identical(other.promotionCode, promotionCode) ||
                other.promotionCode == promotionCode) &&
            (identical(other.ticket, ticket) || other.ticket == ticket) &&
            (identical(other.invalidPromotionCodeMessage,
                    invalidPromotionCodeMessage) ||
                other.invalidPromotionCodeMessage ==
                    invalidPromotionCodeMessage) &&
            (identical(other.vipPrice, vipPrice) ||
                other.vipPrice == vipPrice) &&
            (identical(other.upgradedTicket, upgradedTicket) ||
                other.upgradedTicket == upgradedTicket) &&
            (identical(other.eventTickets, eventTickets) ||
                other.eventTickets == eventTickets) &&
            (identical(other.initialStatus, initialStatus) ||
                other.initialStatus == initialStatus) &&
            (identical(other.promotionCodeStatus, promotionCodeStatus) ||
                other.promotionCodeStatus == promotionCodeStatus) &&
            (identical(other.proceedingToPaymentStatus,
                    proceedingToPaymentStatus) ||
                other.proceedingToPaymentStatus == proceedingToPaymentStatus) &&
            (identical(other.snackbarMessage, snackbarMessage) ||
                other.snackbarMessage == snackbarMessage) &&
            (identical(other.isVipNoLongerAvailable, isVipNoLongerAvailable) ||
                other.isVipNoLongerAvailable == isVipNoLongerAvailable) &&
            (identical(other.sendInvoice, sendInvoice) ||
                other.sendInvoice == sendInvoice) &&
            (identical(other.customerData, customerData) ||
                other.customerData == customerData) &&
            (identical(other.serviceFee, serviceFee) ||
                other.serviceFee == serviceFee) &&
            (identical(other.serviceFeeAmount, serviceFeeAmount) ||
                other.serviceFeeAmount == serviceFeeAmount) &&
            (identical(other.totalAmount, totalAmount) ||
                other.totalAmount == totalAmount) &&
            (identical(other.currencyParams, currencyParams) ||
                other.currencyParams == currencyParams) &&
            (identical(other.paymentFailure, paymentFailure) ||
                other.paymentFailure == paymentFailure));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      promotionCode,
      ticket,
      invalidPromotionCodeMessage,
      vipPrice,
      upgradedTicket,
      eventTickets,
      initialStatus,
      promotionCodeStatus,
      proceedingToPaymentStatus,
      snackbarMessage,
      isVipNoLongerAvailable,
      sendInvoice,
      customerData,
      serviceFee,
      serviceFeeAmount,
      totalAmount,
      currencyParams,
      paymentFailure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_VipCheckoutStateCopyWith<_$_VipCheckoutState> get copyWith =>
      __$$_VipCheckoutStateCopyWithImpl<_$_VipCheckoutState>(this, _$identity);
}

abstract class _VipCheckoutState extends VipCheckoutState {
  factory _VipCheckoutState(
          {required final PromotionCode promotionCode,
          required final Option<Ticket> ticket,
          required final Option<String> invalidPromotionCodeMessage,
          required final Option<int> vipPrice,
          required final Option<Ticket> upgradedTicket,
          required final Option<EventTickets> eventTickets,
          required final CubitStatus initialStatus,
          required final CubitStatus promotionCodeStatus,
          required final CubitStatus proceedingToPaymentStatus,
          required final Option<String> snackbarMessage,
          required final bool isVipNoLongerAvailable,
          required final bool sendInvoice,
          required final Option<CustomerData> customerData,
          required final Option<double> serviceFee,
          required final Option<double> serviceFeeAmount,
          required final Option<double> totalAmount,
          required final Option<CurrencyParams> currencyParams,
          required final Option<UserPaymentFailure> paymentFailure}) =
      _$_VipCheckoutState;
  _VipCheckoutState._() : super._();

  @override
  PromotionCode get promotionCode;
  @override
  Option<Ticket> get ticket;
  @override
  Option<String> get invalidPromotionCodeMessage;
  @override
  Option<int> get vipPrice;
  @override
  Option<Ticket> get upgradedTicket;
  @override
  Option<EventTickets> get eventTickets;
  @override
  CubitStatus get initialStatus;
  @override
  CubitStatus get promotionCodeStatus;
  @override
  CubitStatus get proceedingToPaymentStatus;
  @override
  Option<String> get snackbarMessage;
  @override
  bool get isVipNoLongerAvailable;
  @override
  bool get sendInvoice;
  @override
  Option<CustomerData> get customerData;
  @override
  Option<double> get serviceFee;
  @override
  Option<double> get serviceFeeAmount;
  @override
  Option<double> get totalAmount;
  @override
  Option<CurrencyParams> get currencyParams;
  @override
  Option<UserPaymentFailure> get paymentFailure;
  @override
  @JsonKey(ignore: true)
  _$$_VipCheckoutStateCopyWith<_$_VipCheckoutState> get copyWith =>
      throw _privateConstructorUsedError;
}
