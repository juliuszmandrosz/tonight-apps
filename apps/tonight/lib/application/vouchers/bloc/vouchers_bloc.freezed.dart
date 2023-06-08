// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'vouchers_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$VouchersEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() vouchersFetched,
    required TResult Function() nextPageVouchersFetched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? vouchersFetched,
    TResult? Function()? nextPageVouchersFetched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? vouchersFetched,
    TResult Function()? nextPageVouchersFetched,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_VouchersFetched value) vouchersFetched,
    required TResult Function(_NextPageVouchersFetched value)
        nextPageVouchersFetched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_VouchersFetched value)? vouchersFetched,
    TResult? Function(_NextPageVouchersFetched value)? nextPageVouchersFetched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_VouchersFetched value)? vouchersFetched,
    TResult Function(_NextPageVouchersFetched value)? nextPageVouchersFetched,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VouchersEventCopyWith<$Res> {
  factory $VouchersEventCopyWith(
          VouchersEvent value, $Res Function(VouchersEvent) then) =
      _$VouchersEventCopyWithImpl<$Res, VouchersEvent>;
}

/// @nodoc
class _$VouchersEventCopyWithImpl<$Res, $Val extends VouchersEvent>
    implements $VouchersEventCopyWith<$Res> {
  _$VouchersEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_VouchersFetchedCopyWith<$Res> {
  factory _$$_VouchersFetchedCopyWith(
          _$_VouchersFetched value, $Res Function(_$_VouchersFetched) then) =
      __$$_VouchersFetchedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_VouchersFetchedCopyWithImpl<$Res>
    extends _$VouchersEventCopyWithImpl<$Res, _$_VouchersFetched>
    implements _$$_VouchersFetchedCopyWith<$Res> {
  __$$_VouchersFetchedCopyWithImpl(
      _$_VouchersFetched _value, $Res Function(_$_VouchersFetched) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_VouchersFetched implements _VouchersFetched {
  const _$_VouchersFetched();

  @override
  String toString() {
    return 'VouchersEvent.vouchersFetched()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_VouchersFetched);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() vouchersFetched,
    required TResult Function() nextPageVouchersFetched,
  }) {
    return vouchersFetched();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? vouchersFetched,
    TResult? Function()? nextPageVouchersFetched,
  }) {
    return vouchersFetched?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? vouchersFetched,
    TResult Function()? nextPageVouchersFetched,
    required TResult orElse(),
  }) {
    if (vouchersFetched != null) {
      return vouchersFetched();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_VouchersFetched value) vouchersFetched,
    required TResult Function(_NextPageVouchersFetched value)
        nextPageVouchersFetched,
  }) {
    return vouchersFetched(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_VouchersFetched value)? vouchersFetched,
    TResult? Function(_NextPageVouchersFetched value)? nextPageVouchersFetched,
  }) {
    return vouchersFetched?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_VouchersFetched value)? vouchersFetched,
    TResult Function(_NextPageVouchersFetched value)? nextPageVouchersFetched,
    required TResult orElse(),
  }) {
    if (vouchersFetched != null) {
      return vouchersFetched(this);
    }
    return orElse();
  }
}

abstract class _VouchersFetched implements VouchersEvent {
  const factory _VouchersFetched() = _$_VouchersFetched;
}

/// @nodoc
abstract class _$$_NextPageVouchersFetchedCopyWith<$Res> {
  factory _$$_NextPageVouchersFetchedCopyWith(_$_NextPageVouchersFetched value,
          $Res Function(_$_NextPageVouchersFetched) then) =
      __$$_NextPageVouchersFetchedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_NextPageVouchersFetchedCopyWithImpl<$Res>
    extends _$VouchersEventCopyWithImpl<$Res, _$_NextPageVouchersFetched>
    implements _$$_NextPageVouchersFetchedCopyWith<$Res> {
  __$$_NextPageVouchersFetchedCopyWithImpl(_$_NextPageVouchersFetched _value,
      $Res Function(_$_NextPageVouchersFetched) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_NextPageVouchersFetched implements _NextPageVouchersFetched {
  const _$_NextPageVouchersFetched();

  @override
  String toString() {
    return 'VouchersEvent.nextPageVouchersFetched()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NextPageVouchersFetched);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() vouchersFetched,
    required TResult Function() nextPageVouchersFetched,
  }) {
    return nextPageVouchersFetched();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? vouchersFetched,
    TResult? Function()? nextPageVouchersFetched,
  }) {
    return nextPageVouchersFetched?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? vouchersFetched,
    TResult Function()? nextPageVouchersFetched,
    required TResult orElse(),
  }) {
    if (nextPageVouchersFetched != null) {
      return nextPageVouchersFetched();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_VouchersFetched value) vouchersFetched,
    required TResult Function(_NextPageVouchersFetched value)
        nextPageVouchersFetched,
  }) {
    return nextPageVouchersFetched(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_VouchersFetched value)? vouchersFetched,
    TResult? Function(_NextPageVouchersFetched value)? nextPageVouchersFetched,
  }) {
    return nextPageVouchersFetched?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_VouchersFetched value)? vouchersFetched,
    TResult Function(_NextPageVouchersFetched value)? nextPageVouchersFetched,
    required TResult orElse(),
  }) {
    if (nextPageVouchersFetched != null) {
      return nextPageVouchersFetched(this);
    }
    return orElse();
  }
}

abstract class _NextPageVouchersFetched implements VouchersEvent {
  const factory _NextPageVouchersFetched() = _$_NextPageVouchersFetched;
}

/// @nodoc
mixin _$VouchersState {
  List<Voucher> get vouchers => throw _privateConstructorUsedError;
  bool get hasReachedMax => throw _privateConstructorUsedError;
  CubitStatus get fetchVouchersStatus => throw _privateConstructorUsedError;
  CubitStatus get nextPageStatus => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $VouchersStateCopyWith<VouchersState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VouchersStateCopyWith<$Res> {
  factory $VouchersStateCopyWith(
          VouchersState value, $Res Function(VouchersState) then) =
      _$VouchersStateCopyWithImpl<$Res, VouchersState>;
  @useResult
  $Res call(
      {List<Voucher> vouchers,
      bool hasReachedMax,
      CubitStatus fetchVouchersStatus,
      CubitStatus nextPageStatus});
}

/// @nodoc
class _$VouchersStateCopyWithImpl<$Res, $Val extends VouchersState>
    implements $VouchersStateCopyWith<$Res> {
  _$VouchersStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? vouchers = null,
    Object? hasReachedMax = null,
    Object? fetchVouchersStatus = null,
    Object? nextPageStatus = null,
  }) {
    return _then(_value.copyWith(
      vouchers: null == vouchers
          ? _value.vouchers
          : vouchers // ignore: cast_nullable_to_non_nullable
              as List<Voucher>,
      hasReachedMax: null == hasReachedMax
          ? _value.hasReachedMax
          : hasReachedMax // ignore: cast_nullable_to_non_nullable
              as bool,
      fetchVouchersStatus: null == fetchVouchersStatus
          ? _value.fetchVouchersStatus
          : fetchVouchersStatus // ignore: cast_nullable_to_non_nullable
              as CubitStatus,
      nextPageStatus: null == nextPageStatus
          ? _value.nextPageStatus
          : nextPageStatus // ignore: cast_nullable_to_non_nullable
              as CubitStatus,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_VouchersStateCopyWith<$Res>
    implements $VouchersStateCopyWith<$Res> {
  factory _$$_VouchersStateCopyWith(
          _$_VouchersState value, $Res Function(_$_VouchersState) then) =
      __$$_VouchersStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<Voucher> vouchers,
      bool hasReachedMax,
      CubitStatus fetchVouchersStatus,
      CubitStatus nextPageStatus});
}

/// @nodoc
class __$$_VouchersStateCopyWithImpl<$Res>
    extends _$VouchersStateCopyWithImpl<$Res, _$_VouchersState>
    implements _$$_VouchersStateCopyWith<$Res> {
  __$$_VouchersStateCopyWithImpl(
      _$_VouchersState _value, $Res Function(_$_VouchersState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? vouchers = null,
    Object? hasReachedMax = null,
    Object? fetchVouchersStatus = null,
    Object? nextPageStatus = null,
  }) {
    return _then(_$_VouchersState(
      vouchers: null == vouchers
          ? _value._vouchers
          : vouchers // ignore: cast_nullable_to_non_nullable
              as List<Voucher>,
      hasReachedMax: null == hasReachedMax
          ? _value.hasReachedMax
          : hasReachedMax // ignore: cast_nullable_to_non_nullable
              as bool,
      fetchVouchersStatus: null == fetchVouchersStatus
          ? _value.fetchVouchersStatus
          : fetchVouchersStatus // ignore: cast_nullable_to_non_nullable
              as CubitStatus,
      nextPageStatus: null == nextPageStatus
          ? _value.nextPageStatus
          : nextPageStatus // ignore: cast_nullable_to_non_nullable
              as CubitStatus,
    ));
  }
}

/// @nodoc

class _$_VouchersState implements _VouchersState {
  const _$_VouchersState(
      {required final List<Voucher> vouchers,
      required this.hasReachedMax,
      required this.fetchVouchersStatus,
      required this.nextPageStatus})
      : _vouchers = vouchers;

  final List<Voucher> _vouchers;
  @override
  List<Voucher> get vouchers {
    if (_vouchers is EqualUnmodifiableListView) return _vouchers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_vouchers);
  }

  @override
  final bool hasReachedMax;
  @override
  final CubitStatus fetchVouchersStatus;
  @override
  final CubitStatus nextPageStatus;

  @override
  String toString() {
    return 'VouchersState(vouchers: $vouchers, hasReachedMax: $hasReachedMax, fetchVouchersStatus: $fetchVouchersStatus, nextPageStatus: $nextPageStatus)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_VouchersState &&
            const DeepCollectionEquality().equals(other._vouchers, _vouchers) &&
            (identical(other.hasReachedMax, hasReachedMax) ||
                other.hasReachedMax == hasReachedMax) &&
            (identical(other.fetchVouchersStatus, fetchVouchersStatus) ||
                other.fetchVouchersStatus == fetchVouchersStatus) &&
            (identical(other.nextPageStatus, nextPageStatus) ||
                other.nextPageStatus == nextPageStatus));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_vouchers),
      hasReachedMax,
      fetchVouchersStatus,
      nextPageStatus);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_VouchersStateCopyWith<_$_VouchersState> get copyWith =>
      __$$_VouchersStateCopyWithImpl<_$_VouchersState>(this, _$identity);
}

abstract class _VouchersState implements VouchersState {
  const factory _VouchersState(
      {required final List<Voucher> vouchers,
      required final bool hasReachedMax,
      required final CubitStatus fetchVouchersStatus,
      required final CubitStatus nextPageStatus}) = _$_VouchersState;

  @override
  List<Voucher> get vouchers;
  @override
  bool get hasReachedMax;
  @override
  CubitStatus get fetchVouchersStatus;
  @override
  CubitStatus get nextPageStatus;
  @override
  @JsonKey(ignore: true)
  _$$_VouchersStateCopyWith<_$_VouchersState> get copyWith =>
      throw _privateConstructorUsedError;
}
