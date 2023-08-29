// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dashboard_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DashboardData {
  Either<DashboardFailure, List<TonightEvent>> get tonightEvents =>
      throw _privateConstructorUsedError;
  Either<DashboardFailure, List<MarketplaceDiscount>>
      get marketplaceDiscounts => throw _privateConstructorUsedError;
  Either<DashboardFailure, int> get availableRaverCoins =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DashboardDataCopyWith<DashboardData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DashboardDataCopyWith<$Res> {
  factory $DashboardDataCopyWith(
          DashboardData value, $Res Function(DashboardData) then) =
      _$DashboardDataCopyWithImpl<$Res, DashboardData>;
  @useResult
  $Res call(
      {Either<DashboardFailure, List<TonightEvent>> tonightEvents,
      Either<DashboardFailure, List<MarketplaceDiscount>> marketplaceDiscounts,
      Either<DashboardFailure, int> availableRaverCoins});
}

/// @nodoc
class _$DashboardDataCopyWithImpl<$Res, $Val extends DashboardData>
    implements $DashboardDataCopyWith<$Res> {
  _$DashboardDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tonightEvents = null,
    Object? marketplaceDiscounts = null,
    Object? availableRaverCoins = null,
  }) {
    return _then(_value.copyWith(
      tonightEvents: null == tonightEvents
          ? _value.tonightEvents
          : tonightEvents // ignore: cast_nullable_to_non_nullable
              as Either<DashboardFailure, List<TonightEvent>>,
      marketplaceDiscounts: null == marketplaceDiscounts
          ? _value.marketplaceDiscounts
          : marketplaceDiscounts // ignore: cast_nullable_to_non_nullable
              as Either<DashboardFailure, List<MarketplaceDiscount>>,
      availableRaverCoins: null == availableRaverCoins
          ? _value.availableRaverCoins
          : availableRaverCoins // ignore: cast_nullable_to_non_nullable
              as Either<DashboardFailure, int>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DashboardDataCopyWith<$Res>
    implements $DashboardDataCopyWith<$Res> {
  factory _$$_DashboardDataCopyWith(
          _$_DashboardData value, $Res Function(_$_DashboardData) then) =
      __$$_DashboardDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Either<DashboardFailure, List<TonightEvent>> tonightEvents,
      Either<DashboardFailure, List<MarketplaceDiscount>> marketplaceDiscounts,
      Either<DashboardFailure, int> availableRaverCoins});
}

/// @nodoc
class __$$_DashboardDataCopyWithImpl<$Res>
    extends _$DashboardDataCopyWithImpl<$Res, _$_DashboardData>
    implements _$$_DashboardDataCopyWith<$Res> {
  __$$_DashboardDataCopyWithImpl(
      _$_DashboardData _value, $Res Function(_$_DashboardData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tonightEvents = null,
    Object? marketplaceDiscounts = null,
    Object? availableRaverCoins = null,
  }) {
    return _then(_$_DashboardData(
      tonightEvents: null == tonightEvents
          ? _value.tonightEvents
          : tonightEvents // ignore: cast_nullable_to_non_nullable
              as Either<DashboardFailure, List<TonightEvent>>,
      marketplaceDiscounts: null == marketplaceDiscounts
          ? _value.marketplaceDiscounts
          : marketplaceDiscounts // ignore: cast_nullable_to_non_nullable
              as Either<DashboardFailure, List<MarketplaceDiscount>>,
      availableRaverCoins: null == availableRaverCoins
          ? _value.availableRaverCoins
          : availableRaverCoins // ignore: cast_nullable_to_non_nullable
              as Either<DashboardFailure, int>,
    ));
  }
}

/// @nodoc

class _$_DashboardData implements _DashboardData {
  const _$_DashboardData(
      {required this.tonightEvents,
      required this.marketplaceDiscounts,
      required this.availableRaverCoins});

  @override
  final Either<DashboardFailure, List<TonightEvent>> tonightEvents;
  @override
  final Either<DashboardFailure, List<MarketplaceDiscount>>
      marketplaceDiscounts;
  @override
  final Either<DashboardFailure, int> availableRaverCoins;

  @override
  String toString() {
    return 'DashboardData(tonightEvents: $tonightEvents, marketplaceDiscounts: $marketplaceDiscounts, availableRaverCoins: $availableRaverCoins)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DashboardData &&
            (identical(other.tonightEvents, tonightEvents) ||
                other.tonightEvents == tonightEvents) &&
            (identical(other.marketplaceDiscounts, marketplaceDiscounts) ||
                other.marketplaceDiscounts == marketplaceDiscounts) &&
            (identical(other.availableRaverCoins, availableRaverCoins) ||
                other.availableRaverCoins == availableRaverCoins));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, tonightEvents, marketplaceDiscounts, availableRaverCoins);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DashboardDataCopyWith<_$_DashboardData> get copyWith =>
      __$$_DashboardDataCopyWithImpl<_$_DashboardData>(this, _$identity);
}

abstract class _DashboardData implements DashboardData {
  const factory _DashboardData(
          {required final Either<DashboardFailure, List<TonightEvent>>
              tonightEvents,
          required final Either<DashboardFailure, List<MarketplaceDiscount>>
              marketplaceDiscounts,
          required final Either<DashboardFailure, int> availableRaverCoins}) =
      _$_DashboardData;

  @override
  Either<DashboardFailure, List<TonightEvent>> get tonightEvents;
  @override
  Either<DashboardFailure, List<MarketplaceDiscount>> get marketplaceDiscounts;
  @override
  Either<DashboardFailure, int> get availableRaverCoins;
  @override
  @JsonKey(ignore: true)
  _$$_DashboardDataCopyWith<_$_DashboardData> get copyWith =>
      throw _privateConstructorUsedError;
}
