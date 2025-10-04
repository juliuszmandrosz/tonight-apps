// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'places_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PlacesState {
  List<Place> get places => throw _privateConstructorUsedError;
  String get previousSearch => throw _privateConstructorUsedError;
  CubitStatus get status => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PlacesStateCopyWith<PlacesState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlacesStateCopyWith<$Res> {
  factory $PlacesStateCopyWith(
          PlacesState value, $Res Function(PlacesState) then) =
      _$PlacesStateCopyWithImpl<$Res, PlacesState>;
  @useResult
  $Res call({List<Place> places, String previousSearch, CubitStatus status});
}

/// @nodoc
class _$PlacesStateCopyWithImpl<$Res, $Val extends PlacesState>
    implements $PlacesStateCopyWith<$Res> {
  _$PlacesStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? places = null,
    Object? previousSearch = null,
    Object? status = null,
  }) {
    return _then(_value.copyWith(
      places: null == places
          ? _value.places
          : places // ignore: cast_nullable_to_non_nullable
              as List<Place>,
      previousSearch: null == previousSearch
          ? _value.previousSearch
          : previousSearch // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as CubitStatus,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PlacesStateImplCopyWith<$Res>
    implements $PlacesStateCopyWith<$Res> {
  factory _$$PlacesStateImplCopyWith(
          _$PlacesStateImpl value, $Res Function(_$PlacesStateImpl) then) =
      __$$PlacesStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Place> places, String previousSearch, CubitStatus status});
}

/// @nodoc
class __$$PlacesStateImplCopyWithImpl<$Res>
    extends _$PlacesStateCopyWithImpl<$Res, _$PlacesStateImpl>
    implements _$$PlacesStateImplCopyWith<$Res> {
  __$$PlacesStateImplCopyWithImpl(
      _$PlacesStateImpl _value, $Res Function(_$PlacesStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? places = null,
    Object? previousSearch = null,
    Object? status = null,
  }) {
    return _then(_$PlacesStateImpl(
      places: null == places
          ? _value._places
          : places // ignore: cast_nullable_to_non_nullable
              as List<Place>,
      previousSearch: null == previousSearch
          ? _value.previousSearch
          : previousSearch // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as CubitStatus,
    ));
  }
}

/// @nodoc

class _$PlacesStateImpl extends _PlacesState {
  _$PlacesStateImpl(
      {required final List<Place> places,
      required this.previousSearch,
      required this.status})
      : _places = places,
        super._();

  final List<Place> _places;
  @override
  List<Place> get places {
    if (_places is EqualUnmodifiableListView) return _places;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_places);
  }

  @override
  final String previousSearch;
  @override
  final CubitStatus status;

  @override
  String toString() {
    return 'PlacesState(places: $places, previousSearch: $previousSearch, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlacesStateImpl &&
            const DeepCollectionEquality().equals(other._places, _places) &&
            (identical(other.previousSearch, previousSearch) ||
                other.previousSearch == previousSearch) &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_places), previousSearch, status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PlacesStateImplCopyWith<_$PlacesStateImpl> get copyWith =>
      __$$PlacesStateImplCopyWithImpl<_$PlacesStateImpl>(this, _$identity);
}

abstract class _PlacesState extends PlacesState {
  factory _PlacesState(
      {required final List<Place> places,
      required final String previousSearch,
      required final CubitStatus status}) = _$PlacesStateImpl;
  _PlacesState._() : super._();

  @override
  List<Place> get places;
  @override
  String get previousSearch;
  @override
  CubitStatus get status;
  @override
  @JsonKey(ignore: true)
  _$$PlacesStateImplCopyWith<_$PlacesStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
