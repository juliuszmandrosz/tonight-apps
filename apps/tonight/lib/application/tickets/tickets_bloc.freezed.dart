// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tickets_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TicketsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() ticketsFetched,
    required TResult Function() nextPageTicketsFetched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? ticketsFetched,
    TResult? Function()? nextPageTicketsFetched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? ticketsFetched,
    TResult Function()? nextPageTicketsFetched,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TicketsFetched value) ticketsFetched,
    required TResult Function(_NextPageTicketsFetched value)
        nextPageTicketsFetched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TicketsFetched value)? ticketsFetched,
    TResult? Function(_NextPageTicketsFetched value)? nextPageTicketsFetched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TicketsFetched value)? ticketsFetched,
    TResult Function(_NextPageTicketsFetched value)? nextPageTicketsFetched,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TicketsEventCopyWith<$Res> {
  factory $TicketsEventCopyWith(
          TicketsEvent value, $Res Function(TicketsEvent) then) =
      _$TicketsEventCopyWithImpl<$Res, TicketsEvent>;
}

/// @nodoc
class _$TicketsEventCopyWithImpl<$Res, $Val extends TicketsEvent>
    implements $TicketsEventCopyWith<$Res> {
  _$TicketsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_TicketsFetchedCopyWith<$Res> {
  factory _$$_TicketsFetchedCopyWith(
          _$_TicketsFetched value, $Res Function(_$_TicketsFetched) then) =
      __$$_TicketsFetchedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_TicketsFetchedCopyWithImpl<$Res>
    extends _$TicketsEventCopyWithImpl<$Res, _$_TicketsFetched>
    implements _$$_TicketsFetchedCopyWith<$Res> {
  __$$_TicketsFetchedCopyWithImpl(
      _$_TicketsFetched _value, $Res Function(_$_TicketsFetched) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_TicketsFetched implements _TicketsFetched {
  const _$_TicketsFetched();

  @override
  String toString() {
    return 'TicketsEvent.ticketsFetched()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_TicketsFetched);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() ticketsFetched,
    required TResult Function() nextPageTicketsFetched,
  }) {
    return ticketsFetched();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? ticketsFetched,
    TResult? Function()? nextPageTicketsFetched,
  }) {
    return ticketsFetched?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? ticketsFetched,
    TResult Function()? nextPageTicketsFetched,
    required TResult orElse(),
  }) {
    if (ticketsFetched != null) {
      return ticketsFetched();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TicketsFetched value) ticketsFetched,
    required TResult Function(_NextPageTicketsFetched value)
        nextPageTicketsFetched,
  }) {
    return ticketsFetched(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TicketsFetched value)? ticketsFetched,
    TResult? Function(_NextPageTicketsFetched value)? nextPageTicketsFetched,
  }) {
    return ticketsFetched?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TicketsFetched value)? ticketsFetched,
    TResult Function(_NextPageTicketsFetched value)? nextPageTicketsFetched,
    required TResult orElse(),
  }) {
    if (ticketsFetched != null) {
      return ticketsFetched(this);
    }
    return orElse();
  }
}

abstract class _TicketsFetched implements TicketsEvent {
  const factory _TicketsFetched() = _$_TicketsFetched;
}

/// @nodoc
abstract class _$$_NextPageTicketsFetchedCopyWith<$Res> {
  factory _$$_NextPageTicketsFetchedCopyWith(_$_NextPageTicketsFetched value,
          $Res Function(_$_NextPageTicketsFetched) then) =
      __$$_NextPageTicketsFetchedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_NextPageTicketsFetchedCopyWithImpl<$Res>
    extends _$TicketsEventCopyWithImpl<$Res, _$_NextPageTicketsFetched>
    implements _$$_NextPageTicketsFetchedCopyWith<$Res> {
  __$$_NextPageTicketsFetchedCopyWithImpl(_$_NextPageTicketsFetched _value,
      $Res Function(_$_NextPageTicketsFetched) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_NextPageTicketsFetched implements _NextPageTicketsFetched {
  const _$_NextPageTicketsFetched();

  @override
  String toString() {
    return 'TicketsEvent.nextPageTicketsFetched()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NextPageTicketsFetched);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() ticketsFetched,
    required TResult Function() nextPageTicketsFetched,
  }) {
    return nextPageTicketsFetched();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? ticketsFetched,
    TResult? Function()? nextPageTicketsFetched,
  }) {
    return nextPageTicketsFetched?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? ticketsFetched,
    TResult Function()? nextPageTicketsFetched,
    required TResult orElse(),
  }) {
    if (nextPageTicketsFetched != null) {
      return nextPageTicketsFetched();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TicketsFetched value) ticketsFetched,
    required TResult Function(_NextPageTicketsFetched value)
        nextPageTicketsFetched,
  }) {
    return nextPageTicketsFetched(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TicketsFetched value)? ticketsFetched,
    TResult? Function(_NextPageTicketsFetched value)? nextPageTicketsFetched,
  }) {
    return nextPageTicketsFetched?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TicketsFetched value)? ticketsFetched,
    TResult Function(_NextPageTicketsFetched value)? nextPageTicketsFetched,
    required TResult orElse(),
  }) {
    if (nextPageTicketsFetched != null) {
      return nextPageTicketsFetched(this);
    }
    return orElse();
  }
}

abstract class _NextPageTicketsFetched implements TicketsEvent {
  const factory _NextPageTicketsFetched() = _$_NextPageTicketsFetched;
}

/// @nodoc
mixin _$TicketsState {
  List<Ticket> get tickets => throw _privateConstructorUsedError;
  bool get hasReachedMax => throw _privateConstructorUsedError;
  CubitStatus get fetchTicketsStatus => throw _privateConstructorUsedError;
  CubitStatus get nextPageStatus => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TicketsStateCopyWith<TicketsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TicketsStateCopyWith<$Res> {
  factory $TicketsStateCopyWith(
          TicketsState value, $Res Function(TicketsState) then) =
      _$TicketsStateCopyWithImpl<$Res, TicketsState>;
  @useResult
  $Res call(
      {List<Ticket> tickets,
      bool hasReachedMax,
      CubitStatus fetchTicketsStatus,
      CubitStatus nextPageStatus});
}

/// @nodoc
class _$TicketsStateCopyWithImpl<$Res, $Val extends TicketsState>
    implements $TicketsStateCopyWith<$Res> {
  _$TicketsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tickets = null,
    Object? hasReachedMax = null,
    Object? fetchTicketsStatus = null,
    Object? nextPageStatus = null,
  }) {
    return _then(_value.copyWith(
      tickets: null == tickets
          ? _value.tickets
          : tickets // ignore: cast_nullable_to_non_nullable
              as List<Ticket>,
      hasReachedMax: null == hasReachedMax
          ? _value.hasReachedMax
          : hasReachedMax // ignore: cast_nullable_to_non_nullable
              as bool,
      fetchTicketsStatus: null == fetchTicketsStatus
          ? _value.fetchTicketsStatus
          : fetchTicketsStatus // ignore: cast_nullable_to_non_nullable
              as CubitStatus,
      nextPageStatus: null == nextPageStatus
          ? _value.nextPageStatus
          : nextPageStatus // ignore: cast_nullable_to_non_nullable
              as CubitStatus,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TicketsStateCopyWith<$Res>
    implements $TicketsStateCopyWith<$Res> {
  factory _$$_TicketsStateCopyWith(
          _$_TicketsState value, $Res Function(_$_TicketsState) then) =
      __$$_TicketsStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<Ticket> tickets,
      bool hasReachedMax,
      CubitStatus fetchTicketsStatus,
      CubitStatus nextPageStatus});
}

/// @nodoc
class __$$_TicketsStateCopyWithImpl<$Res>
    extends _$TicketsStateCopyWithImpl<$Res, _$_TicketsState>
    implements _$$_TicketsStateCopyWith<$Res> {
  __$$_TicketsStateCopyWithImpl(
      _$_TicketsState _value, $Res Function(_$_TicketsState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tickets = null,
    Object? hasReachedMax = null,
    Object? fetchTicketsStatus = null,
    Object? nextPageStatus = null,
  }) {
    return _then(_$_TicketsState(
      tickets: null == tickets
          ? _value._tickets
          : tickets // ignore: cast_nullable_to_non_nullable
              as List<Ticket>,
      hasReachedMax: null == hasReachedMax
          ? _value.hasReachedMax
          : hasReachedMax // ignore: cast_nullable_to_non_nullable
              as bool,
      fetchTicketsStatus: null == fetchTicketsStatus
          ? _value.fetchTicketsStatus
          : fetchTicketsStatus // ignore: cast_nullable_to_non_nullable
              as CubitStatus,
      nextPageStatus: null == nextPageStatus
          ? _value.nextPageStatus
          : nextPageStatus // ignore: cast_nullable_to_non_nullable
              as CubitStatus,
    ));
  }
}

/// @nodoc

class _$_TicketsState implements _TicketsState {
  const _$_TicketsState(
      {required final List<Ticket> tickets,
      required this.hasReachedMax,
      required this.fetchTicketsStatus,
      required this.nextPageStatus})
      : _tickets = tickets;

  final List<Ticket> _tickets;
  @override
  List<Ticket> get tickets {
    if (_tickets is EqualUnmodifiableListView) return _tickets;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tickets);
  }

  @override
  final bool hasReachedMax;
  @override
  final CubitStatus fetchTicketsStatus;
  @override
  final CubitStatus nextPageStatus;

  @override
  String toString() {
    return 'TicketsState(tickets: $tickets, hasReachedMax: $hasReachedMax, fetchTicketsStatus: $fetchTicketsStatus, nextPageStatus: $nextPageStatus)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TicketsState &&
            const DeepCollectionEquality().equals(other._tickets, _tickets) &&
            (identical(other.hasReachedMax, hasReachedMax) ||
                other.hasReachedMax == hasReachedMax) &&
            (identical(other.fetchTicketsStatus, fetchTicketsStatus) ||
                other.fetchTicketsStatus == fetchTicketsStatus) &&
            (identical(other.nextPageStatus, nextPageStatus) ||
                other.nextPageStatus == nextPageStatus));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_tickets),
      hasReachedMax,
      fetchTicketsStatus,
      nextPageStatus);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TicketsStateCopyWith<_$_TicketsState> get copyWith =>
      __$$_TicketsStateCopyWithImpl<_$_TicketsState>(this, _$identity);
}

abstract class _TicketsState implements TicketsState {
  const factory _TicketsState(
      {required final List<Ticket> tickets,
      required final bool hasReachedMax,
      required final CubitStatus fetchTicketsStatus,
      required final CubitStatus nextPageStatus}) = _$_TicketsState;

  @override
  List<Ticket> get tickets;
  @override
  bool get hasReachedMax;
  @override
  CubitStatus get fetchTicketsStatus;
  @override
  CubitStatus get nextPageStatus;
  @override
  @JsonKey(ignore: true)
  _$$_TicketsStateCopyWith<_$_TicketsState> get copyWith =>
      throw _privateConstructorUsedError;
}
