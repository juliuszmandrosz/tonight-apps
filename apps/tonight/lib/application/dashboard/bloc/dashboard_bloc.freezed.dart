// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dashboard_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DashboardEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<LatLng> userLocation) dataInitialized,
    required TResult Function(EventVoucher voucher) eventVoucherUsed,
    required TResult Function() nextPageChallengeStoriesFetched,
    required TResult Function(List<UserStoriesWithInteractions> stories)
        otherUserStoriesUpdated,
    required TResult Function(List<UserStoriesWithInteractions> stories)
        currentUserStoriesUpdated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Option<LatLng> userLocation)? dataInitialized,
    TResult? Function(EventVoucher voucher)? eventVoucherUsed,
    TResult? Function()? nextPageChallengeStoriesFetched,
    TResult? Function(List<UserStoriesWithInteractions> stories)?
        otherUserStoriesUpdated,
    TResult? Function(List<UserStoriesWithInteractions> stories)?
        currentUserStoriesUpdated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<LatLng> userLocation)? dataInitialized,
    TResult Function(EventVoucher voucher)? eventVoucherUsed,
    TResult Function()? nextPageChallengeStoriesFetched,
    TResult Function(List<UserStoriesWithInteractions> stories)?
        otherUserStoriesUpdated,
    TResult Function(List<UserStoriesWithInteractions> stories)?
        currentUserStoriesUpdated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DataInitialized value) dataInitialized,
    required TResult Function(_EventVoucherUsed value) eventVoucherUsed,
    required TResult Function(_NextPageChallengeStoriesFetched value)
        nextPageChallengeStoriesFetched,
    required TResult Function(_OtherUserStoriesUpdated value)
        otherUserStoriesUpdated,
    required TResult Function(_CurrentUserStoriesUpdated value)
        currentUserStoriesUpdated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DataInitialized value)? dataInitialized,
    TResult? Function(_EventVoucherUsed value)? eventVoucherUsed,
    TResult? Function(_NextPageChallengeStoriesFetched value)?
        nextPageChallengeStoriesFetched,
    TResult? Function(_OtherUserStoriesUpdated value)? otherUserStoriesUpdated,
    TResult? Function(_CurrentUserStoriesUpdated value)?
        currentUserStoriesUpdated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DataInitialized value)? dataInitialized,
    TResult Function(_EventVoucherUsed value)? eventVoucherUsed,
    TResult Function(_NextPageChallengeStoriesFetched value)?
        nextPageChallengeStoriesFetched,
    TResult Function(_OtherUserStoriesUpdated value)? otherUserStoriesUpdated,
    TResult Function(_CurrentUserStoriesUpdated value)?
        currentUserStoriesUpdated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DashboardEventCopyWith<$Res> {
  factory $DashboardEventCopyWith(
          DashboardEvent value, $Res Function(DashboardEvent) then) =
      _$DashboardEventCopyWithImpl<$Res, DashboardEvent>;
}

/// @nodoc
class _$DashboardEventCopyWithImpl<$Res, $Val extends DashboardEvent>
    implements $DashboardEventCopyWith<$Res> {
  _$DashboardEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_DataInitializedCopyWith<$Res> {
  factory _$$_DataInitializedCopyWith(
          _$_DataInitialized value, $Res Function(_$_DataInitialized) then) =
      __$$_DataInitializedCopyWithImpl<$Res>;
  @useResult
  $Res call({Option<LatLng> userLocation});
}

/// @nodoc
class __$$_DataInitializedCopyWithImpl<$Res>
    extends _$DashboardEventCopyWithImpl<$Res, _$_DataInitialized>
    implements _$$_DataInitializedCopyWith<$Res> {
  __$$_DataInitializedCopyWithImpl(
      _$_DataInitialized _value, $Res Function(_$_DataInitialized) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userLocation = null,
  }) {
    return _then(_$_DataInitialized(
      null == userLocation
          ? _value.userLocation
          : userLocation // ignore: cast_nullable_to_non_nullable
              as Option<LatLng>,
    ));
  }
}

/// @nodoc

class _$_DataInitialized implements _DataInitialized {
  const _$_DataInitialized(this.userLocation);

  @override
  final Option<LatLng> userLocation;

  @override
  String toString() {
    return 'DashboardEvent.dataInitialized(userLocation: $userLocation)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DataInitialized &&
            (identical(other.userLocation, userLocation) ||
                other.userLocation == userLocation));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userLocation);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DataInitializedCopyWith<_$_DataInitialized> get copyWith =>
      __$$_DataInitializedCopyWithImpl<_$_DataInitialized>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<LatLng> userLocation) dataInitialized,
    required TResult Function(EventVoucher voucher) eventVoucherUsed,
    required TResult Function() nextPageChallengeStoriesFetched,
    required TResult Function(List<UserStoriesWithInteractions> stories)
        otherUserStoriesUpdated,
    required TResult Function(List<UserStoriesWithInteractions> stories)
        currentUserStoriesUpdated,
  }) {
    return dataInitialized(userLocation);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Option<LatLng> userLocation)? dataInitialized,
    TResult? Function(EventVoucher voucher)? eventVoucherUsed,
    TResult? Function()? nextPageChallengeStoriesFetched,
    TResult? Function(List<UserStoriesWithInteractions> stories)?
        otherUserStoriesUpdated,
    TResult? Function(List<UserStoriesWithInteractions> stories)?
        currentUserStoriesUpdated,
  }) {
    return dataInitialized?.call(userLocation);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<LatLng> userLocation)? dataInitialized,
    TResult Function(EventVoucher voucher)? eventVoucherUsed,
    TResult Function()? nextPageChallengeStoriesFetched,
    TResult Function(List<UserStoriesWithInteractions> stories)?
        otherUserStoriesUpdated,
    TResult Function(List<UserStoriesWithInteractions> stories)?
        currentUserStoriesUpdated,
    required TResult orElse(),
  }) {
    if (dataInitialized != null) {
      return dataInitialized(userLocation);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DataInitialized value) dataInitialized,
    required TResult Function(_EventVoucherUsed value) eventVoucherUsed,
    required TResult Function(_NextPageChallengeStoriesFetched value)
        nextPageChallengeStoriesFetched,
    required TResult Function(_OtherUserStoriesUpdated value)
        otherUserStoriesUpdated,
    required TResult Function(_CurrentUserStoriesUpdated value)
        currentUserStoriesUpdated,
  }) {
    return dataInitialized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DataInitialized value)? dataInitialized,
    TResult? Function(_EventVoucherUsed value)? eventVoucherUsed,
    TResult? Function(_NextPageChallengeStoriesFetched value)?
        nextPageChallengeStoriesFetched,
    TResult? Function(_OtherUserStoriesUpdated value)? otherUserStoriesUpdated,
    TResult? Function(_CurrentUserStoriesUpdated value)?
        currentUserStoriesUpdated,
  }) {
    return dataInitialized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DataInitialized value)? dataInitialized,
    TResult Function(_EventVoucherUsed value)? eventVoucherUsed,
    TResult Function(_NextPageChallengeStoriesFetched value)?
        nextPageChallengeStoriesFetched,
    TResult Function(_OtherUserStoriesUpdated value)? otherUserStoriesUpdated,
    TResult Function(_CurrentUserStoriesUpdated value)?
        currentUserStoriesUpdated,
    required TResult orElse(),
  }) {
    if (dataInitialized != null) {
      return dataInitialized(this);
    }
    return orElse();
  }
}

abstract class _DataInitialized implements DashboardEvent {
  const factory _DataInitialized(final Option<LatLng> userLocation) =
      _$_DataInitialized;

  Option<LatLng> get userLocation;
  @JsonKey(ignore: true)
  _$$_DataInitializedCopyWith<_$_DataInitialized> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_EventVoucherUsedCopyWith<$Res> {
  factory _$$_EventVoucherUsedCopyWith(
          _$_EventVoucherUsed value, $Res Function(_$_EventVoucherUsed) then) =
      __$$_EventVoucherUsedCopyWithImpl<$Res>;
  @useResult
  $Res call({EventVoucher voucher});

  $EventVoucherCopyWith<$Res> get voucher;
}

/// @nodoc
class __$$_EventVoucherUsedCopyWithImpl<$Res>
    extends _$DashboardEventCopyWithImpl<$Res, _$_EventVoucherUsed>
    implements _$$_EventVoucherUsedCopyWith<$Res> {
  __$$_EventVoucherUsedCopyWithImpl(
      _$_EventVoucherUsed _value, $Res Function(_$_EventVoucherUsed) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? voucher = null,
  }) {
    return _then(_$_EventVoucherUsed(
      null == voucher
          ? _value.voucher
          : voucher // ignore: cast_nullable_to_non_nullable
              as EventVoucher,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $EventVoucherCopyWith<$Res> get voucher {
    return $EventVoucherCopyWith<$Res>(_value.voucher, (value) {
      return _then(_value.copyWith(voucher: value));
    });
  }
}

/// @nodoc

class _$_EventVoucherUsed implements _EventVoucherUsed {
  const _$_EventVoucherUsed(this.voucher);

  @override
  final EventVoucher voucher;

  @override
  String toString() {
    return 'DashboardEvent.eventVoucherUsed(voucher: $voucher)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EventVoucherUsed &&
            (identical(other.voucher, voucher) || other.voucher == voucher));
  }

  @override
  int get hashCode => Object.hash(runtimeType, voucher);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EventVoucherUsedCopyWith<_$_EventVoucherUsed> get copyWith =>
      __$$_EventVoucherUsedCopyWithImpl<_$_EventVoucherUsed>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<LatLng> userLocation) dataInitialized,
    required TResult Function(EventVoucher voucher) eventVoucherUsed,
    required TResult Function() nextPageChallengeStoriesFetched,
    required TResult Function(List<UserStoriesWithInteractions> stories)
        otherUserStoriesUpdated,
    required TResult Function(List<UserStoriesWithInteractions> stories)
        currentUserStoriesUpdated,
  }) {
    return eventVoucherUsed(voucher);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Option<LatLng> userLocation)? dataInitialized,
    TResult? Function(EventVoucher voucher)? eventVoucherUsed,
    TResult? Function()? nextPageChallengeStoriesFetched,
    TResult? Function(List<UserStoriesWithInteractions> stories)?
        otherUserStoriesUpdated,
    TResult? Function(List<UserStoriesWithInteractions> stories)?
        currentUserStoriesUpdated,
  }) {
    return eventVoucherUsed?.call(voucher);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<LatLng> userLocation)? dataInitialized,
    TResult Function(EventVoucher voucher)? eventVoucherUsed,
    TResult Function()? nextPageChallengeStoriesFetched,
    TResult Function(List<UserStoriesWithInteractions> stories)?
        otherUserStoriesUpdated,
    TResult Function(List<UserStoriesWithInteractions> stories)?
        currentUserStoriesUpdated,
    required TResult orElse(),
  }) {
    if (eventVoucherUsed != null) {
      return eventVoucherUsed(voucher);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DataInitialized value) dataInitialized,
    required TResult Function(_EventVoucherUsed value) eventVoucherUsed,
    required TResult Function(_NextPageChallengeStoriesFetched value)
        nextPageChallengeStoriesFetched,
    required TResult Function(_OtherUserStoriesUpdated value)
        otherUserStoriesUpdated,
    required TResult Function(_CurrentUserStoriesUpdated value)
        currentUserStoriesUpdated,
  }) {
    return eventVoucherUsed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DataInitialized value)? dataInitialized,
    TResult? Function(_EventVoucherUsed value)? eventVoucherUsed,
    TResult? Function(_NextPageChallengeStoriesFetched value)?
        nextPageChallengeStoriesFetched,
    TResult? Function(_OtherUserStoriesUpdated value)? otherUserStoriesUpdated,
    TResult? Function(_CurrentUserStoriesUpdated value)?
        currentUserStoriesUpdated,
  }) {
    return eventVoucherUsed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DataInitialized value)? dataInitialized,
    TResult Function(_EventVoucherUsed value)? eventVoucherUsed,
    TResult Function(_NextPageChallengeStoriesFetched value)?
        nextPageChallengeStoriesFetched,
    TResult Function(_OtherUserStoriesUpdated value)? otherUserStoriesUpdated,
    TResult Function(_CurrentUserStoriesUpdated value)?
        currentUserStoriesUpdated,
    required TResult orElse(),
  }) {
    if (eventVoucherUsed != null) {
      return eventVoucherUsed(this);
    }
    return orElse();
  }
}

abstract class _EventVoucherUsed implements DashboardEvent {
  const factory _EventVoucherUsed(final EventVoucher voucher) =
      _$_EventVoucherUsed;

  EventVoucher get voucher;
  @JsonKey(ignore: true)
  _$$_EventVoucherUsedCopyWith<_$_EventVoucherUsed> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_NextPageChallengeStoriesFetchedCopyWith<$Res> {
  factory _$$_NextPageChallengeStoriesFetchedCopyWith(
          _$_NextPageChallengeStoriesFetched value,
          $Res Function(_$_NextPageChallengeStoriesFetched) then) =
      __$$_NextPageChallengeStoriesFetchedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_NextPageChallengeStoriesFetchedCopyWithImpl<$Res>
    extends _$DashboardEventCopyWithImpl<$Res,
        _$_NextPageChallengeStoriesFetched>
    implements _$$_NextPageChallengeStoriesFetchedCopyWith<$Res> {
  __$$_NextPageChallengeStoriesFetchedCopyWithImpl(
      _$_NextPageChallengeStoriesFetched _value,
      $Res Function(_$_NextPageChallengeStoriesFetched) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_NextPageChallengeStoriesFetched
    implements _NextPageChallengeStoriesFetched {
  const _$_NextPageChallengeStoriesFetched();

  @override
  String toString() {
    return 'DashboardEvent.nextPageChallengeStoriesFetched()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NextPageChallengeStoriesFetched);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<LatLng> userLocation) dataInitialized,
    required TResult Function(EventVoucher voucher) eventVoucherUsed,
    required TResult Function() nextPageChallengeStoriesFetched,
    required TResult Function(List<UserStoriesWithInteractions> stories)
        otherUserStoriesUpdated,
    required TResult Function(List<UserStoriesWithInteractions> stories)
        currentUserStoriesUpdated,
  }) {
    return nextPageChallengeStoriesFetched();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Option<LatLng> userLocation)? dataInitialized,
    TResult? Function(EventVoucher voucher)? eventVoucherUsed,
    TResult? Function()? nextPageChallengeStoriesFetched,
    TResult? Function(List<UserStoriesWithInteractions> stories)?
        otherUserStoriesUpdated,
    TResult? Function(List<UserStoriesWithInteractions> stories)?
        currentUserStoriesUpdated,
  }) {
    return nextPageChallengeStoriesFetched?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<LatLng> userLocation)? dataInitialized,
    TResult Function(EventVoucher voucher)? eventVoucherUsed,
    TResult Function()? nextPageChallengeStoriesFetched,
    TResult Function(List<UserStoriesWithInteractions> stories)?
        otherUserStoriesUpdated,
    TResult Function(List<UserStoriesWithInteractions> stories)?
        currentUserStoriesUpdated,
    required TResult orElse(),
  }) {
    if (nextPageChallengeStoriesFetched != null) {
      return nextPageChallengeStoriesFetched();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DataInitialized value) dataInitialized,
    required TResult Function(_EventVoucherUsed value) eventVoucherUsed,
    required TResult Function(_NextPageChallengeStoriesFetched value)
        nextPageChallengeStoriesFetched,
    required TResult Function(_OtherUserStoriesUpdated value)
        otherUserStoriesUpdated,
    required TResult Function(_CurrentUserStoriesUpdated value)
        currentUserStoriesUpdated,
  }) {
    return nextPageChallengeStoriesFetched(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DataInitialized value)? dataInitialized,
    TResult? Function(_EventVoucherUsed value)? eventVoucherUsed,
    TResult? Function(_NextPageChallengeStoriesFetched value)?
        nextPageChallengeStoriesFetched,
    TResult? Function(_OtherUserStoriesUpdated value)? otherUserStoriesUpdated,
    TResult? Function(_CurrentUserStoriesUpdated value)?
        currentUserStoriesUpdated,
  }) {
    return nextPageChallengeStoriesFetched?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DataInitialized value)? dataInitialized,
    TResult Function(_EventVoucherUsed value)? eventVoucherUsed,
    TResult Function(_NextPageChallengeStoriesFetched value)?
        nextPageChallengeStoriesFetched,
    TResult Function(_OtherUserStoriesUpdated value)? otherUserStoriesUpdated,
    TResult Function(_CurrentUserStoriesUpdated value)?
        currentUserStoriesUpdated,
    required TResult orElse(),
  }) {
    if (nextPageChallengeStoriesFetched != null) {
      return nextPageChallengeStoriesFetched(this);
    }
    return orElse();
  }
}

abstract class _NextPageChallengeStoriesFetched implements DashboardEvent {
  const factory _NextPageChallengeStoriesFetched() =
      _$_NextPageChallengeStoriesFetched;
}

/// @nodoc
abstract class _$$_OtherUserStoriesUpdatedCopyWith<$Res> {
  factory _$$_OtherUserStoriesUpdatedCopyWith(_$_OtherUserStoriesUpdated value,
          $Res Function(_$_OtherUserStoriesUpdated) then) =
      __$$_OtherUserStoriesUpdatedCopyWithImpl<$Res>;
  @useResult
  $Res call({List<UserStoriesWithInteractions> stories});
}

/// @nodoc
class __$$_OtherUserStoriesUpdatedCopyWithImpl<$Res>
    extends _$DashboardEventCopyWithImpl<$Res, _$_OtherUserStoriesUpdated>
    implements _$$_OtherUserStoriesUpdatedCopyWith<$Res> {
  __$$_OtherUserStoriesUpdatedCopyWithImpl(_$_OtherUserStoriesUpdated _value,
      $Res Function(_$_OtherUserStoriesUpdated) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stories = null,
  }) {
    return _then(_$_OtherUserStoriesUpdated(
      null == stories
          ? _value._stories
          : stories // ignore: cast_nullable_to_non_nullable
              as List<UserStoriesWithInteractions>,
    ));
  }
}

/// @nodoc

class _$_OtherUserStoriesUpdated implements _OtherUserStoriesUpdated {
  const _$_OtherUserStoriesUpdated(
      final List<UserStoriesWithInteractions> stories)
      : _stories = stories;

  final List<UserStoriesWithInteractions> _stories;
  @override
  List<UserStoriesWithInteractions> get stories {
    if (_stories is EqualUnmodifiableListView) return _stories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_stories);
  }

  @override
  String toString() {
    return 'DashboardEvent.otherUserStoriesUpdated(stories: $stories)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OtherUserStoriesUpdated &&
            const DeepCollectionEquality().equals(other._stories, _stories));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_stories));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OtherUserStoriesUpdatedCopyWith<_$_OtherUserStoriesUpdated>
      get copyWith =>
          __$$_OtherUserStoriesUpdatedCopyWithImpl<_$_OtherUserStoriesUpdated>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<LatLng> userLocation) dataInitialized,
    required TResult Function(EventVoucher voucher) eventVoucherUsed,
    required TResult Function() nextPageChallengeStoriesFetched,
    required TResult Function(List<UserStoriesWithInteractions> stories)
        otherUserStoriesUpdated,
    required TResult Function(List<UserStoriesWithInteractions> stories)
        currentUserStoriesUpdated,
  }) {
    return otherUserStoriesUpdated(stories);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Option<LatLng> userLocation)? dataInitialized,
    TResult? Function(EventVoucher voucher)? eventVoucherUsed,
    TResult? Function()? nextPageChallengeStoriesFetched,
    TResult? Function(List<UserStoriesWithInteractions> stories)?
        otherUserStoriesUpdated,
    TResult? Function(List<UserStoriesWithInteractions> stories)?
        currentUserStoriesUpdated,
  }) {
    return otherUserStoriesUpdated?.call(stories);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<LatLng> userLocation)? dataInitialized,
    TResult Function(EventVoucher voucher)? eventVoucherUsed,
    TResult Function()? nextPageChallengeStoriesFetched,
    TResult Function(List<UserStoriesWithInteractions> stories)?
        otherUserStoriesUpdated,
    TResult Function(List<UserStoriesWithInteractions> stories)?
        currentUserStoriesUpdated,
    required TResult orElse(),
  }) {
    if (otherUserStoriesUpdated != null) {
      return otherUserStoriesUpdated(stories);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DataInitialized value) dataInitialized,
    required TResult Function(_EventVoucherUsed value) eventVoucherUsed,
    required TResult Function(_NextPageChallengeStoriesFetched value)
        nextPageChallengeStoriesFetched,
    required TResult Function(_OtherUserStoriesUpdated value)
        otherUserStoriesUpdated,
    required TResult Function(_CurrentUserStoriesUpdated value)
        currentUserStoriesUpdated,
  }) {
    return otherUserStoriesUpdated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DataInitialized value)? dataInitialized,
    TResult? Function(_EventVoucherUsed value)? eventVoucherUsed,
    TResult? Function(_NextPageChallengeStoriesFetched value)?
        nextPageChallengeStoriesFetched,
    TResult? Function(_OtherUserStoriesUpdated value)? otherUserStoriesUpdated,
    TResult? Function(_CurrentUserStoriesUpdated value)?
        currentUserStoriesUpdated,
  }) {
    return otherUserStoriesUpdated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DataInitialized value)? dataInitialized,
    TResult Function(_EventVoucherUsed value)? eventVoucherUsed,
    TResult Function(_NextPageChallengeStoriesFetched value)?
        nextPageChallengeStoriesFetched,
    TResult Function(_OtherUserStoriesUpdated value)? otherUserStoriesUpdated,
    TResult Function(_CurrentUserStoriesUpdated value)?
        currentUserStoriesUpdated,
    required TResult orElse(),
  }) {
    if (otherUserStoriesUpdated != null) {
      return otherUserStoriesUpdated(this);
    }
    return orElse();
  }
}

abstract class _OtherUserStoriesUpdated implements DashboardEvent {
  const factory _OtherUserStoriesUpdated(
          final List<UserStoriesWithInteractions> stories) =
      _$_OtherUserStoriesUpdated;

  List<UserStoriesWithInteractions> get stories;
  @JsonKey(ignore: true)
  _$$_OtherUserStoriesUpdatedCopyWith<_$_OtherUserStoriesUpdated>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_CurrentUserStoriesUpdatedCopyWith<$Res> {
  factory _$$_CurrentUserStoriesUpdatedCopyWith(
          _$_CurrentUserStoriesUpdated value,
          $Res Function(_$_CurrentUserStoriesUpdated) then) =
      __$$_CurrentUserStoriesUpdatedCopyWithImpl<$Res>;
  @useResult
  $Res call({List<UserStoriesWithInteractions> stories});
}

/// @nodoc
class __$$_CurrentUserStoriesUpdatedCopyWithImpl<$Res>
    extends _$DashboardEventCopyWithImpl<$Res, _$_CurrentUserStoriesUpdated>
    implements _$$_CurrentUserStoriesUpdatedCopyWith<$Res> {
  __$$_CurrentUserStoriesUpdatedCopyWithImpl(
      _$_CurrentUserStoriesUpdated _value,
      $Res Function(_$_CurrentUserStoriesUpdated) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stories = null,
  }) {
    return _then(_$_CurrentUserStoriesUpdated(
      null == stories
          ? _value._stories
          : stories // ignore: cast_nullable_to_non_nullable
              as List<UserStoriesWithInteractions>,
    ));
  }
}

/// @nodoc

class _$_CurrentUserStoriesUpdated implements _CurrentUserStoriesUpdated {
  const _$_CurrentUserStoriesUpdated(
      final List<UserStoriesWithInteractions> stories)
      : _stories = stories;

  final List<UserStoriesWithInteractions> _stories;
  @override
  List<UserStoriesWithInteractions> get stories {
    if (_stories is EqualUnmodifiableListView) return _stories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_stories);
  }

  @override
  String toString() {
    return 'DashboardEvent.currentUserStoriesUpdated(stories: $stories)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CurrentUserStoriesUpdated &&
            const DeepCollectionEquality().equals(other._stories, _stories));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_stories));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CurrentUserStoriesUpdatedCopyWith<_$_CurrentUserStoriesUpdated>
      get copyWith => __$$_CurrentUserStoriesUpdatedCopyWithImpl<
          _$_CurrentUserStoriesUpdated>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<LatLng> userLocation) dataInitialized,
    required TResult Function(EventVoucher voucher) eventVoucherUsed,
    required TResult Function() nextPageChallengeStoriesFetched,
    required TResult Function(List<UserStoriesWithInteractions> stories)
        otherUserStoriesUpdated,
    required TResult Function(List<UserStoriesWithInteractions> stories)
        currentUserStoriesUpdated,
  }) {
    return currentUserStoriesUpdated(stories);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Option<LatLng> userLocation)? dataInitialized,
    TResult? Function(EventVoucher voucher)? eventVoucherUsed,
    TResult? Function()? nextPageChallengeStoriesFetched,
    TResult? Function(List<UserStoriesWithInteractions> stories)?
        otherUserStoriesUpdated,
    TResult? Function(List<UserStoriesWithInteractions> stories)?
        currentUserStoriesUpdated,
  }) {
    return currentUserStoriesUpdated?.call(stories);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<LatLng> userLocation)? dataInitialized,
    TResult Function(EventVoucher voucher)? eventVoucherUsed,
    TResult Function()? nextPageChallengeStoriesFetched,
    TResult Function(List<UserStoriesWithInteractions> stories)?
        otherUserStoriesUpdated,
    TResult Function(List<UserStoriesWithInteractions> stories)?
        currentUserStoriesUpdated,
    required TResult orElse(),
  }) {
    if (currentUserStoriesUpdated != null) {
      return currentUserStoriesUpdated(stories);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DataInitialized value) dataInitialized,
    required TResult Function(_EventVoucherUsed value) eventVoucherUsed,
    required TResult Function(_NextPageChallengeStoriesFetched value)
        nextPageChallengeStoriesFetched,
    required TResult Function(_OtherUserStoriesUpdated value)
        otherUserStoriesUpdated,
    required TResult Function(_CurrentUserStoriesUpdated value)
        currentUserStoriesUpdated,
  }) {
    return currentUserStoriesUpdated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DataInitialized value)? dataInitialized,
    TResult? Function(_EventVoucherUsed value)? eventVoucherUsed,
    TResult? Function(_NextPageChallengeStoriesFetched value)?
        nextPageChallengeStoriesFetched,
    TResult? Function(_OtherUserStoriesUpdated value)? otherUserStoriesUpdated,
    TResult? Function(_CurrentUserStoriesUpdated value)?
        currentUserStoriesUpdated,
  }) {
    return currentUserStoriesUpdated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DataInitialized value)? dataInitialized,
    TResult Function(_EventVoucherUsed value)? eventVoucherUsed,
    TResult Function(_NextPageChallengeStoriesFetched value)?
        nextPageChallengeStoriesFetched,
    TResult Function(_OtherUserStoriesUpdated value)? otherUserStoriesUpdated,
    TResult Function(_CurrentUserStoriesUpdated value)?
        currentUserStoriesUpdated,
    required TResult orElse(),
  }) {
    if (currentUserStoriesUpdated != null) {
      return currentUserStoriesUpdated(this);
    }
    return orElse();
  }
}

abstract class _CurrentUserStoriesUpdated implements DashboardEvent {
  const factory _CurrentUserStoriesUpdated(
          final List<UserStoriesWithInteractions> stories) =
      _$_CurrentUserStoriesUpdated;

  List<UserStoriesWithInteractions> get stories;
  @JsonKey(ignore: true)
  _$$_CurrentUserStoriesUpdatedCopyWith<_$_CurrentUserStoriesUpdated>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$DashboardState {
  DashboardData get dashboardData => throw _privateConstructorUsedError;
  CubitStatus get initialStatus => throw _privateConstructorUsedError;
  CubitStatus get useVoucherStatus => throw _privateConstructorUsedError;
  Option<String> get errorMessage => throw _privateConstructorUsedError;
  Option<DashboardFailure> get failure => throw _privateConstructorUsedError;
  Option<EventVoucher> get usedVoucher => throw _privateConstructorUsedError;
  CubitStatus get nextPageChallengeStoriesStatus =>
      throw _privateConstructorUsedError;
  bool get hasChallengeStoriesReachedMax => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DashboardStateCopyWith<DashboardState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DashboardStateCopyWith<$Res> {
  factory $DashboardStateCopyWith(
          DashboardState value, $Res Function(DashboardState) then) =
      _$DashboardStateCopyWithImpl<$Res, DashboardState>;
  @useResult
  $Res call(
      {DashboardData dashboardData,
      CubitStatus initialStatus,
      CubitStatus useVoucherStatus,
      Option<String> errorMessage,
      Option<DashboardFailure> failure,
      Option<EventVoucher> usedVoucher,
      CubitStatus nextPageChallengeStoriesStatus,
      bool hasChallengeStoriesReachedMax});

  $DashboardDataCopyWith<$Res> get dashboardData;
}

/// @nodoc
class _$DashboardStateCopyWithImpl<$Res, $Val extends DashboardState>
    implements $DashboardStateCopyWith<$Res> {
  _$DashboardStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dashboardData = null,
    Object? initialStatus = null,
    Object? useVoucherStatus = null,
    Object? errorMessage = null,
    Object? failure = null,
    Object? usedVoucher = null,
    Object? nextPageChallengeStoriesStatus = null,
    Object? hasChallengeStoriesReachedMax = null,
  }) {
    return _then(_value.copyWith(
      dashboardData: null == dashboardData
          ? _value.dashboardData
          : dashboardData // ignore: cast_nullable_to_non_nullable
              as DashboardData,
      initialStatus: null == initialStatus
          ? _value.initialStatus
          : initialStatus // ignore: cast_nullable_to_non_nullable
              as CubitStatus,
      useVoucherStatus: null == useVoucherStatus
          ? _value.useVoucherStatus
          : useVoucherStatus // ignore: cast_nullable_to_non_nullable
              as CubitStatus,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as Option<String>,
      failure: null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Option<DashboardFailure>,
      usedVoucher: null == usedVoucher
          ? _value.usedVoucher
          : usedVoucher // ignore: cast_nullable_to_non_nullable
              as Option<EventVoucher>,
      nextPageChallengeStoriesStatus: null == nextPageChallengeStoriesStatus
          ? _value.nextPageChallengeStoriesStatus
          : nextPageChallengeStoriesStatus // ignore: cast_nullable_to_non_nullable
              as CubitStatus,
      hasChallengeStoriesReachedMax: null == hasChallengeStoriesReachedMax
          ? _value.hasChallengeStoriesReachedMax
          : hasChallengeStoriesReachedMax // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DashboardDataCopyWith<$Res> get dashboardData {
    return $DashboardDataCopyWith<$Res>(_value.dashboardData, (value) {
      return _then(_value.copyWith(dashboardData: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_DashboardStateCopyWith<$Res>
    implements $DashboardStateCopyWith<$Res> {
  factory _$$_DashboardStateCopyWith(
          _$_DashboardState value, $Res Function(_$_DashboardState) then) =
      __$$_DashboardStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {DashboardData dashboardData,
      CubitStatus initialStatus,
      CubitStatus useVoucherStatus,
      Option<String> errorMessage,
      Option<DashboardFailure> failure,
      Option<EventVoucher> usedVoucher,
      CubitStatus nextPageChallengeStoriesStatus,
      bool hasChallengeStoriesReachedMax});

  @override
  $DashboardDataCopyWith<$Res> get dashboardData;
}

/// @nodoc
class __$$_DashboardStateCopyWithImpl<$Res>
    extends _$DashboardStateCopyWithImpl<$Res, _$_DashboardState>
    implements _$$_DashboardStateCopyWith<$Res> {
  __$$_DashboardStateCopyWithImpl(
      _$_DashboardState _value, $Res Function(_$_DashboardState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dashboardData = null,
    Object? initialStatus = null,
    Object? useVoucherStatus = null,
    Object? errorMessage = null,
    Object? failure = null,
    Object? usedVoucher = null,
    Object? nextPageChallengeStoriesStatus = null,
    Object? hasChallengeStoriesReachedMax = null,
  }) {
    return _then(_$_DashboardState(
      dashboardData: null == dashboardData
          ? _value.dashboardData
          : dashboardData // ignore: cast_nullable_to_non_nullable
              as DashboardData,
      initialStatus: null == initialStatus
          ? _value.initialStatus
          : initialStatus // ignore: cast_nullable_to_non_nullable
              as CubitStatus,
      useVoucherStatus: null == useVoucherStatus
          ? _value.useVoucherStatus
          : useVoucherStatus // ignore: cast_nullable_to_non_nullable
              as CubitStatus,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as Option<String>,
      failure: null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Option<DashboardFailure>,
      usedVoucher: null == usedVoucher
          ? _value.usedVoucher
          : usedVoucher // ignore: cast_nullable_to_non_nullable
              as Option<EventVoucher>,
      nextPageChallengeStoriesStatus: null == nextPageChallengeStoriesStatus
          ? _value.nextPageChallengeStoriesStatus
          : nextPageChallengeStoriesStatus // ignore: cast_nullable_to_non_nullable
              as CubitStatus,
      hasChallengeStoriesReachedMax: null == hasChallengeStoriesReachedMax
          ? _value.hasChallengeStoriesReachedMax
          : hasChallengeStoriesReachedMax // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_DashboardState implements _DashboardState {
  const _$_DashboardState(
      {required this.dashboardData,
      required this.initialStatus,
      required this.useVoucherStatus,
      required this.errorMessage,
      required this.failure,
      required this.usedVoucher,
      required this.nextPageChallengeStoriesStatus,
      required this.hasChallengeStoriesReachedMax});

  @override
  final DashboardData dashboardData;
  @override
  final CubitStatus initialStatus;
  @override
  final CubitStatus useVoucherStatus;
  @override
  final Option<String> errorMessage;
  @override
  final Option<DashboardFailure> failure;
  @override
  final Option<EventVoucher> usedVoucher;
  @override
  final CubitStatus nextPageChallengeStoriesStatus;
  @override
  final bool hasChallengeStoriesReachedMax;

  @override
  String toString() {
    return 'DashboardState(dashboardData: $dashboardData, initialStatus: $initialStatus, useVoucherStatus: $useVoucherStatus, errorMessage: $errorMessage, failure: $failure, usedVoucher: $usedVoucher, nextPageChallengeStoriesStatus: $nextPageChallengeStoriesStatus, hasChallengeStoriesReachedMax: $hasChallengeStoriesReachedMax)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DashboardState &&
            (identical(other.dashboardData, dashboardData) ||
                other.dashboardData == dashboardData) &&
            (identical(other.initialStatus, initialStatus) ||
                other.initialStatus == initialStatus) &&
            (identical(other.useVoucherStatus, useVoucherStatus) ||
                other.useVoucherStatus == useVoucherStatus) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.failure, failure) || other.failure == failure) &&
            (identical(other.usedVoucher, usedVoucher) ||
                other.usedVoucher == usedVoucher) &&
            (identical(other.nextPageChallengeStoriesStatus,
                    nextPageChallengeStoriesStatus) ||
                other.nextPageChallengeStoriesStatus ==
                    nextPageChallengeStoriesStatus) &&
            (identical(other.hasChallengeStoriesReachedMax,
                    hasChallengeStoriesReachedMax) ||
                other.hasChallengeStoriesReachedMax ==
                    hasChallengeStoriesReachedMax));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      dashboardData,
      initialStatus,
      useVoucherStatus,
      errorMessage,
      failure,
      usedVoucher,
      nextPageChallengeStoriesStatus,
      hasChallengeStoriesReachedMax);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DashboardStateCopyWith<_$_DashboardState> get copyWith =>
      __$$_DashboardStateCopyWithImpl<_$_DashboardState>(this, _$identity);
}

abstract class _DashboardState implements DashboardState {
  const factory _DashboardState(
      {required final DashboardData dashboardData,
      required final CubitStatus initialStatus,
      required final CubitStatus useVoucherStatus,
      required final Option<String> errorMessage,
      required final Option<DashboardFailure> failure,
      required final Option<EventVoucher> usedVoucher,
      required final CubitStatus nextPageChallengeStoriesStatus,
      required final bool hasChallengeStoriesReachedMax}) = _$_DashboardState;

  @override
  DashboardData get dashboardData;
  @override
  CubitStatus get initialStatus;
  @override
  CubitStatus get useVoucherStatus;
  @override
  Option<String> get errorMessage;
  @override
  Option<DashboardFailure> get failure;
  @override
  Option<EventVoucher> get usedVoucher;
  @override
  CubitStatus get nextPageChallengeStoriesStatus;
  @override
  bool get hasChallengeStoriesReachedMax;
  @override
  @JsonKey(ignore: true)
  _$$_DashboardStateCopyWith<_$_DashboardState> get copyWith =>
      throw _privateConstructorUsedError;
}
