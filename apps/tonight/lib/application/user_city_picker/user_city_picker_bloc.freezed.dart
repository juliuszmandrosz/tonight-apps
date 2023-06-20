// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_city_picker_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UserCityPickerEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Place place) placePicked,
    required TResult Function() searchResetted,
    required TResult Function(String phrase) searchChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Place place)? placePicked,
    TResult? Function()? searchResetted,
    TResult? Function(String phrase)? searchChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Place place)? placePicked,
    TResult Function()? searchResetted,
    TResult Function(String phrase)? searchChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PlacePicked value) placePicked,
    required TResult Function(_SearchResetted value) searchResetted,
    required TResult Function(_SearchChanged value) searchChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PlacePicked value)? placePicked,
    TResult? Function(_SearchResetted value)? searchResetted,
    TResult? Function(_SearchChanged value)? searchChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PlacePicked value)? placePicked,
    TResult Function(_SearchResetted value)? searchResetted,
    TResult Function(_SearchChanged value)? searchChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCityPickerEventCopyWith<$Res> {
  factory $UserCityPickerEventCopyWith(
          UserCityPickerEvent value, $Res Function(UserCityPickerEvent) then) =
      _$UserCityPickerEventCopyWithImpl<$Res, UserCityPickerEvent>;
}

/// @nodoc
class _$UserCityPickerEventCopyWithImpl<$Res, $Val extends UserCityPickerEvent>
    implements $UserCityPickerEventCopyWith<$Res> {
  _$UserCityPickerEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_PlacePickedCopyWith<$Res> {
  factory _$$_PlacePickedCopyWith(
          _$_PlacePicked value, $Res Function(_$_PlacePicked) then) =
      __$$_PlacePickedCopyWithImpl<$Res>;
  @useResult
  $Res call({Place place});
}

/// @nodoc
class __$$_PlacePickedCopyWithImpl<$Res>
    extends _$UserCityPickerEventCopyWithImpl<$Res, _$_PlacePicked>
    implements _$$_PlacePickedCopyWith<$Res> {
  __$$_PlacePickedCopyWithImpl(
      _$_PlacePicked _value, $Res Function(_$_PlacePicked) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? place = null,
  }) {
    return _then(_$_PlacePicked(
      null == place
          ? _value.place
          : place // ignore: cast_nullable_to_non_nullable
              as Place,
    ));
  }
}

/// @nodoc

class _$_PlacePicked implements _PlacePicked {
  const _$_PlacePicked(this.place);

  @override
  final Place place;

  @override
  String toString() {
    return 'UserCityPickerEvent.placePicked(place: $place)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PlacePicked &&
            (identical(other.place, place) || other.place == place));
  }

  @override
  int get hashCode => Object.hash(runtimeType, place);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PlacePickedCopyWith<_$_PlacePicked> get copyWith =>
      __$$_PlacePickedCopyWithImpl<_$_PlacePicked>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Place place) placePicked,
    required TResult Function() searchResetted,
    required TResult Function(String phrase) searchChanged,
  }) {
    return placePicked(place);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Place place)? placePicked,
    TResult? Function()? searchResetted,
    TResult? Function(String phrase)? searchChanged,
  }) {
    return placePicked?.call(place);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Place place)? placePicked,
    TResult Function()? searchResetted,
    TResult Function(String phrase)? searchChanged,
    required TResult orElse(),
  }) {
    if (placePicked != null) {
      return placePicked(place);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PlacePicked value) placePicked,
    required TResult Function(_SearchResetted value) searchResetted,
    required TResult Function(_SearchChanged value) searchChanged,
  }) {
    return placePicked(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PlacePicked value)? placePicked,
    TResult? Function(_SearchResetted value)? searchResetted,
    TResult? Function(_SearchChanged value)? searchChanged,
  }) {
    return placePicked?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PlacePicked value)? placePicked,
    TResult Function(_SearchResetted value)? searchResetted,
    TResult Function(_SearchChanged value)? searchChanged,
    required TResult orElse(),
  }) {
    if (placePicked != null) {
      return placePicked(this);
    }
    return orElse();
  }
}

abstract class _PlacePicked implements UserCityPickerEvent {
  const factory _PlacePicked(final Place place) = _$_PlacePicked;

  Place get place;
  @JsonKey(ignore: true)
  _$$_PlacePickedCopyWith<_$_PlacePicked> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SearchResettedCopyWith<$Res> {
  factory _$$_SearchResettedCopyWith(
          _$_SearchResetted value, $Res Function(_$_SearchResetted) then) =
      __$$_SearchResettedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SearchResettedCopyWithImpl<$Res>
    extends _$UserCityPickerEventCopyWithImpl<$Res, _$_SearchResetted>
    implements _$$_SearchResettedCopyWith<$Res> {
  __$$_SearchResettedCopyWithImpl(
      _$_SearchResetted _value, $Res Function(_$_SearchResetted) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_SearchResetted implements _SearchResetted {
  const _$_SearchResetted();

  @override
  String toString() {
    return 'UserCityPickerEvent.searchResetted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_SearchResetted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Place place) placePicked,
    required TResult Function() searchResetted,
    required TResult Function(String phrase) searchChanged,
  }) {
    return searchResetted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Place place)? placePicked,
    TResult? Function()? searchResetted,
    TResult? Function(String phrase)? searchChanged,
  }) {
    return searchResetted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Place place)? placePicked,
    TResult Function()? searchResetted,
    TResult Function(String phrase)? searchChanged,
    required TResult orElse(),
  }) {
    if (searchResetted != null) {
      return searchResetted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PlacePicked value) placePicked,
    required TResult Function(_SearchResetted value) searchResetted,
    required TResult Function(_SearchChanged value) searchChanged,
  }) {
    return searchResetted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PlacePicked value)? placePicked,
    TResult? Function(_SearchResetted value)? searchResetted,
    TResult? Function(_SearchChanged value)? searchChanged,
  }) {
    return searchResetted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PlacePicked value)? placePicked,
    TResult Function(_SearchResetted value)? searchResetted,
    TResult Function(_SearchChanged value)? searchChanged,
    required TResult orElse(),
  }) {
    if (searchResetted != null) {
      return searchResetted(this);
    }
    return orElse();
  }
}

abstract class _SearchResetted implements UserCityPickerEvent {
  const factory _SearchResetted() = _$_SearchResetted;
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
    extends _$UserCityPickerEventCopyWithImpl<$Res, _$_SearchChanged>
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
    return 'UserCityPickerEvent.searchChanged(phrase: $phrase)';
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
    required TResult Function(Place place) placePicked,
    required TResult Function() searchResetted,
    required TResult Function(String phrase) searchChanged,
  }) {
    return searchChanged(phrase);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Place place)? placePicked,
    TResult? Function()? searchResetted,
    TResult? Function(String phrase)? searchChanged,
  }) {
    return searchChanged?.call(phrase);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Place place)? placePicked,
    TResult Function()? searchResetted,
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
    required TResult Function(_PlacePicked value) placePicked,
    required TResult Function(_SearchResetted value) searchResetted,
    required TResult Function(_SearchChanged value) searchChanged,
  }) {
    return searchChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PlacePicked value)? placePicked,
    TResult? Function(_SearchResetted value)? searchResetted,
    TResult? Function(_SearchChanged value)? searchChanged,
  }) {
    return searchChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PlacePicked value)? placePicked,
    TResult Function(_SearchResetted value)? searchResetted,
    TResult Function(_SearchChanged value)? searchChanged,
    required TResult orElse(),
  }) {
    if (searchChanged != null) {
      return searchChanged(this);
    }
    return orElse();
  }
}

abstract class _SearchChanged implements UserCityPickerEvent {
  const factory _SearchChanged(final String phrase) = _$_SearchChanged;

  String get phrase;
  @JsonKey(ignore: true)
  _$$_SearchChangedCopyWith<_$_SearchChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$UserCityPickerState {
  List<Place> get places => throw _privateConstructorUsedError;
  String get previousPlacesSearch => throw _privateConstructorUsedError;
  CubitStatus get searchPlacesStatus => throw _privateConstructorUsedError;
  Option<Place> get selectedPlace => throw _privateConstructorUsedError;
  Option<PlacesFailure> get placesFailure => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserCityPickerStateCopyWith<UserCityPickerState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCityPickerStateCopyWith<$Res> {
  factory $UserCityPickerStateCopyWith(
          UserCityPickerState value, $Res Function(UserCityPickerState) then) =
      _$UserCityPickerStateCopyWithImpl<$Res, UserCityPickerState>;
  @useResult
  $Res call(
      {List<Place> places,
      String previousPlacesSearch,
      CubitStatus searchPlacesStatus,
      Option<Place> selectedPlace,
      Option<PlacesFailure> placesFailure});
}

/// @nodoc
class _$UserCityPickerStateCopyWithImpl<$Res, $Val extends UserCityPickerState>
    implements $UserCityPickerStateCopyWith<$Res> {
  _$UserCityPickerStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? places = null,
    Object? previousPlacesSearch = null,
    Object? searchPlacesStatus = null,
    Object? selectedPlace = null,
    Object? placesFailure = null,
  }) {
    return _then(_value.copyWith(
      places: null == places
          ? _value.places
          : places // ignore: cast_nullable_to_non_nullable
              as List<Place>,
      previousPlacesSearch: null == previousPlacesSearch
          ? _value.previousPlacesSearch
          : previousPlacesSearch // ignore: cast_nullable_to_non_nullable
              as String,
      searchPlacesStatus: null == searchPlacesStatus
          ? _value.searchPlacesStatus
          : searchPlacesStatus // ignore: cast_nullable_to_non_nullable
              as CubitStatus,
      selectedPlace: null == selectedPlace
          ? _value.selectedPlace
          : selectedPlace // ignore: cast_nullable_to_non_nullable
              as Option<Place>,
      placesFailure: null == placesFailure
          ? _value.placesFailure
          : placesFailure // ignore: cast_nullable_to_non_nullable
              as Option<PlacesFailure>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UserCityPickerStateCopyWith<$Res>
    implements $UserCityPickerStateCopyWith<$Res> {
  factory _$$_UserCityPickerStateCopyWith(_$_UserCityPickerState value,
          $Res Function(_$_UserCityPickerState) then) =
      __$$_UserCityPickerStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<Place> places,
      String previousPlacesSearch,
      CubitStatus searchPlacesStatus,
      Option<Place> selectedPlace,
      Option<PlacesFailure> placesFailure});
}

/// @nodoc
class __$$_UserCityPickerStateCopyWithImpl<$Res>
    extends _$UserCityPickerStateCopyWithImpl<$Res, _$_UserCityPickerState>
    implements _$$_UserCityPickerStateCopyWith<$Res> {
  __$$_UserCityPickerStateCopyWithImpl(_$_UserCityPickerState _value,
      $Res Function(_$_UserCityPickerState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? places = null,
    Object? previousPlacesSearch = null,
    Object? searchPlacesStatus = null,
    Object? selectedPlace = null,
    Object? placesFailure = null,
  }) {
    return _then(_$_UserCityPickerState(
      places: null == places
          ? _value._places
          : places // ignore: cast_nullable_to_non_nullable
              as List<Place>,
      previousPlacesSearch: null == previousPlacesSearch
          ? _value.previousPlacesSearch
          : previousPlacesSearch // ignore: cast_nullable_to_non_nullable
              as String,
      searchPlacesStatus: null == searchPlacesStatus
          ? _value.searchPlacesStatus
          : searchPlacesStatus // ignore: cast_nullable_to_non_nullable
              as CubitStatus,
      selectedPlace: null == selectedPlace
          ? _value.selectedPlace
          : selectedPlace // ignore: cast_nullable_to_non_nullable
              as Option<Place>,
      placesFailure: null == placesFailure
          ? _value.placesFailure
          : placesFailure // ignore: cast_nullable_to_non_nullable
              as Option<PlacesFailure>,
    ));
  }
}

/// @nodoc

class _$_UserCityPickerState implements _UserCityPickerState {
  const _$_UserCityPickerState(
      {required final List<Place> places,
      required this.previousPlacesSearch,
      required this.searchPlacesStatus,
      required this.selectedPlace,
      required this.placesFailure})
      : _places = places;

  final List<Place> _places;
  @override
  List<Place> get places {
    if (_places is EqualUnmodifiableListView) return _places;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_places);
  }

  @override
  final String previousPlacesSearch;
  @override
  final CubitStatus searchPlacesStatus;
  @override
  final Option<Place> selectedPlace;
  @override
  final Option<PlacesFailure> placesFailure;

  @override
  String toString() {
    return 'UserCityPickerState(places: $places, previousPlacesSearch: $previousPlacesSearch, searchPlacesStatus: $searchPlacesStatus, selectedPlace: $selectedPlace, placesFailure: $placesFailure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserCityPickerState &&
            const DeepCollectionEquality().equals(other._places, _places) &&
            (identical(other.previousPlacesSearch, previousPlacesSearch) ||
                other.previousPlacesSearch == previousPlacesSearch) &&
            (identical(other.searchPlacesStatus, searchPlacesStatus) ||
                other.searchPlacesStatus == searchPlacesStatus) &&
            (identical(other.selectedPlace, selectedPlace) ||
                other.selectedPlace == selectedPlace) &&
            (identical(other.placesFailure, placesFailure) ||
                other.placesFailure == placesFailure));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_places),
      previousPlacesSearch,
      searchPlacesStatus,
      selectedPlace,
      placesFailure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserCityPickerStateCopyWith<_$_UserCityPickerState> get copyWith =>
      __$$_UserCityPickerStateCopyWithImpl<_$_UserCityPickerState>(
          this, _$identity);
}

abstract class _UserCityPickerState implements UserCityPickerState {
  const factory _UserCityPickerState(
          {required final List<Place> places,
          required final String previousPlacesSearch,
          required final CubitStatus searchPlacesStatus,
          required final Option<Place> selectedPlace,
          required final Option<PlacesFailure> placesFailure}) =
      _$_UserCityPickerState;

  @override
  List<Place> get places;
  @override
  String get previousPlacesSearch;
  @override
  CubitStatus get searchPlacesStatus;
  @override
  Option<Place> get selectedPlace;
  @override
  Option<PlacesFailure> get placesFailure;
  @override
  @JsonKey(ignore: true)
  _$$_UserCityPickerStateCopyWith<_$_UserCityPickerState> get copyWith =>
      throw _privateConstructorUsedError;
}
