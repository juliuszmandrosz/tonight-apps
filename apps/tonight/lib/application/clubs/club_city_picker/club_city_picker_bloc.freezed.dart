// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'club_city_picker_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ClubCityPickerEvent {
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
abstract class $ClubCityPickerEventCopyWith<$Res> {
  factory $ClubCityPickerEventCopyWith(
          ClubCityPickerEvent value, $Res Function(ClubCityPickerEvent) then) =
      _$ClubCityPickerEventCopyWithImpl<$Res, ClubCityPickerEvent>;
}

/// @nodoc
class _$ClubCityPickerEventCopyWithImpl<$Res, $Val extends ClubCityPickerEvent>
    implements $ClubCityPickerEventCopyWith<$Res> {
  _$ClubCityPickerEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$PickerInitializedImplCopyWith<$Res> {
  factory _$$PickerInitializedImplCopyWith(_$PickerInitializedImpl value,
          $Res Function(_$PickerInitializedImpl) then) =
      __$$PickerInitializedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({CityFilter filter, List<City> availableCities});
}

/// @nodoc
class __$$PickerInitializedImplCopyWithImpl<$Res>
    extends _$ClubCityPickerEventCopyWithImpl<$Res, _$PickerInitializedImpl>
    implements _$$PickerInitializedImplCopyWith<$Res> {
  __$$PickerInitializedImplCopyWithImpl(_$PickerInitializedImpl _value,
      $Res Function(_$PickerInitializedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? filter = null,
    Object? availableCities = null,
  }) {
    return _then(_$PickerInitializedImpl(
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

class _$PickerInitializedImpl implements _PickerInitialized {
  const _$PickerInitializedImpl(
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
    return 'ClubCityPickerEvent.pickerInitialized(filter: $filter, availableCities: $availableCities)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PickerInitializedImpl &&
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
  _$$PickerInitializedImplCopyWith<_$PickerInitializedImpl> get copyWith =>
      __$$PickerInitializedImplCopyWithImpl<_$PickerInitializedImpl>(
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

abstract class _PickerInitialized implements ClubCityPickerEvent {
  const factory _PickerInitialized(
      {required final CityFilter filter,
      required final List<City> availableCities}) = _$PickerInitializedImpl;

  CityFilter get filter;
  List<City> get availableCities;
  @JsonKey(ignore: true)
  _$$PickerInitializedImplCopyWith<_$PickerInitializedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CityChangedImplCopyWith<$Res> {
  factory _$$CityChangedImplCopyWith(
          _$CityChangedImpl value, $Res Function(_$CityChangedImpl) then) =
      __$$CityChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String cityId, String cityName});
}

/// @nodoc
class __$$CityChangedImplCopyWithImpl<$Res>
    extends _$ClubCityPickerEventCopyWithImpl<$Res, _$CityChangedImpl>
    implements _$$CityChangedImplCopyWith<$Res> {
  __$$CityChangedImplCopyWithImpl(
      _$CityChangedImpl _value, $Res Function(_$CityChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cityId = null,
    Object? cityName = null,
  }) {
    return _then(_$CityChangedImpl(
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

class _$CityChangedImpl implements _CityChanged {
  const _$CityChangedImpl({required this.cityId, required this.cityName});

  @override
  final String cityId;
  @override
  final String cityName;

  @override
  String toString() {
    return 'ClubCityPickerEvent.cityChanged(cityId: $cityId, cityName: $cityName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CityChangedImpl &&
            (identical(other.cityId, cityId) || other.cityId == cityId) &&
            (identical(other.cityName, cityName) ||
                other.cityName == cityName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, cityId, cityName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CityChangedImplCopyWith<_$CityChangedImpl> get copyWith =>
      __$$CityChangedImplCopyWithImpl<_$CityChangedImpl>(this, _$identity);

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

abstract class _CityChanged implements ClubCityPickerEvent {
  const factory _CityChanged(
      {required final String cityId,
      required final String cityName}) = _$CityChangedImpl;

  String get cityId;
  String get cityName;
  @JsonKey(ignore: true)
  _$$CityChangedImplCopyWith<_$CityChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CityFilterResettedImplCopyWith<$Res> {
  factory _$$CityFilterResettedImplCopyWith(_$CityFilterResettedImpl value,
          $Res Function(_$CityFilterResettedImpl) then) =
      __$$CityFilterResettedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CityFilterResettedImplCopyWithImpl<$Res>
    extends _$ClubCityPickerEventCopyWithImpl<$Res, _$CityFilterResettedImpl>
    implements _$$CityFilterResettedImplCopyWith<$Res> {
  __$$CityFilterResettedImplCopyWithImpl(_$CityFilterResettedImpl _value,
      $Res Function(_$CityFilterResettedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CityFilterResettedImpl implements _CityFilterResetted {
  const _$CityFilterResettedImpl();

  @override
  String toString() {
    return 'ClubCityPickerEvent.cityFilterResetted()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CityFilterResettedImpl);
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

abstract class _CityFilterResetted implements ClubCityPickerEvent {
  const factory _CityFilterResetted() = _$CityFilterResettedImpl;
}

/// @nodoc
abstract class _$$SearchChangedImplCopyWith<$Res> {
  factory _$$SearchChangedImplCopyWith(
          _$SearchChangedImpl value, $Res Function(_$SearchChangedImpl) then) =
      __$$SearchChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String phrase});
}

/// @nodoc
class __$$SearchChangedImplCopyWithImpl<$Res>
    extends _$ClubCityPickerEventCopyWithImpl<$Res, _$SearchChangedImpl>
    implements _$$SearchChangedImplCopyWith<$Res> {
  __$$SearchChangedImplCopyWithImpl(
      _$SearchChangedImpl _value, $Res Function(_$SearchChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phrase = null,
  }) {
    return _then(_$SearchChangedImpl(
      null == phrase
          ? _value.phrase
          : phrase // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SearchChangedImpl implements _SearchChanged {
  const _$SearchChangedImpl(this.phrase);

  @override
  final String phrase;

  @override
  String toString() {
    return 'ClubCityPickerEvent.searchChanged(phrase: $phrase)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchChangedImpl &&
            (identical(other.phrase, phrase) || other.phrase == phrase));
  }

  @override
  int get hashCode => Object.hash(runtimeType, phrase);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchChangedImplCopyWith<_$SearchChangedImpl> get copyWith =>
      __$$SearchChangedImplCopyWithImpl<_$SearchChangedImpl>(this, _$identity);

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

abstract class _SearchChanged implements ClubCityPickerEvent {
  const factory _SearchChanged(final String phrase) = _$SearchChangedImpl;

  String get phrase;
  @JsonKey(ignore: true)
  _$$SearchChangedImplCopyWith<_$SearchChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ClubCityPickerState {
  CityFilter get filter => throw _privateConstructorUsedError;
  bool get isCityFilterApplied => throw _privateConstructorUsedError;
  List<City> get filteredCities => throw _privateConstructorUsedError;
  List<City> get availableCities => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ClubCityPickerStateCopyWith<ClubCityPickerState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClubCityPickerStateCopyWith<$Res> {
  factory $ClubCityPickerStateCopyWith(
          ClubCityPickerState value, $Res Function(ClubCityPickerState) then) =
      _$ClubCityPickerStateCopyWithImpl<$Res, ClubCityPickerState>;
  @useResult
  $Res call(
      {CityFilter filter,
      bool isCityFilterApplied,
      List<City> filteredCities,
      List<City> availableCities});
}

/// @nodoc
class _$ClubCityPickerStateCopyWithImpl<$Res, $Val extends ClubCityPickerState>
    implements $ClubCityPickerStateCopyWith<$Res> {
  _$ClubCityPickerStateCopyWithImpl(this._value, this._then);

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
abstract class _$$ClubCityPickerStateImplCopyWith<$Res>
    implements $ClubCityPickerStateCopyWith<$Res> {
  factory _$$ClubCityPickerStateImplCopyWith(_$ClubCityPickerStateImpl value,
          $Res Function(_$ClubCityPickerStateImpl) then) =
      __$$ClubCityPickerStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {CityFilter filter,
      bool isCityFilterApplied,
      List<City> filteredCities,
      List<City> availableCities});
}

/// @nodoc
class __$$ClubCityPickerStateImplCopyWithImpl<$Res>
    extends _$ClubCityPickerStateCopyWithImpl<$Res, _$ClubCityPickerStateImpl>
    implements _$$ClubCityPickerStateImplCopyWith<$Res> {
  __$$ClubCityPickerStateImplCopyWithImpl(_$ClubCityPickerStateImpl _value,
      $Res Function(_$ClubCityPickerStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? filter = null,
    Object? isCityFilterApplied = null,
    Object? filteredCities = null,
    Object? availableCities = null,
  }) {
    return _then(_$ClubCityPickerStateImpl(
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

class _$ClubCityPickerStateImpl implements _ClubCityPickerState {
  const _$ClubCityPickerStateImpl(
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
    return 'ClubCityPickerState(filter: $filter, isCityFilterApplied: $isCityFilterApplied, filteredCities: $filteredCities, availableCities: $availableCities)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClubCityPickerStateImpl &&
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
  _$$ClubCityPickerStateImplCopyWith<_$ClubCityPickerStateImpl> get copyWith =>
      __$$ClubCityPickerStateImplCopyWithImpl<_$ClubCityPickerStateImpl>(
          this, _$identity);
}

abstract class _ClubCityPickerState implements ClubCityPickerState {
  const factory _ClubCityPickerState(
      {required final CityFilter filter,
      required final bool isCityFilterApplied,
      required final List<City> filteredCities,
      required final List<City> availableCities}) = _$ClubCityPickerStateImpl;

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
  _$$ClubCityPickerStateImplCopyWith<_$ClubCityPickerStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
