// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'marketplace_discount_details_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MarketplaceDiscountDetailsState {
  Option<UserMarketplaceDiscount> get redeemedDiscount =>
      throw _privateConstructorUsedError;
  CubitStatus get redeemDiscountStatus => throw _privateConstructorUsedError;
  Option<String> get snackbarMessage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MarketplaceDiscountDetailsStateCopyWith<MarketplaceDiscountDetailsState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MarketplaceDiscountDetailsStateCopyWith<$Res> {
  factory $MarketplaceDiscountDetailsStateCopyWith(
          MarketplaceDiscountDetailsState value,
          $Res Function(MarketplaceDiscountDetailsState) then) =
      _$MarketplaceDiscountDetailsStateCopyWithImpl<$Res,
          MarketplaceDiscountDetailsState>;
  @useResult
  $Res call(
      {Option<UserMarketplaceDiscount> redeemedDiscount,
      CubitStatus redeemDiscountStatus,
      Option<String> snackbarMessage});
}

/// @nodoc
class _$MarketplaceDiscountDetailsStateCopyWithImpl<$Res,
        $Val extends MarketplaceDiscountDetailsState>
    implements $MarketplaceDiscountDetailsStateCopyWith<$Res> {
  _$MarketplaceDiscountDetailsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? redeemedDiscount = null,
    Object? redeemDiscountStatus = null,
    Object? snackbarMessage = null,
  }) {
    return _then(_value.copyWith(
      redeemedDiscount: null == redeemedDiscount
          ? _value.redeemedDiscount
          : redeemedDiscount // ignore: cast_nullable_to_non_nullable
              as Option<UserMarketplaceDiscount>,
      redeemDiscountStatus: null == redeemDiscountStatus
          ? _value.redeemDiscountStatus
          : redeemDiscountStatus // ignore: cast_nullable_to_non_nullable
              as CubitStatus,
      snackbarMessage: null == snackbarMessage
          ? _value.snackbarMessage
          : snackbarMessage // ignore: cast_nullable_to_non_nullable
              as Option<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MarketplaceDiscountDetailsStateCopyWith<$Res>
    implements $MarketplaceDiscountDetailsStateCopyWith<$Res> {
  factory _$$_MarketplaceDiscountDetailsStateCopyWith(
          _$_MarketplaceDiscountDetailsState value,
          $Res Function(_$_MarketplaceDiscountDetailsState) then) =
      __$$_MarketplaceDiscountDetailsStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Option<UserMarketplaceDiscount> redeemedDiscount,
      CubitStatus redeemDiscountStatus,
      Option<String> snackbarMessage});
}

/// @nodoc
class __$$_MarketplaceDiscountDetailsStateCopyWithImpl<$Res>
    extends _$MarketplaceDiscountDetailsStateCopyWithImpl<$Res,
        _$_MarketplaceDiscountDetailsState>
    implements _$$_MarketplaceDiscountDetailsStateCopyWith<$Res> {
  __$$_MarketplaceDiscountDetailsStateCopyWithImpl(
      _$_MarketplaceDiscountDetailsState _value,
      $Res Function(_$_MarketplaceDiscountDetailsState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? redeemedDiscount = null,
    Object? redeemDiscountStatus = null,
    Object? snackbarMessage = null,
  }) {
    return _then(_$_MarketplaceDiscountDetailsState(
      redeemedDiscount: null == redeemedDiscount
          ? _value.redeemedDiscount
          : redeemedDiscount // ignore: cast_nullable_to_non_nullable
              as Option<UserMarketplaceDiscount>,
      redeemDiscountStatus: null == redeemDiscountStatus
          ? _value.redeemDiscountStatus
          : redeemDiscountStatus // ignore: cast_nullable_to_non_nullable
              as CubitStatus,
      snackbarMessage: null == snackbarMessage
          ? _value.snackbarMessage
          : snackbarMessage // ignore: cast_nullable_to_non_nullable
              as Option<String>,
    ));
  }
}

/// @nodoc

class _$_MarketplaceDiscountDetailsState
    implements _MarketplaceDiscountDetailsState {
  const _$_MarketplaceDiscountDetailsState(
      {required this.redeemedDiscount,
      required this.redeemDiscountStatus,
      required this.snackbarMessage});

  @override
  final Option<UserMarketplaceDiscount> redeemedDiscount;
  @override
  final CubitStatus redeemDiscountStatus;
  @override
  final Option<String> snackbarMessage;

  @override
  String toString() {
    return 'MarketplaceDiscountDetailsState(redeemedDiscount: $redeemedDiscount, redeemDiscountStatus: $redeemDiscountStatus, snackbarMessage: $snackbarMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MarketplaceDiscountDetailsState &&
            (identical(other.redeemedDiscount, redeemedDiscount) ||
                other.redeemedDiscount == redeemedDiscount) &&
            (identical(other.redeemDiscountStatus, redeemDiscountStatus) ||
                other.redeemDiscountStatus == redeemDiscountStatus) &&
            (identical(other.snackbarMessage, snackbarMessage) ||
                other.snackbarMessage == snackbarMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, redeemedDiscount, redeemDiscountStatus, snackbarMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MarketplaceDiscountDetailsStateCopyWith<
          _$_MarketplaceDiscountDetailsState>
      get copyWith => __$$_MarketplaceDiscountDetailsStateCopyWithImpl<
          _$_MarketplaceDiscountDetailsState>(this, _$identity);
}

abstract class _MarketplaceDiscountDetailsState
    implements MarketplaceDiscountDetailsState {
  const factory _MarketplaceDiscountDetailsState(
          {required final Option<UserMarketplaceDiscount> redeemedDiscount,
          required final CubitStatus redeemDiscountStatus,
          required final Option<String> snackbarMessage}) =
      _$_MarketplaceDiscountDetailsState;

  @override
  Option<UserMarketplaceDiscount> get redeemedDiscount;
  @override
  CubitStatus get redeemDiscountStatus;
  @override
  Option<String> get snackbarMessage;
  @override
  @JsonKey(ignore: true)
  _$$_MarketplaceDiscountDetailsStateCopyWith<
          _$_MarketplaceDiscountDetailsState>
      get copyWith => throw _privateConstructorUsedError;
}
