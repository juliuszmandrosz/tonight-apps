// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'discounts_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DiscountsState {
  CubitStatus get status => throw _privateConstructorUsedError;
  Option<ClubSales> get clubSales => throw _privateConstructorUsedError;
  List<PartnerDiscount> get discounts => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DiscountsStateCopyWith<DiscountsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DiscountsStateCopyWith<$Res> {
  factory $DiscountsStateCopyWith(
          DiscountsState value, $Res Function(DiscountsState) then) =
      _$DiscountsStateCopyWithImpl<$Res>;
  $Res call(
      {CubitStatus status,
      Option<ClubSales> clubSales,
      List<PartnerDiscount> discounts});
}

/// @nodoc
class _$DiscountsStateCopyWithImpl<$Res>
    implements $DiscountsStateCopyWith<$Res> {
  _$DiscountsStateCopyWithImpl(this._value, this._then);

  final DiscountsState _value;
  // ignore: unused_field
  final $Res Function(DiscountsState) _then;

  @override
  $Res call({
    Object? status = freezed,
    Object? clubSales = freezed,
    Object? discounts = freezed,
  }) {
    return _then(_value.copyWith(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as CubitStatus,
      clubSales: clubSales == freezed
          ? _value.clubSales
          : clubSales // ignore: cast_nullable_to_non_nullable
              as Option<ClubSales>,
      discounts: discounts == freezed
          ? _value.discounts
          : discounts // ignore: cast_nullable_to_non_nullable
              as List<PartnerDiscount>,
    ));
  }
}

/// @nodoc
abstract class _$$_DiscountsStateCopyWith<$Res>
    implements $DiscountsStateCopyWith<$Res> {
  factory _$$_DiscountsStateCopyWith(
          _$_DiscountsState value, $Res Function(_$_DiscountsState) then) =
      __$$_DiscountsStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {CubitStatus status,
      Option<ClubSales> clubSales,
      List<PartnerDiscount> discounts});
}

/// @nodoc
class __$$_DiscountsStateCopyWithImpl<$Res>
    extends _$DiscountsStateCopyWithImpl<$Res>
    implements _$$_DiscountsStateCopyWith<$Res> {
  __$$_DiscountsStateCopyWithImpl(
      _$_DiscountsState _value, $Res Function(_$_DiscountsState) _then)
      : super(_value, (v) => _then(v as _$_DiscountsState));

  @override
  _$_DiscountsState get _value => super._value as _$_DiscountsState;

  @override
  $Res call({
    Object? status = freezed,
    Object? clubSales = freezed,
    Object? discounts = freezed,
  }) {
    return _then(_$_DiscountsState(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as CubitStatus,
      clubSales: clubSales == freezed
          ? _value.clubSales
          : clubSales // ignore: cast_nullable_to_non_nullable
              as Option<ClubSales>,
      discounts: discounts == freezed
          ? _value._discounts
          : discounts // ignore: cast_nullable_to_non_nullable
              as List<PartnerDiscount>,
    ));
  }
}

/// @nodoc

class _$_DiscountsState implements _DiscountsState {
  const _$_DiscountsState(
      {required this.status,
      required this.clubSales,
      required final List<PartnerDiscount> discounts})
      : _discounts = discounts;

  @override
  final CubitStatus status;
  @override
  final Option<ClubSales> clubSales;
  final List<PartnerDiscount> _discounts;
  @override
  List<PartnerDiscount> get discounts {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_discounts);
  }

  @override
  String toString() {
    return 'DiscountsState(status: $status, clubSales: $clubSales, discounts: $discounts)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DiscountsState &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality().equals(other.clubSales, clubSales) &&
            const DeepCollectionEquality()
                .equals(other._discounts, _discounts));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(clubSales),
      const DeepCollectionEquality().hash(_discounts));

  @JsonKey(ignore: true)
  @override
  _$$_DiscountsStateCopyWith<_$_DiscountsState> get copyWith =>
      __$$_DiscountsStateCopyWithImpl<_$_DiscountsState>(this, _$identity);
}

abstract class _DiscountsState implements DiscountsState {
  const factory _DiscountsState(
      {required final CubitStatus status,
      required final Option<ClubSales> clubSales,
      required final List<PartnerDiscount> discounts}) = _$_DiscountsState;

  @override
  CubitStatus get status;
  @override
  Option<ClubSales> get clubSales;
  @override
  List<PartnerDiscount> get discounts;
  @override
  @JsonKey(ignore: true)
  _$$_DiscountsStateCopyWith<_$_DiscountsState> get copyWith =>
      throw _privateConstructorUsedError;
}
