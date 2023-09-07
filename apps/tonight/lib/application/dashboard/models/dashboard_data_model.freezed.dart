// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dashboard_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DashboardData {
  List<TonightEvent> get tonightEvents => throw _privateConstructorUsedError;
  List<MarketplaceDiscount> get marketplaceDiscounts =>
      throw _privateConstructorUsedError;
  Option<UserAccount> get currentUser => throw _privateConstructorUsedError;
  List<UserStoriesWithInteractions> get currentUserStories =>
      throw _privateConstructorUsedError;
  List<UserStoriesWithInteractions> get otherUsersStories =>
      throw _privateConstructorUsedError;
  int get periodNumber => throw _privateConstructorUsedError;

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
      {List<TonightEvent> tonightEvents,
      List<MarketplaceDiscount> marketplaceDiscounts,
      Option<UserAccount> currentUser,
      List<UserStoriesWithInteractions> currentUserStories,
      List<UserStoriesWithInteractions> otherUsersStories,
      int periodNumber});
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
    Object? currentUser = null,
    Object? currentUserStories = null,
    Object? otherUsersStories = null,
    Object? periodNumber = null,
  }) {
    return _then(_value.copyWith(
      tonightEvents: null == tonightEvents
          ? _value.tonightEvents
          : tonightEvents // ignore: cast_nullable_to_non_nullable
              as List<TonightEvent>,
      marketplaceDiscounts: null == marketplaceDiscounts
          ? _value.marketplaceDiscounts
          : marketplaceDiscounts // ignore: cast_nullable_to_non_nullable
              as List<MarketplaceDiscount>,
      currentUser: null == currentUser
          ? _value.currentUser
          : currentUser // ignore: cast_nullable_to_non_nullable
              as Option<UserAccount>,
      currentUserStories: null == currentUserStories
          ? _value.currentUserStories
          : currentUserStories // ignore: cast_nullable_to_non_nullable
              as List<UserStoriesWithInteractions>,
      otherUsersStories: null == otherUsersStories
          ? _value.otherUsersStories
          : otherUsersStories // ignore: cast_nullable_to_non_nullable
              as List<UserStoriesWithInteractions>,
      periodNumber: null == periodNumber
          ? _value.periodNumber
          : periodNumber // ignore: cast_nullable_to_non_nullable
              as int,
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
      {List<TonightEvent> tonightEvents,
      List<MarketplaceDiscount> marketplaceDiscounts,
      Option<UserAccount> currentUser,
      List<UserStoriesWithInteractions> currentUserStories,
      List<UserStoriesWithInteractions> otherUsersStories,
      int periodNumber});
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
    Object? currentUser = null,
    Object? currentUserStories = null,
    Object? otherUsersStories = null,
    Object? periodNumber = null,
  }) {
    return _then(_$_DashboardData(
      tonightEvents: null == tonightEvents
          ? _value._tonightEvents
          : tonightEvents // ignore: cast_nullable_to_non_nullable
              as List<TonightEvent>,
      marketplaceDiscounts: null == marketplaceDiscounts
          ? _value._marketplaceDiscounts
          : marketplaceDiscounts // ignore: cast_nullable_to_non_nullable
              as List<MarketplaceDiscount>,
      currentUser: null == currentUser
          ? _value.currentUser
          : currentUser // ignore: cast_nullable_to_non_nullable
              as Option<UserAccount>,
      currentUserStories: null == currentUserStories
          ? _value._currentUserStories
          : currentUserStories // ignore: cast_nullable_to_non_nullable
              as List<UserStoriesWithInteractions>,
      otherUsersStories: null == otherUsersStories
          ? _value._otherUsersStories
          : otherUsersStories // ignore: cast_nullable_to_non_nullable
              as List<UserStoriesWithInteractions>,
      periodNumber: null == periodNumber
          ? _value.periodNumber
          : periodNumber // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_DashboardData implements _DashboardData {
  const _$_DashboardData(
      {required final List<TonightEvent> tonightEvents,
      required final List<MarketplaceDiscount> marketplaceDiscounts,
      required this.currentUser,
      required final List<UserStoriesWithInteractions> currentUserStories,
      required final List<UserStoriesWithInteractions> otherUsersStories,
      required this.periodNumber})
      : _tonightEvents = tonightEvents,
        _marketplaceDiscounts = marketplaceDiscounts,
        _currentUserStories = currentUserStories,
        _otherUsersStories = otherUsersStories;

  final List<TonightEvent> _tonightEvents;
  @override
  List<TonightEvent> get tonightEvents {
    if (_tonightEvents is EqualUnmodifiableListView) return _tonightEvents;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tonightEvents);
  }

  final List<MarketplaceDiscount> _marketplaceDiscounts;
  @override
  List<MarketplaceDiscount> get marketplaceDiscounts {
    if (_marketplaceDiscounts is EqualUnmodifiableListView)
      return _marketplaceDiscounts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_marketplaceDiscounts);
  }

  @override
  final Option<UserAccount> currentUser;
  final List<UserStoriesWithInteractions> _currentUserStories;
  @override
  List<UserStoriesWithInteractions> get currentUserStories {
    if (_currentUserStories is EqualUnmodifiableListView)
      return _currentUserStories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_currentUserStories);
  }

  final List<UserStoriesWithInteractions> _otherUsersStories;
  @override
  List<UserStoriesWithInteractions> get otherUsersStories {
    if (_otherUsersStories is EqualUnmodifiableListView)
      return _otherUsersStories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_otherUsersStories);
  }

  @override
  final int periodNumber;

  @override
  String toString() {
    return 'DashboardData(tonightEvents: $tonightEvents, marketplaceDiscounts: $marketplaceDiscounts, currentUser: $currentUser, currentUserStories: $currentUserStories, otherUsersStories: $otherUsersStories, periodNumber: $periodNumber)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DashboardData &&
            const DeepCollectionEquality()
                .equals(other._tonightEvents, _tonightEvents) &&
            const DeepCollectionEquality()
                .equals(other._marketplaceDiscounts, _marketplaceDiscounts) &&
            (identical(other.currentUser, currentUser) ||
                other.currentUser == currentUser) &&
            const DeepCollectionEquality()
                .equals(other._currentUserStories, _currentUserStories) &&
            const DeepCollectionEquality()
                .equals(other._otherUsersStories, _otherUsersStories) &&
            (identical(other.periodNumber, periodNumber) ||
                other.periodNumber == periodNumber));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_tonightEvents),
      const DeepCollectionEquality().hash(_marketplaceDiscounts),
      currentUser,
      const DeepCollectionEquality().hash(_currentUserStories),
      const DeepCollectionEquality().hash(_otherUsersStories),
      periodNumber);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DashboardDataCopyWith<_$_DashboardData> get copyWith =>
      __$$_DashboardDataCopyWithImpl<_$_DashboardData>(this, _$identity);
}

abstract class _DashboardData implements DashboardData {
  const factory _DashboardData(
      {required final List<TonightEvent> tonightEvents,
      required final List<MarketplaceDiscount> marketplaceDiscounts,
      required final Option<UserAccount> currentUser,
      required final List<UserStoriesWithInteractions> currentUserStories,
      required final List<UserStoriesWithInteractions> otherUsersStories,
      required final int periodNumber}) = _$_DashboardData;

  @override
  List<TonightEvent> get tonightEvents;
  @override
  List<MarketplaceDiscount> get marketplaceDiscounts;
  @override
  Option<UserAccount> get currentUser;
  @override
  List<UserStoriesWithInteractions> get currentUserStories;
  @override
  List<UserStoriesWithInteractions> get otherUsersStories;
  @override
  int get periodNumber;
  @override
  @JsonKey(ignore: true)
  _$$_DashboardDataCopyWith<_$_DashboardData> get copyWith =>
      throw _privateConstructorUsedError;
}
