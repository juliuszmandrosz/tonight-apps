// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ticket_list_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TicketListState {
  List<Ticket> get upcomingLiveTickets => throw _privateConstructorUsedError;
  List<Ticket> get pastTickets => throw _privateConstructorUsedError;
  bool get hasReachedMax => throw _privateConstructorUsedError;
  CubitStatus get initialStatus => throw _privateConstructorUsedError;
  CubitStatus get fetchNextPageTicketsStatus =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TicketListStateCopyWith<TicketListState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TicketListStateCopyWith<$Res> {
  factory $TicketListStateCopyWith(
          TicketListState value, $Res Function(TicketListState) then) =
      _$TicketListStateCopyWithImpl<$Res, TicketListState>;
  @useResult
  $Res call(
      {List<Ticket> upcomingLiveTickets,
      List<Ticket> pastTickets,
      bool hasReachedMax,
      CubitStatus initialStatus,
      CubitStatus fetchNextPageTicketsStatus});
}

/// @nodoc
class _$TicketListStateCopyWithImpl<$Res, $Val extends TicketListState>
    implements $TicketListStateCopyWith<$Res> {
  _$TicketListStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? upcomingLiveTickets = null,
    Object? pastTickets = null,
    Object? hasReachedMax = null,
    Object? initialStatus = null,
    Object? fetchNextPageTicketsStatus = null,
  }) {
    return _then(_value.copyWith(
      upcomingLiveTickets: null == upcomingLiveTickets
          ? _value.upcomingLiveTickets
          : upcomingLiveTickets // ignore: cast_nullable_to_non_nullable
              as List<Ticket>,
      pastTickets: null == pastTickets
          ? _value.pastTickets
          : pastTickets // ignore: cast_nullable_to_non_nullable
              as List<Ticket>,
      hasReachedMax: null == hasReachedMax
          ? _value.hasReachedMax
          : hasReachedMax // ignore: cast_nullable_to_non_nullable
              as bool,
      initialStatus: null == initialStatus
          ? _value.initialStatus
          : initialStatus // ignore: cast_nullable_to_non_nullable
              as CubitStatus,
      fetchNextPageTicketsStatus: null == fetchNextPageTicketsStatus
          ? _value.fetchNextPageTicketsStatus
          : fetchNextPageTicketsStatus // ignore: cast_nullable_to_non_nullable
              as CubitStatus,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TicketListStateCopyWith<$Res>
    implements $TicketListStateCopyWith<$Res> {
  factory _$$_TicketListStateCopyWith(
          _$_TicketListState value, $Res Function(_$_TicketListState) then) =
      __$$_TicketListStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<Ticket> upcomingLiveTickets,
      List<Ticket> pastTickets,
      bool hasReachedMax,
      CubitStatus initialStatus,
      CubitStatus fetchNextPageTicketsStatus});
}

/// @nodoc
class __$$_TicketListStateCopyWithImpl<$Res>
    extends _$TicketListStateCopyWithImpl<$Res, _$_TicketListState>
    implements _$$_TicketListStateCopyWith<$Res> {
  __$$_TicketListStateCopyWithImpl(
      _$_TicketListState _value, $Res Function(_$_TicketListState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? upcomingLiveTickets = null,
    Object? pastTickets = null,
    Object? hasReachedMax = null,
    Object? initialStatus = null,
    Object? fetchNextPageTicketsStatus = null,
  }) {
    return _then(_$_TicketListState(
      upcomingLiveTickets: null == upcomingLiveTickets
          ? _value._upcomingLiveTickets
          : upcomingLiveTickets // ignore: cast_nullable_to_non_nullable
              as List<Ticket>,
      pastTickets: null == pastTickets
          ? _value._pastTickets
          : pastTickets // ignore: cast_nullable_to_non_nullable
              as List<Ticket>,
      hasReachedMax: null == hasReachedMax
          ? _value.hasReachedMax
          : hasReachedMax // ignore: cast_nullable_to_non_nullable
              as bool,
      initialStatus: null == initialStatus
          ? _value.initialStatus
          : initialStatus // ignore: cast_nullable_to_non_nullable
              as CubitStatus,
      fetchNextPageTicketsStatus: null == fetchNextPageTicketsStatus
          ? _value.fetchNextPageTicketsStatus
          : fetchNextPageTicketsStatus // ignore: cast_nullable_to_non_nullable
              as CubitStatus,
    ));
  }
}

/// @nodoc

class _$_TicketListState extends _TicketListState {
  _$_TicketListState(
      {required final List<Ticket> upcomingLiveTickets,
      required final List<Ticket> pastTickets,
      required this.hasReachedMax,
      required this.initialStatus,
      required this.fetchNextPageTicketsStatus})
      : _upcomingLiveTickets = upcomingLiveTickets,
        _pastTickets = pastTickets,
        super._();

  final List<Ticket> _upcomingLiveTickets;
  @override
  List<Ticket> get upcomingLiveTickets {
    if (_upcomingLiveTickets is EqualUnmodifiableListView)
      return _upcomingLiveTickets;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_upcomingLiveTickets);
  }

  final List<Ticket> _pastTickets;
  @override
  List<Ticket> get pastTickets {
    if (_pastTickets is EqualUnmodifiableListView) return _pastTickets;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_pastTickets);
  }

  @override
  final bool hasReachedMax;
  @override
  final CubitStatus initialStatus;
  @override
  final CubitStatus fetchNextPageTicketsStatus;

  @override
  String toString() {
    return 'TicketListState(upcomingLiveTickets: $upcomingLiveTickets, pastTickets: $pastTickets, hasReachedMax: $hasReachedMax, initialStatus: $initialStatus, fetchNextPageTicketsStatus: $fetchNextPageTicketsStatus)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TicketListState &&
            const DeepCollectionEquality()
                .equals(other._upcomingLiveTickets, _upcomingLiveTickets) &&
            const DeepCollectionEquality()
                .equals(other._pastTickets, _pastTickets) &&
            (identical(other.hasReachedMax, hasReachedMax) ||
                other.hasReachedMax == hasReachedMax) &&
            (identical(other.initialStatus, initialStatus) ||
                other.initialStatus == initialStatus) &&
            (identical(other.fetchNextPageTicketsStatus,
                    fetchNextPageTicketsStatus) ||
                other.fetchNextPageTicketsStatus ==
                    fetchNextPageTicketsStatus));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_upcomingLiveTickets),
      const DeepCollectionEquality().hash(_pastTickets),
      hasReachedMax,
      initialStatus,
      fetchNextPageTicketsStatus);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TicketListStateCopyWith<_$_TicketListState> get copyWith =>
      __$$_TicketListStateCopyWithImpl<_$_TicketListState>(this, _$identity);
}

abstract class _TicketListState extends TicketListState {
  factory _TicketListState(
          {required final List<Ticket> upcomingLiveTickets,
          required final List<Ticket> pastTickets,
          required final bool hasReachedMax,
          required final CubitStatus initialStatus,
          required final CubitStatus fetchNextPageTicketsStatus}) =
      _$_TicketListState;
  _TicketListState._() : super._();

  @override
  List<Ticket> get upcomingLiveTickets;
  @override
  List<Ticket> get pastTickets;
  @override
  bool get hasReachedMax;
  @override
  CubitStatus get initialStatus;
  @override
  CubitStatus get fetchNextPageTicketsStatus;
  @override
  @JsonKey(ignore: true)
  _$$_TicketListStateCopyWith<_$_TicketListState> get copyWith =>
      throw _privateConstructorUsedError;
}
