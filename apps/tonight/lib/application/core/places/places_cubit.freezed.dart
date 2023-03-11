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
  List<City> get cities => throw _privateConstructorUsedError;
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
  $Res call({List<City> cities, String previousSearch, CubitStatus status});
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
    Object? cities = null,
    Object? previousSearch = null,
    Object? status = null,
  }) {
    return _then(_value.copyWith(
      cities: null == cities
          ? _value.cities
          : cities // ignore: cast_nullable_to_non_nullable
              as List<City>,
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
abstract class _$$_PlacesStateCopyWith<$Res>
    implements $PlacesStateCopyWith<$Res> {
  factory _$$_PlacesStateCopyWith(
          _$_PlacesState value, $Res Function(_$_PlacesState) then) =
      __$$_PlacesStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<City> cities, String previousSearch, CubitStatus status});
}

/// @nodoc
class __$$_PlacesStateCopyWithImpl<$Res>
    extends _$PlacesStateCopyWithImpl<$Res, _$_PlacesState>
    implements _$$_PlacesStateCopyWith<$Res> {
  __$$_PlacesStateCopyWithImpl(
      _$_PlacesState _value, $Res Function(_$_PlacesState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cities = null,
    Object? previousSearch = null,
    Object? status = null,
  }) {
    return _then(_$_PlacesState(
      cities: null == cities
          ? _value._cities
          : cities // ignore: cast_nullable_to_non_nullable
              as List<City>,
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

class _$_PlacesState extends _PlacesState {
  _$_PlacesState(
      {required final List<City> cities,
      required this.previousSearch,
      required this.status})
      : _cities = cities,
        super._();

  final List<City> _cities;
  @override
  List<City> get cities {
    if (_cities is EqualUnmodifiableListView) return _cities;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_cities);
  }

  @override
  final String previousSearch;
  @override
  final CubitStatus status;

  @override
  String toString() {
    return 'PlacesState(cities: $cities, previousSearch: $previousSearch, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PlacesState &&
            const DeepCollectionEquality().equals(other._cities, _cities) &&
            (identical(other.previousSearch, previousSearch) ||
                other.previousSearch == previousSearch) &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_cities), previousSearch, status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PlacesStateCopyWith<_$_PlacesState> get copyWith =>
      __$$_PlacesStateCopyWithImpl<_$_PlacesState>(this, _$identity);
}

abstract class _PlacesState extends PlacesState {
  factory _PlacesState(
      {required final List<City> cities,
      required final String previousSearch,
      required final CubitStatus status}) = _$_PlacesState;
  _PlacesState._() : super._();

  @override
  List<City> get cities;
  @override
  String get previousSearch;
  @override
  CubitStatus get status;
  @override
  @JsonKey(ignore: true)
  _$$_PlacesStateCopyWith<_$_PlacesState> get copyWith =>
      throw _privateConstructorUsedError;
}
