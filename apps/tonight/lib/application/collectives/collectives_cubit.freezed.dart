// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'collectives_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CollectivesState {
  CollectiveFilters get filters => throw _privateConstructorUsedError;
  CubitStatus get getCollectivesStatus => throw _privateConstructorUsedError;
  List<Collective> get collectives => throw _privateConstructorUsedError;
  Option<String> get snackbarMessage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CollectivesStateCopyWith<CollectivesState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CollectivesStateCopyWith<$Res> {
  factory $CollectivesStateCopyWith(
          CollectivesState value, $Res Function(CollectivesState) then) =
      _$CollectivesStateCopyWithImpl<$Res, CollectivesState>;
  @useResult
  $Res call(
      {CollectiveFilters filters,
      CubitStatus getCollectivesStatus,
      List<Collective> collectives,
      Option<String> snackbarMessage});

  $CollectiveFiltersCopyWith<$Res> get filters;
}

/// @nodoc
class _$CollectivesStateCopyWithImpl<$Res, $Val extends CollectivesState>
    implements $CollectivesStateCopyWith<$Res> {
  _$CollectivesStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? filters = null,
    Object? getCollectivesStatus = null,
    Object? collectives = null,
    Object? snackbarMessage = null,
  }) {
    return _then(_value.copyWith(
      filters: null == filters
          ? _value.filters
          : filters // ignore: cast_nullable_to_non_nullable
              as CollectiveFilters,
      getCollectivesStatus: null == getCollectivesStatus
          ? _value.getCollectivesStatus
          : getCollectivesStatus // ignore: cast_nullable_to_non_nullable
              as CubitStatus,
      collectives: null == collectives
          ? _value.collectives
          : collectives // ignore: cast_nullable_to_non_nullable
              as List<Collective>,
      snackbarMessage: null == snackbarMessage
          ? _value.snackbarMessage
          : snackbarMessage // ignore: cast_nullable_to_non_nullable
              as Option<String>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CollectiveFiltersCopyWith<$Res> get filters {
    return $CollectiveFiltersCopyWith<$Res>(_value.filters, (value) {
      return _then(_value.copyWith(filters: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CollectivesStateImplCopyWith<$Res>
    implements $CollectivesStateCopyWith<$Res> {
  factory _$$CollectivesStateImplCopyWith(_$CollectivesStateImpl value,
          $Res Function(_$CollectivesStateImpl) then) =
      __$$CollectivesStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {CollectiveFilters filters,
      CubitStatus getCollectivesStatus,
      List<Collective> collectives,
      Option<String> snackbarMessage});

  @override
  $CollectiveFiltersCopyWith<$Res> get filters;
}

/// @nodoc
class __$$CollectivesStateImplCopyWithImpl<$Res>
    extends _$CollectivesStateCopyWithImpl<$Res, _$CollectivesStateImpl>
    implements _$$CollectivesStateImplCopyWith<$Res> {
  __$$CollectivesStateImplCopyWithImpl(_$CollectivesStateImpl _value,
      $Res Function(_$CollectivesStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? filters = null,
    Object? getCollectivesStatus = null,
    Object? collectives = null,
    Object? snackbarMessage = null,
  }) {
    return _then(_$CollectivesStateImpl(
      filters: null == filters
          ? _value.filters
          : filters // ignore: cast_nullable_to_non_nullable
              as CollectiveFilters,
      getCollectivesStatus: null == getCollectivesStatus
          ? _value.getCollectivesStatus
          : getCollectivesStatus // ignore: cast_nullable_to_non_nullable
              as CubitStatus,
      collectives: null == collectives
          ? _value._collectives
          : collectives // ignore: cast_nullable_to_non_nullable
              as List<Collective>,
      snackbarMessage: null == snackbarMessage
          ? _value.snackbarMessage
          : snackbarMessage // ignore: cast_nullable_to_non_nullable
              as Option<String>,
    ));
  }
}

/// @nodoc

class _$CollectivesStateImpl implements _CollectivesState {
  const _$CollectivesStateImpl(
      {required this.filters,
      required this.getCollectivesStatus,
      required final List<Collective> collectives,
      required this.snackbarMessage})
      : _collectives = collectives;

  @override
  final CollectiveFilters filters;
  @override
  final CubitStatus getCollectivesStatus;
  final List<Collective> _collectives;
  @override
  List<Collective> get collectives {
    if (_collectives is EqualUnmodifiableListView) return _collectives;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_collectives);
  }

  @override
  final Option<String> snackbarMessage;

  @override
  String toString() {
    return 'CollectivesState(filters: $filters, getCollectivesStatus: $getCollectivesStatus, collectives: $collectives, snackbarMessage: $snackbarMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CollectivesStateImpl &&
            (identical(other.filters, filters) || other.filters == filters) &&
            (identical(other.getCollectivesStatus, getCollectivesStatus) ||
                other.getCollectivesStatus == getCollectivesStatus) &&
            const DeepCollectionEquality()
                .equals(other._collectives, _collectives) &&
            (identical(other.snackbarMessage, snackbarMessage) ||
                other.snackbarMessage == snackbarMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, filters, getCollectivesStatus,
      const DeepCollectionEquality().hash(_collectives), snackbarMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CollectivesStateImplCopyWith<_$CollectivesStateImpl> get copyWith =>
      __$$CollectivesStateImplCopyWithImpl<_$CollectivesStateImpl>(
          this, _$identity);
}

abstract class _CollectivesState implements CollectivesState {
  const factory _CollectivesState(
      {required final CollectiveFilters filters,
      required final CubitStatus getCollectivesStatus,
      required final List<Collective> collectives,
      required final Option<String> snackbarMessage}) = _$CollectivesStateImpl;

  @override
  CollectiveFilters get filters;
  @override
  CubitStatus get getCollectivesStatus;
  @override
  List<Collective> get collectives;
  @override
  Option<String> get snackbarMessage;
  @override
  @JsonKey(ignore: true)
  _$$CollectivesStateImplCopyWith<_$CollectivesStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
