// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'event_city_picker_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$EventCityPickerEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CityFilter filter, List<City> availableCities)
        pickerInitialized,
    required TResult Function(String cityId, String cityName) cityChanged,
    required TResult Function() cityFilterResetted,
    required TResult Function(String phrase) searchChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CityFilter filter, List<City> availableCities)?
        pickerInitialized,
    TResult? Function(String cityId, String cityName)? cityChanged,
    TResult? Function()? cityFilterResetted,
    TResult? Function(String phrase)? searchChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CityFilter filter, List<City> availableCities)?
        pickerInitialized,
    TResult Function(String cityId, String cityName)? cityChanged,
    TResult Function()? cityFilterResetted,
    TResult Function(String phrase)? searchChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PickerInitialized value) pickerInitialized,
    required TResult Function(_CityChanged value) cityChanged,
    required TResult Function(_CityFilterResetted value) cityFilterResetted,
    required TResult Function(_SearchChanged value) searchChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PickerInitialized value)? pickerInitialized,
    TResult? Function(_CityChanged value)? cityChanged,
    TResult? Function(_CityFilterResetted value)? cityFilterResetted,
    TResult? Function(_SearchChanged value)? searchChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PickerInitialized value)? pickerInitialized,
    TResult Function(_CityChanged value)? cityChanged,
    TResult Function(_CityFilterResetted value)? cityFilterResetted,
    TResult Function(_SearchChanged value)? searchChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EventCityPickerEventCopyWith<$Res> {
  factory $EventCityPickerEventCopyWith(EventCityPickerEvent value,
          $Res Function(EventCityPickerEvent) then) =
      _$EventCityPickerEventCopyWithImpl<$Res, EventCityPickerEvent>;
}

/// @nodoc
class _$EventCityPickerEventCopyWithImpl<$Res,
        $Val extends EventCityPickerEvent>
    implements $EventCityPickerEventCopyWith<$Res> {
  _$EventCityPickerEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_PickerInitializedCopyWith<$Res> {
  factory _$$_PickerInitializedCopyWith(_$_PickerInitialized value,
          $Res Function(_$_PickerInitialized) then) =
      __$$_PickerInitializedCopyWithImpl<$Res>;
  @useResult
  $Res call({CityFilter filter, List<City> availableCities});
}

/// @nodoc
class __$$_PickerInitializedCopyWithImpl<$Res>
    extends _$EventCityPickerEventCopyWithImpl<$Res, _$_PickerInitialized>
    implements _$$_PickerInitializedCopyWith<$Res> {
  __$$_PickerInitializedCopyWithImpl(
      _$_PickerInitialized _value, $Res Function(_$_PickerInitialized) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? filter = null,
    Object? availableCities = null,
  }) {
    return _then(_$_PickerInitialized(
      filter: null == filter
          ? _value.filter
          : filter // ignore: cast_nullable_to_non_nullable
              as CityFilter,
      availableCities: null == availableCities
          ? _value._availableCities
          : availableCities // ignore: cast_nullable_to_non_nullable
              as List<City>,
    ));
  }
}

/// @nodoc

class _$_PickerInitialized implements _PickerInitialized {
  const _$_PickerInitialized(
      {required this.filter, required final List<City> availableCities})
      : _availableCities = availableCities;

  @override
  final CityFilter filter;
  final List<City> _availableCities;
  @override
  List<City> get availableCities {
    if (_availableCities is EqualUnmodifiableListView) return _availableCities;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_availableCities);
  }

  @override
  String toString() {
    return 'EventCityPickerEvent.pickerInitialized(filter: $filter, availableCities: $availableCities)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PickerInitialized &&
            (identical(other.filter, filter) || other.filter == filter) &&
            const DeepCollectionEquality()
                .equals(other._availableCities, _availableCities));
  }

  @override
  int get hashCode => Object.hash(runtimeType, filter,
      const DeepCollectionEquality().hash(_availableCities));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PickerInitializedCopyWith<_$_PickerInitialized> get copyWith =>
      __$$_PickerInitializedCopyWithImpl<_$_PickerInitialized>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CityFilter filter, List<City> availableCities)
        pickerInitialized,
    required TResult Function(String cityId, String cityName) cityChanged,
    required TResult Function() cityFilterResetted,
    required TResult Function(String phrase) searchChanged,
  }) {
    return pickerInitialized(filter, availableCities);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CityFilter filter, List<City> availableCities)?
        pickerInitialized,
    TResult? Function(String cityId, String cityName)? cityChanged,
    TResult? Function()? cityFilterResetted,
    TResult? Function(String phrase)? searchChanged,
  }) {
    return pickerInitialized?.call(filter, availableCities);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CityFilter filter, List<City> availableCities)?
        pickerInitialized,
    TResult Function(String cityId, String cityName)? cityChanged,
    TResult Function()? cityFilterResetted,
    TResult Function(String phrase)? searchChanged,
    required TResult orElse(),
  }) {
    if (pickerInitialized != null) {
      return pickerInitialized(filter, availableCities);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PickerInitialized value) pickerInitialized,
    required TResult Function(_CityChanged value) cityChanged,
    required TResult Function(_CityFilterResetted value) cityFilterResetted,
    required TResult Function(_SearchChanged value) searchChanged,
  }) {
    return pickerInitialized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PickerInitialized value)? pickerInitialized,
    TResult? Function(_CityChanged value)? cityChanged,
    TResult? Function(_CityFilterResetted value)? cityFilterResetted,
    TResult? Function(_SearchChanged value)? searchChanged,
  }) {
    return pickerInitialized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PickerInitialized value)? pickerInitialized,
    TResult Function(_CityChanged value)? cityChanged,
    TResult Function(_CityFilterResetted value)? cityFilterResetted,
    TResult Function(_SearchChanged value)? searchChanged,
    required TResult orElse(),
  }) {
    if (pickerInitialized != null) {
      return pickerInitialized(this);
    }
    return orElse();
  }
}

abstract class _PickerInitialized implements EventCityPickerEvent {
  const factory _PickerInitialized(
      {required final CityFilter filter,
      required final List<City> availableCities}) = _$_PickerInitialized;

  CityFilter get filter;
  List<City> get availableCities;
  @JsonKey(ignore: true)
  _$$_PickerInitializedCopyWith<_$_PickerInitialized> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_CityChangedCopyWith<$Res> {
  factory _$$_CityChangedCopyWith(
          _$_CityChanged value, $Res Function(_$_CityChanged) then) =
      __$$_CityChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({String cityId, String cityName});
}

/// @nodoc
class __$$_CityChangedCopyWithImpl<$Res>
    extends _$EventCityPickerEventCopyWithImpl<$Res, _$_CityChanged>
    implements _$$_CityChangedCopyWith<$Res> {
  __$$_CityChangedCopyWithImpl(
      _$_CityChanged _value, $Res Function(_$_CityChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cityId = null,
    Object? cityName = null,
  }) {
    return _then(_$_CityChanged(
      cityId: null == cityId
          ? _value.cityId
          : cityId // ignore: cast_nullable_to_non_nullable
              as String,
      cityName: null == cityName
          ? _value.cityName
          : cityName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_CityChanged implements _CityChanged {
  const _$_CityChanged({required this.cityId, required this.cityName});

  @override
  final String cityId;
  @override
  final String cityName;

  @override
  String toString() {
    return 'EventCityPickerEvent.cityChanged(cityId: $cityId, cityName: $cityName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CityChanged &&
            (identical(other.cityId, cityId) || other.cityId == cityId) &&
            (identical(other.cityName, cityName) ||
                other.cityName == cityName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, cityId, cityName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CityChangedCopyWith<_$_CityChanged> get copyWith =>
      __$$_CityChangedCopyWithImpl<_$_CityChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CityFilter filter, List<City> availableCities)
        pickerInitialized,
    required TResult Function(String cityId, String cityName) cityChanged,
    required TResult Function() cityFilterResetted,
    required TResult Function(String phrase) searchChanged,
  }) {
    return cityChanged(cityId, cityName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CityFilter filter, List<City> availableCities)?
        pickerInitialized,
    TResult? Function(String cityId, String cityName)? cityChanged,
    TResult? Function()? cityFilterResetted,
    TResult? Function(String phrase)? searchChanged,
  }) {
    return cityChanged?.call(cityId, cityName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CityFilter filter, List<City> availableCities)?
        pickerInitialized,
    TResult Function(String cityId, String cityName)? cityChanged,
    TResult Function()? cityFilterResetted,
    TResult Function(String phrase)? searchChanged,
    required TResult orElse(),
  }) {
    if (cityChanged != null) {
      return cityChanged(cityId, cityName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PickerInitialized value) pickerInitialized,
    required TResult Function(_CityChanged value) cityChanged,
    required TResult Function(_CityFilterResetted value) cityFilterResetted,
    required TResult Function(_SearchChanged value) searchChanged,
  }) {
    return cityChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PickerInitialized value)? pickerInitialized,
    TResult? Function(_CityChanged value)? cityChanged,
    TResult? Function(_CityFilterResetted value)? cityFilterResetted,
    TResult? Function(_SearchChanged value)? searchChanged,
  }) {
    return cityChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PickerInitialized value)? pickerInitialized,
    TResult Function(_CityChanged value)? cityChanged,
    TResult Function(_CityFilterResetted value)? cityFilterResetted,
    TResult Function(_SearchChanged value)? searchChanged,
    required TResult orElse(),
  }) {
    if (cityChanged != null) {
      return cityChanged(this);
    }
    return orElse();
  }
}

abstract class _CityChanged implements EventCityPickerEvent {
  const factory _CityChanged(
      {required final String cityId,
      required final String cityName}) = _$_CityChanged;

  String get cityId;
  String get cityName;
  @JsonKey(ignore: true)
  _$$_CityChangedCopyWith<_$_CityChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_CityFilterResettedCopyWith<$Res> {
  factory _$$_CityFilterResettedCopyWith(_$_CityFilterResetted value,
          $Res Function(_$_CityFilterResetted) then) =
      __$$_CityFilterResettedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_CityFilterResettedCopyWithImpl<$Res>
    extends _$EventCityPickerEventCopyWithImpl<$Res, _$_CityFilterResetted>
    implements _$$_CityFilterResettedCopyWith<$Res> {
  __$$_CityFilterResettedCopyWithImpl(
      _$_CityFilterResetted _value, $Res Function(_$_CityFilterResetted) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_CityFilterResetted implements _CityFilterResetted {
  const _$_CityFilterResetted();

  @override
  String toString() {
    return 'EventCityPickerEvent.cityFilterResetted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_CityFilterResetted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CityFilter filter, List<City> availableCities)
        pickerInitialized,
    required TResult Function(String cityId, String cityName) cityChanged,
    required TResult Function() cityFilterResetted,
    required TResult Function(String phrase) searchChanged,
  }) {
    return cityFilterResetted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CityFilter filter, List<City> availableCities)?
        pickerInitialized,
    TResult? Function(String cityId, String cityName)? cityChanged,
    TResult? Function()? cityFilterResetted,
    TResult? Function(String phrase)? searchChanged,
  }) {
    return cityFilterResetted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CityFilter filter, List<City> availableCities)?
        pickerInitialized,
    TResult Function(String cityId, String cityName)? cityChanged,
    TResult Function()? cityFilterResetted,
    TResult Function(String phrase)? searchChanged,
    required TResult orElse(),
  }) {
    if (cityFilterResetted != null) {
      return cityFilterResetted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PickerInitialized value) pickerInitialized,
    required TResult Function(_CityChanged value) cityChanged,
    required TResult Function(_CityFilterResetted value) cityFilterResetted,
    required TResult Function(_SearchChanged value) searchChanged,
  }) {
    return cityFilterResetted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PickerInitialized value)? pickerInitialized,
    TResult? Function(_CityChanged value)? cityChanged,
    TResult? Function(_CityFilterResetted value)? cityFilterResetted,
    TResult? Function(_SearchChanged value)? searchChanged,
  }) {
    return cityFilterResetted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PickerInitialized value)? pickerInitialized,
    TResult Function(_CityChanged value)? cityChanged,
    TResult Function(_CityFilterResetted value)? cityFilterResetted,
    TResult Function(_SearchChanged value)? searchChanged,
    required TResult orElse(),
  }) {
    if (cityFilterResetted != null) {
      return cityFilterResetted(this);
    }
    return orElse();
  }
}

abstract class _CityFilterResetted implements EventCityPickerEvent {
  const factory _CityFilterResetted() = _$_CityFilterResetted;
}

/// @nodoc
abstract class _$$_SearchChangedCopyWith<$Res> {
  factory _$$_SearchChangedCopyWith(
          _$_SearchChanged value, $Res Function(_$_SearchChanged) then) =
      __$$_SearchChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({String phrase});
}

/// @nodoc
class __$$_SearchChangedCopyWithImpl<$Res>
    extends _$EventCityPickerEventCopyWithImpl<$Res, _$_SearchChanged>
    implements _$$_SearchChangedCopyWith<$Res> {
  __$$_SearchChangedCopyWithImpl(
      _$_SearchChanged _value, $Res Function(_$_SearchChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phrase = null,
  }) {
    return _then(_$_SearchChanged(
      null == phrase
          ? _value.phrase
          : phrase // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_SearchChanged implements _SearchChanged {
  const _$_SearchChanged(this.phrase);

  @override
  final String phrase;

  @override
  String toString() {
    return 'EventCityPickerEvent.searchChanged(phrase: $phrase)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SearchChanged &&
            (identical(other.phrase, phrase) || other.phrase == phrase));
  }

  @override
  int get hashCode => Object.hash(runtimeType, phrase);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SearchChangedCopyWith<_$_SearchChanged> get copyWith =>
      __$$_SearchChangedCopyWithImpl<_$_SearchChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CityFilter filter, List<City> availableCities)
        pickerInitialized,
    required TResult Function(String cityId, String cityName) cityChanged,
    required TResult Function() cityFilterResetted,
    required TResult Function(String phrase) searchChanged,
  }) {
    return searchChanged(phrase);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CityFilter filter, List<City> availableCities)?
        pickerInitialized,
    TResult? Function(String cityId, String cityName)? cityChanged,
    TResult? Function()? cityFilterResetted,
    TResult? Function(String phrase)? searchChanged,
  }) {
    return searchChanged?.call(phrase);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CityFilter filter, List<City> availableCities)?
        pickerInitialized,
    TResult Function(String cityId, String cityName)? cityChanged,
    TResult Function()? cityFilterResetted,
    TResult Function(String phrase)? searchChanged,
    required TResult orElse(),
  }) {
    if (searchChanged != null) {
      return searchChanged(phrase);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PickerInitialized value) pickerInitialized,
    required TResult Function(_CityChanged value) cityChanged,
    required TResult Function(_CityFilterResetted value) cityFilterResetted,
    required TResult Function(_SearchChanged value) searchChanged,
  }) {
    return searchChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PickerInitialized value)? pickerInitialized,
    TResult? Function(_CityChanged value)? cityChanged,
    TResult? Function(_CityFilterResetted value)? cityFilterResetted,
    TResult? Function(_SearchChanged value)? searchChanged,
  }) {
    return searchChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PickerInitialized value)? pickerInitialized,
    TResult Function(_CityChanged value)? cityChanged,
    TResult Function(_CityFilterResetted value)? cityFilterResetted,
    TResult Function(_SearchChanged value)? searchChanged,
    required TResult orElse(),
  }) {
    if (searchChanged != null) {
      return searchChanged(this);
    }
    return orElse();
  }
}

abstract class _SearchChanged implements EventCityPickerEvent {
  const factory _SearchChanged(final String phrase) = _$_SearchChanged;

  String get phrase;
  @JsonKey(ignore: true)
  _$$_SearchChangedCopyWith<_$_SearchChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$EventCityPickerState {
  CityFilter get filter => throw _privateConstructorUsedError;
  bool get isCityFilterApplied => throw _privateConstructorUsedError;
  List<City> get filteredCities => throw _privateConstructorUsedError;
  List<City> get availableCities => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EventCityPickerStateCopyWith<EventCityPickerState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EventCityPickerStateCopyWith<$Res> {
  factory $EventCityPickerStateCopyWith(EventCityPickerState value,
          $Res Function(EventCityPickerState) then) =
      _$EventCityPickerStateCopyWithImpl<$Res, EventCityPickerState>;
  @useResult
  $Res call(
      {CityFilter filter,
      bool isCityFilterApplied,
      List<City> filteredCities,
      List<City> availableCities});
}

/// @nodoc
class _$EventCityPickerStateCopyWithImpl<$Res,
        $Val extends EventCityPickerState>
    implements $EventCityPickerStateCopyWith<$Res> {
  _$EventCityPickerStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? filter = null,
    Object? isCityFilterApplied = null,
    Object? filteredCities = null,
    Object? availableCities = null,
  }) {
    return _then(_value.copyWith(
      filter: null == filter
          ? _value.filter
          : filter // ignore: cast_nullable_to_non_nullable
              as CityFilter,
      isCityFilterApplied: null == isCityFilterApplied
          ? _value.isCityFilterApplied
          : isCityFilterApplied // ignore: cast_nullable_to_non_nullable
              as bool,
      filteredCities: null == filteredCities
          ? _value.filteredCities
          : filteredCities // ignore: cast_nullable_to_non_nullable
              as List<City>,
      availableCities: null == availableCities
          ? _value.availableCities
          : availableCities // ignore: cast_nullable_to_non_nullable
              as List<City>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_EventCityPickerStateCopyWith<$Res>
    implements $EventCityPickerStateCopyWith<$Res> {
  factory _$$_EventCityPickerStateCopyWith(_$_EventCityPickerState value,
          $Res Function(_$_EventCityPickerState) then) =
      __$$_EventCityPickerStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {CityFilter filter,
      bool isCityFilterApplied,
      List<City> filteredCities,
      List<City> availableCities});
}

/// @nodoc
class __$$_EventCityPickerStateCopyWithImpl<$Res>
    extends _$EventCityPickerStateCopyWithImpl<$Res, _$_EventCityPickerState>
    implements _$$_EventCityPickerStateCopyWith<$Res> {
  __$$_EventCityPickerStateCopyWithImpl(_$_EventCityPickerState _value,
      $Res Function(_$_EventCityPickerState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? filter = null,
    Object? isCityFilterApplied = null,
    Object? filteredCities = null,
    Object? availableCities = null,
  }) {
    return _then(_$_EventCityPickerState(
      filter: null == filter
          ? _value.filter
          : filter // ignore: cast_nullable_to_non_nullable
              as CityFilter,
      isCityFilterApplied: null == isCityFilterApplied
          ? _value.isCityFilterApplied
          : isCityFilterApplied // ignore: cast_nullable_to_non_nullable
              as bool,
      filteredCities: null == filteredCities
          ? _value._filteredCities
          : filteredCities // ignore: cast_nullable_to_non_nullable
              as List<City>,
      availableCities: null == availableCities
          ? _value._availableCities
          : availableCities // ignore: cast_nullable_to_non_nullable
              as List<City>,
    ));
  }
}

/// @nodoc

class _$_EventCityPickerState implements _EventCityPickerState {
  const _$_EventCityPickerState(
      {required this.filter,
      required this.isCityFilterApplied,
      required final List<City> filteredCities,
      required final List<City> availableCities})
      : _filteredCities = filteredCities,
        _availableCities = availableCities;

  @override
  final CityFilter filter;
  @override
  final bool isCityFilterApplied;
  final List<City> _filteredCities;
  @override
  List<City> get filteredCities {
    if (_filteredCities is EqualUnmodifiableListView) return _filteredCities;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_filteredCities);
  }

  final List<City> _availableCities;
  @override
  List<City> get availableCities {
    if (_availableCities is EqualUnmodifiableListView) return _availableCities;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_availableCities);
  }

  @override
  String toString() {
    return 'EventCityPickerState(filter: $filter, isCityFilterApplied: $isCityFilterApplied, filteredCities: $filteredCities, availableCities: $availableCities)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EventCityPickerState &&
            (identical(other.filter, filter) || other.filter == filter) &&
            (identical(other.isCityFilterApplied, isCityFilterApplied) ||
                other.isCityFilterApplied == isCityFilterApplied) &&
            const DeepCollectionEquality()
                .equals(other._filteredCities, _filteredCities) &&
            const DeepCollectionEquality()
                .equals(other._availableCities, _availableCities));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      filter,
      isCityFilterApplied,
      const DeepCollectionEquality().hash(_filteredCities),
      const DeepCollectionEquality().hash(_availableCities));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EventCityPickerStateCopyWith<_$_EventCityPickerState> get copyWith =>
      __$$_EventCityPickerStateCopyWithImpl<_$_EventCityPickerState>(
          this, _$identity);
}

abstract class _EventCityPickerState implements EventCityPickerState {
  const factory _EventCityPickerState(
      {required final CityFilter filter,
      required final bool isCityFilterApplied,
      required final List<City> filteredCities,
      required final List<City> availableCities}) = _$_EventCityPickerState;

  @override
  CityFilter get filter;
  @override
  bool get isCityFilterApplied;
  @override
  List<City> get filteredCities;
  @override
  List<City> get availableCities;
  @override
  @JsonKey(ignore: true)
  _$$_EventCityPickerStateCopyWith<_$_EventCityPickerState> get copyWith =>
      throw _privateConstructorUsedError;
}
