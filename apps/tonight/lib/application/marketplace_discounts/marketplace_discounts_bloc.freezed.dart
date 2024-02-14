// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'marketplace_discounts_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MarketplaceDiscountsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int availableRaverCoins) stateInitialized,
    required TResult Function() availableDiscountsFetched,
    required TResult Function() nextPageAvailableDiscountsFetched,
    required TResult Function() userDiscountsFetched,
    required TResult Function() nextPageUserDiscountsFetched,
    required TResult Function(MarketplaceDiscount discount) discountRedeemed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int availableRaverCoins)? stateInitialized,
    TResult? Function()? availableDiscountsFetched,
    TResult? Function()? nextPageAvailableDiscountsFetched,
    TResult? Function()? userDiscountsFetched,
    TResult? Function()? nextPageUserDiscountsFetched,
    TResult? Function(MarketplaceDiscount discount)? discountRedeemed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int availableRaverCoins)? stateInitialized,
    TResult Function()? availableDiscountsFetched,
    TResult Function()? nextPageAvailableDiscountsFetched,
    TResult Function()? userDiscountsFetched,
    TResult Function()? nextPageUserDiscountsFetched,
    TResult Function(MarketplaceDiscount discount)? discountRedeemed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StateInitialized value) stateInitialized,
    required TResult Function(_AvailableDiscountsFetched value)
        availableDiscountsFetched,
    required TResult Function(_NextPageAvailableDiscountsFetched value)
        nextPageAvailableDiscountsFetched,
    required TResult Function(_UserDiscountsFetched value) userDiscountsFetched,
    required TResult Function(_NextPageUserDiscountsFetched value)
        nextPageUserDiscountsFetched,
    required TResult Function(_DiscountRedeemed value) discountRedeemed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StateInitialized value)? stateInitialized,
    TResult? Function(_AvailableDiscountsFetched value)?
        availableDiscountsFetched,
    TResult? Function(_NextPageAvailableDiscountsFetched value)?
        nextPageAvailableDiscountsFetched,
    TResult? Function(_UserDiscountsFetched value)? userDiscountsFetched,
    TResult? Function(_NextPageUserDiscountsFetched value)?
        nextPageUserDiscountsFetched,
    TResult? Function(_DiscountRedeemed value)? discountRedeemed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StateInitialized value)? stateInitialized,
    TResult Function(_AvailableDiscountsFetched value)?
        availableDiscountsFetched,
    TResult Function(_NextPageAvailableDiscountsFetched value)?
        nextPageAvailableDiscountsFetched,
    TResult Function(_UserDiscountsFetched value)? userDiscountsFetched,
    TResult Function(_NextPageUserDiscountsFetched value)?
        nextPageUserDiscountsFetched,
    TResult Function(_DiscountRedeemed value)? discountRedeemed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MarketplaceDiscountsEventCopyWith<$Res> {
  factory $MarketplaceDiscountsEventCopyWith(MarketplaceDiscountsEvent value,
          $Res Function(MarketplaceDiscountsEvent) then) =
      _$MarketplaceDiscountsEventCopyWithImpl<$Res, MarketplaceDiscountsEvent>;
}

/// @nodoc
class _$MarketplaceDiscountsEventCopyWithImpl<$Res,
        $Val extends MarketplaceDiscountsEvent>
    implements $MarketplaceDiscountsEventCopyWith<$Res> {
  _$MarketplaceDiscountsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_StateInitializedCopyWith<$Res> {
  factory _$$_StateInitializedCopyWith(
          _$_StateInitialized value, $Res Function(_$_StateInitialized) then) =
      __$$_StateInitializedCopyWithImpl<$Res>;
  @useResult
  $Res call({int availableRaverCoins});
}

/// @nodoc
class __$$_StateInitializedCopyWithImpl<$Res>
    extends _$MarketplaceDiscountsEventCopyWithImpl<$Res, _$_StateInitialized>
    implements _$$_StateInitializedCopyWith<$Res> {
  __$$_StateInitializedCopyWithImpl(
      _$_StateInitialized _value, $Res Function(_$_StateInitialized) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? availableRaverCoins = null,
  }) {
    return _then(_$_StateInitialized(
      null == availableRaverCoins
          ? _value.availableRaverCoins
          : availableRaverCoins // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_StateInitialized implements _StateInitialized {
  const _$_StateInitialized(this.availableRaverCoins);

  @override
  final int availableRaverCoins;

  @override
  String toString() {
    return 'MarketplaceDiscountsEvent.stateInitialized(availableRaverCoins: $availableRaverCoins)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StateInitialized &&
            (identical(other.availableRaverCoins, availableRaverCoins) ||
                other.availableRaverCoins == availableRaverCoins));
  }

  @override
  int get hashCode => Object.hash(runtimeType, availableRaverCoins);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StateInitializedCopyWith<_$_StateInitialized> get copyWith =>
      __$$_StateInitializedCopyWithImpl<_$_StateInitialized>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int availableRaverCoins) stateInitialized,
    required TResult Function() availableDiscountsFetched,
    required TResult Function() nextPageAvailableDiscountsFetched,
    required TResult Function() userDiscountsFetched,
    required TResult Function() nextPageUserDiscountsFetched,
    required TResult Function(MarketplaceDiscount discount) discountRedeemed,
  }) {
    return stateInitialized(availableRaverCoins);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int availableRaverCoins)? stateInitialized,
    TResult? Function()? availableDiscountsFetched,
    TResult? Function()? nextPageAvailableDiscountsFetched,
    TResult? Function()? userDiscountsFetched,
    TResult? Function()? nextPageUserDiscountsFetched,
    TResult? Function(MarketplaceDiscount discount)? discountRedeemed,
  }) {
    return stateInitialized?.call(availableRaverCoins);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int availableRaverCoins)? stateInitialized,
    TResult Function()? availableDiscountsFetched,
    TResult Function()? nextPageAvailableDiscountsFetched,
    TResult Function()? userDiscountsFetched,
    TResult Function()? nextPageUserDiscountsFetched,
    TResult Function(MarketplaceDiscount discount)? discountRedeemed,
    required TResult orElse(),
  }) {
    if (stateInitialized != null) {
      return stateInitialized(availableRaverCoins);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StateInitialized value) stateInitialized,
    required TResult Function(_AvailableDiscountsFetched value)
        availableDiscountsFetched,
    required TResult Function(_NextPageAvailableDiscountsFetched value)
        nextPageAvailableDiscountsFetched,
    required TResult Function(_UserDiscountsFetched value) userDiscountsFetched,
    required TResult Function(_NextPageUserDiscountsFetched value)
        nextPageUserDiscountsFetched,
    required TResult Function(_DiscountRedeemed value) discountRedeemed,
  }) {
    return stateInitialized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StateInitialized value)? stateInitialized,
    TResult? Function(_AvailableDiscountsFetched value)?
        availableDiscountsFetched,
    TResult? Function(_NextPageAvailableDiscountsFetched value)?
        nextPageAvailableDiscountsFetched,
    TResult? Function(_UserDiscountsFetched value)? userDiscountsFetched,
    TResult? Function(_NextPageUserDiscountsFetched value)?
        nextPageUserDiscountsFetched,
    TResult? Function(_DiscountRedeemed value)? discountRedeemed,
  }) {
    return stateInitialized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StateInitialized value)? stateInitialized,
    TResult Function(_AvailableDiscountsFetched value)?
        availableDiscountsFetched,
    TResult Function(_NextPageAvailableDiscountsFetched value)?
        nextPageAvailableDiscountsFetched,
    TResult Function(_UserDiscountsFetched value)? userDiscountsFetched,
    TResult Function(_NextPageUserDiscountsFetched value)?
        nextPageUserDiscountsFetched,
    TResult Function(_DiscountRedeemed value)? discountRedeemed,
    required TResult orElse(),
  }) {
    if (stateInitialized != null) {
      return stateInitialized(this);
    }
    return orElse();
  }
}

abstract class _StateInitialized implements MarketplaceDiscountsEvent {
  const factory _StateInitialized(final int availableRaverCoins) =
      _$_StateInitialized;

  int get availableRaverCoins;
  @JsonKey(ignore: true)
  _$$_StateInitializedCopyWith<_$_StateInitialized> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_AvailableDiscountsFetchedCopyWith<$Res> {
  factory _$$_AvailableDiscountsFetchedCopyWith(
          _$_AvailableDiscountsFetched value,
          $Res Function(_$_AvailableDiscountsFetched) then) =
      __$$_AvailableDiscountsFetchedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_AvailableDiscountsFetchedCopyWithImpl<$Res>
    extends _$MarketplaceDiscountsEventCopyWithImpl<$Res,
        _$_AvailableDiscountsFetched>
    implements _$$_AvailableDiscountsFetchedCopyWith<$Res> {
  __$$_AvailableDiscountsFetchedCopyWithImpl(
      _$_AvailableDiscountsFetched _value,
      $Res Function(_$_AvailableDiscountsFetched) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_AvailableDiscountsFetched implements _AvailableDiscountsFetched {
  const _$_AvailableDiscountsFetched();

  @override
  String toString() {
    return 'MarketplaceDiscountsEvent.availableDiscountsFetched()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AvailableDiscountsFetched);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int availableRaverCoins) stateInitialized,
    required TResult Function() availableDiscountsFetched,
    required TResult Function() nextPageAvailableDiscountsFetched,
    required TResult Function() userDiscountsFetched,
    required TResult Function() nextPageUserDiscountsFetched,
    required TResult Function(MarketplaceDiscount discount) discountRedeemed,
  }) {
    return availableDiscountsFetched();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int availableRaverCoins)? stateInitialized,
    TResult? Function()? availableDiscountsFetched,
    TResult? Function()? nextPageAvailableDiscountsFetched,
    TResult? Function()? userDiscountsFetched,
    TResult? Function()? nextPageUserDiscountsFetched,
    TResult? Function(MarketplaceDiscount discount)? discountRedeemed,
  }) {
    return availableDiscountsFetched?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int availableRaverCoins)? stateInitialized,
    TResult Function()? availableDiscountsFetched,
    TResult Function()? nextPageAvailableDiscountsFetched,
    TResult Function()? userDiscountsFetched,
    TResult Function()? nextPageUserDiscountsFetched,
    TResult Function(MarketplaceDiscount discount)? discountRedeemed,
    required TResult orElse(),
  }) {
    if (availableDiscountsFetched != null) {
      return availableDiscountsFetched();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StateInitialized value) stateInitialized,
    required TResult Function(_AvailableDiscountsFetched value)
        availableDiscountsFetched,
    required TResult Function(_NextPageAvailableDiscountsFetched value)
        nextPageAvailableDiscountsFetched,
    required TResult Function(_UserDiscountsFetched value) userDiscountsFetched,
    required TResult Function(_NextPageUserDiscountsFetched value)
        nextPageUserDiscountsFetched,
    required TResult Function(_DiscountRedeemed value) discountRedeemed,
  }) {
    return availableDiscountsFetched(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StateInitialized value)? stateInitialized,
    TResult? Function(_AvailableDiscountsFetched value)?
        availableDiscountsFetched,
    TResult? Function(_NextPageAvailableDiscountsFetched value)?
        nextPageAvailableDiscountsFetched,
    TResult? Function(_UserDiscountsFetched value)? userDiscountsFetched,
    TResult? Function(_NextPageUserDiscountsFetched value)?
        nextPageUserDiscountsFetched,
    TResult? Function(_DiscountRedeemed value)? discountRedeemed,
  }) {
    return availableDiscountsFetched?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StateInitialized value)? stateInitialized,
    TResult Function(_AvailableDiscountsFetched value)?
        availableDiscountsFetched,
    TResult Function(_NextPageAvailableDiscountsFetched value)?
        nextPageAvailableDiscountsFetched,
    TResult Function(_UserDiscountsFetched value)? userDiscountsFetched,
    TResult Function(_NextPageUserDiscountsFetched value)?
        nextPageUserDiscountsFetched,
    TResult Function(_DiscountRedeemed value)? discountRedeemed,
    required TResult orElse(),
  }) {
    if (availableDiscountsFetched != null) {
      return availableDiscountsFetched(this);
    }
    return orElse();
  }
}

abstract class _AvailableDiscountsFetched implements MarketplaceDiscountsEvent {
  const factory _AvailableDiscountsFetched() = _$_AvailableDiscountsFetched;
}

/// @nodoc
abstract class _$$_NextPageAvailableDiscountsFetchedCopyWith<$Res> {
  factory _$$_NextPageAvailableDiscountsFetchedCopyWith(
          _$_NextPageAvailableDiscountsFetched value,
          $Res Function(_$_NextPageAvailableDiscountsFetched) then) =
      __$$_NextPageAvailableDiscountsFetchedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_NextPageAvailableDiscountsFetchedCopyWithImpl<$Res>
    extends _$MarketplaceDiscountsEventCopyWithImpl<$Res,
        _$_NextPageAvailableDiscountsFetched>
    implements _$$_NextPageAvailableDiscountsFetchedCopyWith<$Res> {
  __$$_NextPageAvailableDiscountsFetchedCopyWithImpl(
      _$_NextPageAvailableDiscountsFetched _value,
      $Res Function(_$_NextPageAvailableDiscountsFetched) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_NextPageAvailableDiscountsFetched
    implements _NextPageAvailableDiscountsFetched {
  const _$_NextPageAvailableDiscountsFetched();

  @override
  String toString() {
    return 'MarketplaceDiscountsEvent.nextPageAvailableDiscountsFetched()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NextPageAvailableDiscountsFetched);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int availableRaverCoins) stateInitialized,
    required TResult Function() availableDiscountsFetched,
    required TResult Function() nextPageAvailableDiscountsFetched,
    required TResult Function() userDiscountsFetched,
    required TResult Function() nextPageUserDiscountsFetched,
    required TResult Function(MarketplaceDiscount discount) discountRedeemed,
  }) {
    return nextPageAvailableDiscountsFetched();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int availableRaverCoins)? stateInitialized,
    TResult? Function()? availableDiscountsFetched,
    TResult? Function()? nextPageAvailableDiscountsFetched,
    TResult? Function()? userDiscountsFetched,
    TResult? Function()? nextPageUserDiscountsFetched,
    TResult? Function(MarketplaceDiscount discount)? discountRedeemed,
  }) {
    return nextPageAvailableDiscountsFetched?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int availableRaverCoins)? stateInitialized,
    TResult Function()? availableDiscountsFetched,
    TResult Function()? nextPageAvailableDiscountsFetched,
    TResult Function()? userDiscountsFetched,
    TResult Function()? nextPageUserDiscountsFetched,
    TResult Function(MarketplaceDiscount discount)? discountRedeemed,
    required TResult orElse(),
  }) {
    if (nextPageAvailableDiscountsFetched != null) {
      return nextPageAvailableDiscountsFetched();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StateInitialized value) stateInitialized,
    required TResult Function(_AvailableDiscountsFetched value)
        availableDiscountsFetched,
    required TResult Function(_NextPageAvailableDiscountsFetched value)
        nextPageAvailableDiscountsFetched,
    required TResult Function(_UserDiscountsFetched value) userDiscountsFetched,
    required TResult Function(_NextPageUserDiscountsFetched value)
        nextPageUserDiscountsFetched,
    required TResult Function(_DiscountRedeemed value) discountRedeemed,
  }) {
    return nextPageAvailableDiscountsFetched(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StateInitialized value)? stateInitialized,
    TResult? Function(_AvailableDiscountsFetched value)?
        availableDiscountsFetched,
    TResult? Function(_NextPageAvailableDiscountsFetched value)?
        nextPageAvailableDiscountsFetched,
    TResult? Function(_UserDiscountsFetched value)? userDiscountsFetched,
    TResult? Function(_NextPageUserDiscountsFetched value)?
        nextPageUserDiscountsFetched,
    TResult? Function(_DiscountRedeemed value)? discountRedeemed,
  }) {
    return nextPageAvailableDiscountsFetched?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StateInitialized value)? stateInitialized,
    TResult Function(_AvailableDiscountsFetched value)?
        availableDiscountsFetched,
    TResult Function(_NextPageAvailableDiscountsFetched value)?
        nextPageAvailableDiscountsFetched,
    TResult Function(_UserDiscountsFetched value)? userDiscountsFetched,
    TResult Function(_NextPageUserDiscountsFetched value)?
        nextPageUserDiscountsFetched,
    TResult Function(_DiscountRedeemed value)? discountRedeemed,
    required TResult orElse(),
  }) {
    if (nextPageAvailableDiscountsFetched != null) {
      return nextPageAvailableDiscountsFetched(this);
    }
    return orElse();
  }
}

abstract class _NextPageAvailableDiscountsFetched
    implements MarketplaceDiscountsEvent {
  const factory _NextPageAvailableDiscountsFetched() =
      _$_NextPageAvailableDiscountsFetched;
}

/// @nodoc
abstract class _$$_UserDiscountsFetchedCopyWith<$Res> {
  factory _$$_UserDiscountsFetchedCopyWith(_$_UserDiscountsFetched value,
          $Res Function(_$_UserDiscountsFetched) then) =
      __$$_UserDiscountsFetchedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_UserDiscountsFetchedCopyWithImpl<$Res>
    extends _$MarketplaceDiscountsEventCopyWithImpl<$Res,
        _$_UserDiscountsFetched>
    implements _$$_UserDiscountsFetchedCopyWith<$Res> {
  __$$_UserDiscountsFetchedCopyWithImpl(_$_UserDiscountsFetched _value,
      $Res Function(_$_UserDiscountsFetched) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_UserDiscountsFetched implements _UserDiscountsFetched {
  const _$_UserDiscountsFetched();

  @override
  String toString() {
    return 'MarketplaceDiscountsEvent.userDiscountsFetched()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_UserDiscountsFetched);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int availableRaverCoins) stateInitialized,
    required TResult Function() availableDiscountsFetched,
    required TResult Function() nextPageAvailableDiscountsFetched,
    required TResult Function() userDiscountsFetched,
    required TResult Function() nextPageUserDiscountsFetched,
    required TResult Function(MarketplaceDiscount discount) discountRedeemed,
  }) {
    return userDiscountsFetched();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int availableRaverCoins)? stateInitialized,
    TResult? Function()? availableDiscountsFetched,
    TResult? Function()? nextPageAvailableDiscountsFetched,
    TResult? Function()? userDiscountsFetched,
    TResult? Function()? nextPageUserDiscountsFetched,
    TResult? Function(MarketplaceDiscount discount)? discountRedeemed,
  }) {
    return userDiscountsFetched?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int availableRaverCoins)? stateInitialized,
    TResult Function()? availableDiscountsFetched,
    TResult Function()? nextPageAvailableDiscountsFetched,
    TResult Function()? userDiscountsFetched,
    TResult Function()? nextPageUserDiscountsFetched,
    TResult Function(MarketplaceDiscount discount)? discountRedeemed,
    required TResult orElse(),
  }) {
    if (userDiscountsFetched != null) {
      return userDiscountsFetched();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StateInitialized value) stateInitialized,
    required TResult Function(_AvailableDiscountsFetched value)
        availableDiscountsFetched,
    required TResult Function(_NextPageAvailableDiscountsFetched value)
        nextPageAvailableDiscountsFetched,
    required TResult Function(_UserDiscountsFetched value) userDiscountsFetched,
    required TResult Function(_NextPageUserDiscountsFetched value)
        nextPageUserDiscountsFetched,
    required TResult Function(_DiscountRedeemed value) discountRedeemed,
  }) {
    return userDiscountsFetched(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StateInitialized value)? stateInitialized,
    TResult? Function(_AvailableDiscountsFetched value)?
        availableDiscountsFetched,
    TResult? Function(_NextPageAvailableDiscountsFetched value)?
        nextPageAvailableDiscountsFetched,
    TResult? Function(_UserDiscountsFetched value)? userDiscountsFetched,
    TResult? Function(_NextPageUserDiscountsFetched value)?
        nextPageUserDiscountsFetched,
    TResult? Function(_DiscountRedeemed value)? discountRedeemed,
  }) {
    return userDiscountsFetched?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StateInitialized value)? stateInitialized,
    TResult Function(_AvailableDiscountsFetched value)?
        availableDiscountsFetched,
    TResult Function(_NextPageAvailableDiscountsFetched value)?
        nextPageAvailableDiscountsFetched,
    TResult Function(_UserDiscountsFetched value)? userDiscountsFetched,
    TResult Function(_NextPageUserDiscountsFetched value)?
        nextPageUserDiscountsFetched,
    TResult Function(_DiscountRedeemed value)? discountRedeemed,
    required TResult orElse(),
  }) {
    if (userDiscountsFetched != null) {
      return userDiscountsFetched(this);
    }
    return orElse();
  }
}

abstract class _UserDiscountsFetched implements MarketplaceDiscountsEvent {
  const factory _UserDiscountsFetched() = _$_UserDiscountsFetched;
}

/// @nodoc
abstract class _$$_NextPageUserDiscountsFetchedCopyWith<$Res> {
  factory _$$_NextPageUserDiscountsFetchedCopyWith(
          _$_NextPageUserDiscountsFetched value,
          $Res Function(_$_NextPageUserDiscountsFetched) then) =
      __$$_NextPageUserDiscountsFetchedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_NextPageUserDiscountsFetchedCopyWithImpl<$Res>
    extends _$MarketplaceDiscountsEventCopyWithImpl<$Res,
        _$_NextPageUserDiscountsFetched>
    implements _$$_NextPageUserDiscountsFetchedCopyWith<$Res> {
  __$$_NextPageUserDiscountsFetchedCopyWithImpl(
      _$_NextPageUserDiscountsFetched _value,
      $Res Function(_$_NextPageUserDiscountsFetched) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_NextPageUserDiscountsFetched implements _NextPageUserDiscountsFetched {
  const _$_NextPageUserDiscountsFetched();

  @override
  String toString() {
    return 'MarketplaceDiscountsEvent.nextPageUserDiscountsFetched()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NextPageUserDiscountsFetched);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int availableRaverCoins) stateInitialized,
    required TResult Function() availableDiscountsFetched,
    required TResult Function() nextPageAvailableDiscountsFetched,
    required TResult Function() userDiscountsFetched,
    required TResult Function() nextPageUserDiscountsFetched,
    required TResult Function(MarketplaceDiscount discount) discountRedeemed,
  }) {
    return nextPageUserDiscountsFetched();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int availableRaverCoins)? stateInitialized,
    TResult? Function()? availableDiscountsFetched,
    TResult? Function()? nextPageAvailableDiscountsFetched,
    TResult? Function()? userDiscountsFetched,
    TResult? Function()? nextPageUserDiscountsFetched,
    TResult? Function(MarketplaceDiscount discount)? discountRedeemed,
  }) {
    return nextPageUserDiscountsFetched?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int availableRaverCoins)? stateInitialized,
    TResult Function()? availableDiscountsFetched,
    TResult Function()? nextPageAvailableDiscountsFetched,
    TResult Function()? userDiscountsFetched,
    TResult Function()? nextPageUserDiscountsFetched,
    TResult Function(MarketplaceDiscount discount)? discountRedeemed,
    required TResult orElse(),
  }) {
    if (nextPageUserDiscountsFetched != null) {
      return nextPageUserDiscountsFetched();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StateInitialized value) stateInitialized,
    required TResult Function(_AvailableDiscountsFetched value)
        availableDiscountsFetched,
    required TResult Function(_NextPageAvailableDiscountsFetched value)
        nextPageAvailableDiscountsFetched,
    required TResult Function(_UserDiscountsFetched value) userDiscountsFetched,
    required TResult Function(_NextPageUserDiscountsFetched value)
        nextPageUserDiscountsFetched,
    required TResult Function(_DiscountRedeemed value) discountRedeemed,
  }) {
    return nextPageUserDiscountsFetched(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StateInitialized value)? stateInitialized,
    TResult? Function(_AvailableDiscountsFetched value)?
        availableDiscountsFetched,
    TResult? Function(_NextPageAvailableDiscountsFetched value)?
        nextPageAvailableDiscountsFetched,
    TResult? Function(_UserDiscountsFetched value)? userDiscountsFetched,
    TResult? Function(_NextPageUserDiscountsFetched value)?
        nextPageUserDiscountsFetched,
    TResult? Function(_DiscountRedeemed value)? discountRedeemed,
  }) {
    return nextPageUserDiscountsFetched?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StateInitialized value)? stateInitialized,
    TResult Function(_AvailableDiscountsFetched value)?
        availableDiscountsFetched,
    TResult Function(_NextPageAvailableDiscountsFetched value)?
        nextPageAvailableDiscountsFetched,
    TResult Function(_UserDiscountsFetched value)? userDiscountsFetched,
    TResult Function(_NextPageUserDiscountsFetched value)?
        nextPageUserDiscountsFetched,
    TResult Function(_DiscountRedeemed value)? discountRedeemed,
    required TResult orElse(),
  }) {
    if (nextPageUserDiscountsFetched != null) {
      return nextPageUserDiscountsFetched(this);
    }
    return orElse();
  }
}

abstract class _NextPageUserDiscountsFetched
    implements MarketplaceDiscountsEvent {
  const factory _NextPageUserDiscountsFetched() =
      _$_NextPageUserDiscountsFetched;
}

/// @nodoc
abstract class _$$_DiscountRedeemedCopyWith<$Res> {
  factory _$$_DiscountRedeemedCopyWith(
          _$_DiscountRedeemed value, $Res Function(_$_DiscountRedeemed) then) =
      __$$_DiscountRedeemedCopyWithImpl<$Res>;
  @useResult
  $Res call({MarketplaceDiscount discount});
}

/// @nodoc
class __$$_DiscountRedeemedCopyWithImpl<$Res>
    extends _$MarketplaceDiscountsEventCopyWithImpl<$Res, _$_DiscountRedeemed>
    implements _$$_DiscountRedeemedCopyWith<$Res> {
  __$$_DiscountRedeemedCopyWithImpl(
      _$_DiscountRedeemed _value, $Res Function(_$_DiscountRedeemed) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? discount = null,
  }) {
    return _then(_$_DiscountRedeemed(
      null == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as MarketplaceDiscount,
    ));
  }
}

/// @nodoc

class _$_DiscountRedeemed implements _DiscountRedeemed {
  const _$_DiscountRedeemed(this.discount);

  @override
  final MarketplaceDiscount discount;

  @override
  String toString() {
    return 'MarketplaceDiscountsEvent.discountRedeemed(discount: $discount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DiscountRedeemed &&
            (identical(other.discount, discount) ||
                other.discount == discount));
  }

  @override
  int get hashCode => Object.hash(runtimeType, discount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DiscountRedeemedCopyWith<_$_DiscountRedeemed> get copyWith =>
      __$$_DiscountRedeemedCopyWithImpl<_$_DiscountRedeemed>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int availableRaverCoins) stateInitialized,
    required TResult Function() availableDiscountsFetched,
    required TResult Function() nextPageAvailableDiscountsFetched,
    required TResult Function() userDiscountsFetched,
    required TResult Function() nextPageUserDiscountsFetched,
    required TResult Function(MarketplaceDiscount discount) discountRedeemed,
  }) {
    return discountRedeemed(discount);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int availableRaverCoins)? stateInitialized,
    TResult? Function()? availableDiscountsFetched,
    TResult? Function()? nextPageAvailableDiscountsFetched,
    TResult? Function()? userDiscountsFetched,
    TResult? Function()? nextPageUserDiscountsFetched,
    TResult? Function(MarketplaceDiscount discount)? discountRedeemed,
  }) {
    return discountRedeemed?.call(discount);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int availableRaverCoins)? stateInitialized,
    TResult Function()? availableDiscountsFetched,
    TResult Function()? nextPageAvailableDiscountsFetched,
    TResult Function()? userDiscountsFetched,
    TResult Function()? nextPageUserDiscountsFetched,
    TResult Function(MarketplaceDiscount discount)? discountRedeemed,
    required TResult orElse(),
  }) {
    if (discountRedeemed != null) {
      return discountRedeemed(discount);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StateInitialized value) stateInitialized,
    required TResult Function(_AvailableDiscountsFetched value)
        availableDiscountsFetched,
    required TResult Function(_NextPageAvailableDiscountsFetched value)
        nextPageAvailableDiscountsFetched,
    required TResult Function(_UserDiscountsFetched value) userDiscountsFetched,
    required TResult Function(_NextPageUserDiscountsFetched value)
        nextPageUserDiscountsFetched,
    required TResult Function(_DiscountRedeemed value) discountRedeemed,
  }) {
    return discountRedeemed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StateInitialized value)? stateInitialized,
    TResult? Function(_AvailableDiscountsFetched value)?
        availableDiscountsFetched,
    TResult? Function(_NextPageAvailableDiscountsFetched value)?
        nextPageAvailableDiscountsFetched,
    TResult? Function(_UserDiscountsFetched value)? userDiscountsFetched,
    TResult? Function(_NextPageUserDiscountsFetched value)?
        nextPageUserDiscountsFetched,
    TResult? Function(_DiscountRedeemed value)? discountRedeemed,
  }) {
    return discountRedeemed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StateInitialized value)? stateInitialized,
    TResult Function(_AvailableDiscountsFetched value)?
        availableDiscountsFetched,
    TResult Function(_NextPageAvailableDiscountsFetched value)?
        nextPageAvailableDiscountsFetched,
    TResult Function(_UserDiscountsFetched value)? userDiscountsFetched,
    TResult Function(_NextPageUserDiscountsFetched value)?
        nextPageUserDiscountsFetched,
    TResult Function(_DiscountRedeemed value)? discountRedeemed,
    required TResult orElse(),
  }) {
    if (discountRedeemed != null) {
      return discountRedeemed(this);
    }
    return orElse();
  }
}

abstract class _DiscountRedeemed implements MarketplaceDiscountsEvent {
  const factory _DiscountRedeemed(final MarketplaceDiscount discount) =
      _$_DiscountRedeemed;

  MarketplaceDiscount get discount;
  @JsonKey(ignore: true)
  _$$_DiscountRedeemedCopyWith<_$_DiscountRedeemed> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$MarketplaceDiscountsState {
  CubitStatus get getAvailableDiscountsStatus =>
      throw _privateConstructorUsedError;
  CubitStatus get fetchNextPageAvailableDiscountsStatus =>
      throw _privateConstructorUsedError;
  bool get hasReachedEndOfAvailableDiscounts =>
      throw _privateConstructorUsedError;
  List<MarketplaceDiscount> get availableDiscounts =>
      throw _privateConstructorUsedError;
  CubitStatus get getUserDiscountsStatus => throw _privateConstructorUsedError;
  CubitStatus get fetchNextPageUserDiscountsStatus =>
      throw _privateConstructorUsedError;
  bool get hasReachedEndOfUserDiscounts => throw _privateConstructorUsedError;
  List<UserMarketplaceDiscount> get userDiscounts =>
      throw _privateConstructorUsedError;
  int get availableRaverCoins => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MarketplaceDiscountsStateCopyWith<MarketplaceDiscountsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MarketplaceDiscountsStateCopyWith<$Res> {
  factory $MarketplaceDiscountsStateCopyWith(MarketplaceDiscountsState value,
          $Res Function(MarketplaceDiscountsState) then) =
      _$MarketplaceDiscountsStateCopyWithImpl<$Res, MarketplaceDiscountsState>;
  @useResult
  $Res call(
      {CubitStatus getAvailableDiscountsStatus,
      CubitStatus fetchNextPageAvailableDiscountsStatus,
      bool hasReachedEndOfAvailableDiscounts,
      List<MarketplaceDiscount> availableDiscounts,
      CubitStatus getUserDiscountsStatus,
      CubitStatus fetchNextPageUserDiscountsStatus,
      bool hasReachedEndOfUserDiscounts,
      List<UserMarketplaceDiscount> userDiscounts,
      int availableRaverCoins});
}

/// @nodoc
class _$MarketplaceDiscountsStateCopyWithImpl<$Res,
        $Val extends MarketplaceDiscountsState>
    implements $MarketplaceDiscountsStateCopyWith<$Res> {
  _$MarketplaceDiscountsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? getAvailableDiscountsStatus = null,
    Object? fetchNextPageAvailableDiscountsStatus = null,
    Object? hasReachedEndOfAvailableDiscounts = null,
    Object? availableDiscounts = null,
    Object? getUserDiscountsStatus = null,
    Object? fetchNextPageUserDiscountsStatus = null,
    Object? hasReachedEndOfUserDiscounts = null,
    Object? userDiscounts = null,
    Object? availableRaverCoins = null,
  }) {
    return _then(_value.copyWith(
      getAvailableDiscountsStatus: null == getAvailableDiscountsStatus
          ? _value.getAvailableDiscountsStatus
          : getAvailableDiscountsStatus // ignore: cast_nullable_to_non_nullable
              as CubitStatus,
      fetchNextPageAvailableDiscountsStatus: null ==
              fetchNextPageAvailableDiscountsStatus
          ? _value.fetchNextPageAvailableDiscountsStatus
          : fetchNextPageAvailableDiscountsStatus // ignore: cast_nullable_to_non_nullable
              as CubitStatus,
      hasReachedEndOfAvailableDiscounts: null ==
              hasReachedEndOfAvailableDiscounts
          ? _value.hasReachedEndOfAvailableDiscounts
          : hasReachedEndOfAvailableDiscounts // ignore: cast_nullable_to_non_nullable
              as bool,
      availableDiscounts: null == availableDiscounts
          ? _value.availableDiscounts
          : availableDiscounts // ignore: cast_nullable_to_non_nullable
              as List<MarketplaceDiscount>,
      getUserDiscountsStatus: null == getUserDiscountsStatus
          ? _value.getUserDiscountsStatus
          : getUserDiscountsStatus // ignore: cast_nullable_to_non_nullable
              as CubitStatus,
      fetchNextPageUserDiscountsStatus: null == fetchNextPageUserDiscountsStatus
          ? _value.fetchNextPageUserDiscountsStatus
          : fetchNextPageUserDiscountsStatus // ignore: cast_nullable_to_non_nullable
              as CubitStatus,
      hasReachedEndOfUserDiscounts: null == hasReachedEndOfUserDiscounts
          ? _value.hasReachedEndOfUserDiscounts
          : hasReachedEndOfUserDiscounts // ignore: cast_nullable_to_non_nullable
              as bool,
      userDiscounts: null == userDiscounts
          ? _value.userDiscounts
          : userDiscounts // ignore: cast_nullable_to_non_nullable
              as List<UserMarketplaceDiscount>,
      availableRaverCoins: null == availableRaverCoins
          ? _value.availableRaverCoins
          : availableRaverCoins // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MarketplaceDiscountsStateCopyWith<$Res>
    implements $MarketplaceDiscountsStateCopyWith<$Res> {
  factory _$$_MarketplaceDiscountsStateCopyWith(
          _$_MarketplaceDiscountsState value,
          $Res Function(_$_MarketplaceDiscountsState) then) =
      __$$_MarketplaceDiscountsStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {CubitStatus getAvailableDiscountsStatus,
      CubitStatus fetchNextPageAvailableDiscountsStatus,
      bool hasReachedEndOfAvailableDiscounts,
      List<MarketplaceDiscount> availableDiscounts,
      CubitStatus getUserDiscountsStatus,
      CubitStatus fetchNextPageUserDiscountsStatus,
      bool hasReachedEndOfUserDiscounts,
      List<UserMarketplaceDiscount> userDiscounts,
      int availableRaverCoins});
}

/// @nodoc
class __$$_MarketplaceDiscountsStateCopyWithImpl<$Res>
    extends _$MarketplaceDiscountsStateCopyWithImpl<$Res,
        _$_MarketplaceDiscountsState>
    implements _$$_MarketplaceDiscountsStateCopyWith<$Res> {
  __$$_MarketplaceDiscountsStateCopyWithImpl(
      _$_MarketplaceDiscountsState _value,
      $Res Function(_$_MarketplaceDiscountsState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? getAvailableDiscountsStatus = null,
    Object? fetchNextPageAvailableDiscountsStatus = null,
    Object? hasReachedEndOfAvailableDiscounts = null,
    Object? availableDiscounts = null,
    Object? getUserDiscountsStatus = null,
    Object? fetchNextPageUserDiscountsStatus = null,
    Object? hasReachedEndOfUserDiscounts = null,
    Object? userDiscounts = null,
    Object? availableRaverCoins = null,
  }) {
    return _then(_$_MarketplaceDiscountsState(
      getAvailableDiscountsStatus: null == getAvailableDiscountsStatus
          ? _value.getAvailableDiscountsStatus
          : getAvailableDiscountsStatus // ignore: cast_nullable_to_non_nullable
              as CubitStatus,
      fetchNextPageAvailableDiscountsStatus: null ==
              fetchNextPageAvailableDiscountsStatus
          ? _value.fetchNextPageAvailableDiscountsStatus
          : fetchNextPageAvailableDiscountsStatus // ignore: cast_nullable_to_non_nullable
              as CubitStatus,
      hasReachedEndOfAvailableDiscounts: null ==
              hasReachedEndOfAvailableDiscounts
          ? _value.hasReachedEndOfAvailableDiscounts
          : hasReachedEndOfAvailableDiscounts // ignore: cast_nullable_to_non_nullable
              as bool,
      availableDiscounts: null == availableDiscounts
          ? _value._availableDiscounts
          : availableDiscounts // ignore: cast_nullable_to_non_nullable
              as List<MarketplaceDiscount>,
      getUserDiscountsStatus: null == getUserDiscountsStatus
          ? _value.getUserDiscountsStatus
          : getUserDiscountsStatus // ignore: cast_nullable_to_non_nullable
              as CubitStatus,
      fetchNextPageUserDiscountsStatus: null == fetchNextPageUserDiscountsStatus
          ? _value.fetchNextPageUserDiscountsStatus
          : fetchNextPageUserDiscountsStatus // ignore: cast_nullable_to_non_nullable
              as CubitStatus,
      hasReachedEndOfUserDiscounts: null == hasReachedEndOfUserDiscounts
          ? _value.hasReachedEndOfUserDiscounts
          : hasReachedEndOfUserDiscounts // ignore: cast_nullable_to_non_nullable
              as bool,
      userDiscounts: null == userDiscounts
          ? _value._userDiscounts
          : userDiscounts // ignore: cast_nullable_to_non_nullable
              as List<UserMarketplaceDiscount>,
      availableRaverCoins: null == availableRaverCoins
          ? _value.availableRaverCoins
          : availableRaverCoins // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_MarketplaceDiscountsState implements _MarketplaceDiscountsState {
  const _$_MarketplaceDiscountsState(
      {required this.getAvailableDiscountsStatus,
      required this.fetchNextPageAvailableDiscountsStatus,
      required this.hasReachedEndOfAvailableDiscounts,
      required final List<MarketplaceDiscount> availableDiscounts,
      required this.getUserDiscountsStatus,
      required this.fetchNextPageUserDiscountsStatus,
      required this.hasReachedEndOfUserDiscounts,
      required final List<UserMarketplaceDiscount> userDiscounts,
      required this.availableRaverCoins})
      : _availableDiscounts = availableDiscounts,
        _userDiscounts = userDiscounts;

  @override
  final CubitStatus getAvailableDiscountsStatus;
  @override
  final CubitStatus fetchNextPageAvailableDiscountsStatus;
  @override
  final bool hasReachedEndOfAvailableDiscounts;
  final List<MarketplaceDiscount> _availableDiscounts;
  @override
  List<MarketplaceDiscount> get availableDiscounts {
    if (_availableDiscounts is EqualUnmodifiableListView)
      return _availableDiscounts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_availableDiscounts);
  }

  @override
  final CubitStatus getUserDiscountsStatus;
  @override
  final CubitStatus fetchNextPageUserDiscountsStatus;
  @override
  final bool hasReachedEndOfUserDiscounts;
  final List<UserMarketplaceDiscount> _userDiscounts;
  @override
  List<UserMarketplaceDiscount> get userDiscounts {
    if (_userDiscounts is EqualUnmodifiableListView) return _userDiscounts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_userDiscounts);
  }

  @override
  final int availableRaverCoins;

  @override
  String toString() {
    return 'MarketplaceDiscountsState(getAvailableDiscountsStatus: $getAvailableDiscountsStatus, fetchNextPageAvailableDiscountsStatus: $fetchNextPageAvailableDiscountsStatus, hasReachedEndOfAvailableDiscounts: $hasReachedEndOfAvailableDiscounts, availableDiscounts: $availableDiscounts, getUserDiscountsStatus: $getUserDiscountsStatus, fetchNextPageUserDiscountsStatus: $fetchNextPageUserDiscountsStatus, hasReachedEndOfUserDiscounts: $hasReachedEndOfUserDiscounts, userDiscounts: $userDiscounts, availableRaverCoins: $availableRaverCoins)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MarketplaceDiscountsState &&
            (identical(other.getAvailableDiscountsStatus, getAvailableDiscountsStatus) ||
                other.getAvailableDiscountsStatus ==
                    getAvailableDiscountsStatus) &&
            (identical(other.fetchNextPageAvailableDiscountsStatus,
                    fetchNextPageAvailableDiscountsStatus) ||
                other.fetchNextPageAvailableDiscountsStatus ==
                    fetchNextPageAvailableDiscountsStatus) &&
            (identical(other.hasReachedEndOfAvailableDiscounts,
                    hasReachedEndOfAvailableDiscounts) ||
                other.hasReachedEndOfAvailableDiscounts ==
                    hasReachedEndOfAvailableDiscounts) &&
            const DeepCollectionEquality()
                .equals(other._availableDiscounts, _availableDiscounts) &&
            (identical(other.getUserDiscountsStatus, getUserDiscountsStatus) ||
                other.getUserDiscountsStatus == getUserDiscountsStatus) &&
            (identical(other.fetchNextPageUserDiscountsStatus,
                    fetchNextPageUserDiscountsStatus) ||
                other.fetchNextPageUserDiscountsStatus ==
                    fetchNextPageUserDiscountsStatus) &&
            (identical(other.hasReachedEndOfUserDiscounts,
                    hasReachedEndOfUserDiscounts) ||
                other.hasReachedEndOfUserDiscounts ==
                    hasReachedEndOfUserDiscounts) &&
            const DeepCollectionEquality()
                .equals(other._userDiscounts, _userDiscounts) &&
            (identical(other.availableRaverCoins, availableRaverCoins) ||
                other.availableRaverCoins == availableRaverCoins));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      getAvailableDiscountsStatus,
      fetchNextPageAvailableDiscountsStatus,
      hasReachedEndOfAvailableDiscounts,
      const DeepCollectionEquality().hash(_availableDiscounts),
      getUserDiscountsStatus,
      fetchNextPageUserDiscountsStatus,
      hasReachedEndOfUserDiscounts,
      const DeepCollectionEquality().hash(_userDiscounts),
      availableRaverCoins);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MarketplaceDiscountsStateCopyWith<_$_MarketplaceDiscountsState>
      get copyWith => __$$_MarketplaceDiscountsStateCopyWithImpl<
          _$_MarketplaceDiscountsState>(this, _$identity);
}

abstract class _MarketplaceDiscountsState implements MarketplaceDiscountsState {
  const factory _MarketplaceDiscountsState(
      {required final CubitStatus getAvailableDiscountsStatus,
      required final CubitStatus fetchNextPageAvailableDiscountsStatus,
      required final bool hasReachedEndOfAvailableDiscounts,
      required final List<MarketplaceDiscount> availableDiscounts,
      required final CubitStatus getUserDiscountsStatus,
      required final CubitStatus fetchNextPageUserDiscountsStatus,
      required final bool hasReachedEndOfUserDiscounts,
      required final List<UserMarketplaceDiscount> userDiscounts,
      required final int availableRaverCoins}) = _$_MarketplaceDiscountsState;

  @override
  CubitStatus get getAvailableDiscountsStatus;
  @override
  CubitStatus get fetchNextPageAvailableDiscountsStatus;
  @override
  bool get hasReachedEndOfAvailableDiscounts;
  @override
  List<MarketplaceDiscount> get availableDiscounts;
  @override
  CubitStatus get getUserDiscountsStatus;
  @override
  CubitStatus get fetchNextPageUserDiscountsStatus;
  @override
  bool get hasReachedEndOfUserDiscounts;
  @override
  List<UserMarketplaceDiscount> get userDiscounts;
  @override
  int get availableRaverCoins;
  @override
  @JsonKey(ignore: true)
  _$$_MarketplaceDiscountsStateCopyWith<_$_MarketplaceDiscountsState>
      get copyWith => throw _privateConstructorUsedError;
}
