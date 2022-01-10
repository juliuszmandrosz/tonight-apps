// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'club_filters_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ClubFiltersEventTearOff {
  const _$ClubFiltersEventTearOff();

  OnSearchFieldUpdated onSearchFieldUpdated(String value) {
    return OnSearchFieldUpdated(
      value,
    );
  }

  OnFilterDetailsUpdated onFilterDetailsUpdated(
      ClubFilterSettings clubFilterSettings) {
    return OnFilterDetailsUpdated(
      clubFilterSettings,
    );
  }
}

/// @nodoc
const $ClubFiltersEvent = _$ClubFiltersEventTearOff();

/// @nodoc
mixin _$ClubFiltersEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String value) onSearchFieldUpdated,
    required TResult Function(ClubFilterSettings clubFilterSettings)
        onFilterDetailsUpdated,
  }) =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String value)? onSearchFieldUpdated,
    TResult Function(ClubFilterSettings clubFilterSettings)?
        onFilterDetailsUpdated,
  }) =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String value)? onSearchFieldUpdated,
    TResult Function(ClubFilterSettings clubFilterSettings)?
        onFilterDetailsUpdated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnSearchFieldUpdated value) onSearchFieldUpdated,
    required TResult Function(OnFilterDetailsUpdated value)
        onFilterDetailsUpdated,
  }) =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(OnSearchFieldUpdated value)? onSearchFieldUpdated,
    TResult Function(OnFilterDetailsUpdated value)? onFilterDetailsUpdated,
  }) =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnSearchFieldUpdated value)? onSearchFieldUpdated,
    TResult Function(OnFilterDetailsUpdated value)? onFilterDetailsUpdated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClubFiltersEventCopyWith<$Res> {
  factory $ClubFiltersEventCopyWith(
          ClubFiltersEvent value, $Res Function(ClubFiltersEvent) then) =
      _$ClubFiltersEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ClubFiltersEventCopyWithImpl<$Res>
    implements $ClubFiltersEventCopyWith<$Res> {
  _$ClubFiltersEventCopyWithImpl(this._value, this._then);

  final ClubFiltersEvent _value;

  // ignore: unused_field
  final $Res Function(ClubFiltersEvent) _then;
}

/// @nodoc
abstract class $OnSearchFieldUpdatedCopyWith<$Res> {
  factory $OnSearchFieldUpdatedCopyWith(OnSearchFieldUpdated value,
          $Res Function(OnSearchFieldUpdated) then) =
      _$OnSearchFieldUpdatedCopyWithImpl<$Res>;

  $Res call({String value});
}

/// @nodoc
class _$OnSearchFieldUpdatedCopyWithImpl<$Res>
    extends _$ClubFiltersEventCopyWithImpl<$Res>
    implements $OnSearchFieldUpdatedCopyWith<$Res> {
  _$OnSearchFieldUpdatedCopyWithImpl(
      OnSearchFieldUpdated _value, $Res Function(OnSearchFieldUpdated) _then)
      : super(_value, (v) => _then(v as OnSearchFieldUpdated));

  @override
  OnSearchFieldUpdated get _value => super._value as OnSearchFieldUpdated;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(OnSearchFieldUpdated(
      value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$OnSearchFieldUpdated extends OnSearchFieldUpdated {
  const _$OnSearchFieldUpdated(this.value) : super._();

  @override
  final String value;

  @override
  String toString() {
    return 'ClubFiltersEvent.onSearchFieldUpdated(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is OnSearchFieldUpdated &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(value));

  @JsonKey(ignore: true)
  @override
  $OnSearchFieldUpdatedCopyWith<OnSearchFieldUpdated> get copyWith =>
      _$OnSearchFieldUpdatedCopyWithImpl<OnSearchFieldUpdated>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String value) onSearchFieldUpdated,
    required TResult Function(ClubFilterSettings clubFilterSettings)
        onFilterDetailsUpdated,
  }) {
    return onSearchFieldUpdated(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String value)? onSearchFieldUpdated,
    TResult Function(ClubFilterSettings clubFilterSettings)?
        onFilterDetailsUpdated,
  }) {
    return onSearchFieldUpdated?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String value)? onSearchFieldUpdated,
    TResult Function(ClubFilterSettings clubFilterSettings)?
        onFilterDetailsUpdated,
    required TResult orElse(),
  }) {
    if (onSearchFieldUpdated != null) {
      return onSearchFieldUpdated(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnSearchFieldUpdated value) onSearchFieldUpdated,
    required TResult Function(OnFilterDetailsUpdated value)
        onFilterDetailsUpdated,
  }) {
    return onSearchFieldUpdated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(OnSearchFieldUpdated value)? onSearchFieldUpdated,
    TResult Function(OnFilterDetailsUpdated value)? onFilterDetailsUpdated,
  }) {
    return onSearchFieldUpdated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnSearchFieldUpdated value)? onSearchFieldUpdated,
    TResult Function(OnFilterDetailsUpdated value)? onFilterDetailsUpdated,
    required TResult orElse(),
  }) {
    if (onSearchFieldUpdated != null) {
      return onSearchFieldUpdated(this);
    }
    return orElse();
  }
}

abstract class OnSearchFieldUpdated extends ClubFiltersEvent {
  const factory OnSearchFieldUpdated(String value) = _$OnSearchFieldUpdated;

  const OnSearchFieldUpdated._() : super._();

  String get value;

  @JsonKey(ignore: true)
  $OnSearchFieldUpdatedCopyWith<OnSearchFieldUpdated> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OnFilterDetailsUpdatedCopyWith<$Res> {
  factory $OnFilterDetailsUpdatedCopyWith(OnFilterDetailsUpdated value,
          $Res Function(OnFilterDetailsUpdated) then) =
      _$OnFilterDetailsUpdatedCopyWithImpl<$Res>;

  $Res call({ClubFilterSettings clubFilterSettings});

  $ClubFilterSettingsCopyWith<$Res> get clubFilterSettings;
}

/// @nodoc
class _$OnFilterDetailsUpdatedCopyWithImpl<$Res>
    extends _$ClubFiltersEventCopyWithImpl<$Res>
    implements $OnFilterDetailsUpdatedCopyWith<$Res> {
  _$OnFilterDetailsUpdatedCopyWithImpl(OnFilterDetailsUpdated _value,
      $Res Function(OnFilterDetailsUpdated) _then)
      : super(_value, (v) => _then(v as OnFilterDetailsUpdated));

  @override
  OnFilterDetailsUpdated get _value => super._value as OnFilterDetailsUpdated;

  @override
  $Res call({
    Object? clubFilterSettings = freezed,
  }) {
    return _then(OnFilterDetailsUpdated(
      clubFilterSettings == freezed
          ? _value.clubFilterSettings
          : clubFilterSettings // ignore: cast_nullable_to_non_nullable
              as ClubFilterSettings,
    ));
  }

  @override
  $ClubFilterSettingsCopyWith<$Res> get clubFilterSettings {
    return $ClubFilterSettingsCopyWith<$Res>(_value.clubFilterSettings,
        (value) {
      return _then(_value.copyWith(clubFilterSettings: value));
    });
  }
}

/// @nodoc

class _$OnFilterDetailsUpdated extends OnFilterDetailsUpdated {
  const _$OnFilterDetailsUpdated(this.clubFilterSettings) : super._();

  @override
  final ClubFilterSettings clubFilterSettings;

  @override
  String toString() {
    return 'ClubFiltersEvent.onFilterDetailsUpdated(clubFilterSettings: $clubFilterSettings)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is OnFilterDetailsUpdated &&
            const DeepCollectionEquality()
                .equals(other.clubFilterSettings, clubFilterSettings));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(clubFilterSettings));

  @JsonKey(ignore: true)
  @override
  $OnFilterDetailsUpdatedCopyWith<OnFilterDetailsUpdated> get copyWith =>
      _$OnFilterDetailsUpdatedCopyWithImpl<OnFilterDetailsUpdated>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String value) onSearchFieldUpdated,
    required TResult Function(ClubFilterSettings clubFilterSettings)
        onFilterDetailsUpdated,
  }) {
    return onFilterDetailsUpdated(clubFilterSettings);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String value)? onSearchFieldUpdated,
    TResult Function(ClubFilterSettings clubFilterSettings)?
        onFilterDetailsUpdated,
  }) {
    return onFilterDetailsUpdated?.call(clubFilterSettings);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String value)? onSearchFieldUpdated,
    TResult Function(ClubFilterSettings clubFilterSettings)?
        onFilterDetailsUpdated,
    required TResult orElse(),
  }) {
    if (onFilterDetailsUpdated != null) {
      return onFilterDetailsUpdated(clubFilterSettings);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnSearchFieldUpdated value) onSearchFieldUpdated,
    required TResult Function(OnFilterDetailsUpdated value)
        onFilterDetailsUpdated,
  }) {
    return onFilterDetailsUpdated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(OnSearchFieldUpdated value)? onSearchFieldUpdated,
    TResult Function(OnFilterDetailsUpdated value)? onFilterDetailsUpdated,
  }) {
    return onFilterDetailsUpdated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnSearchFieldUpdated value)? onSearchFieldUpdated,
    TResult Function(OnFilterDetailsUpdated value)? onFilterDetailsUpdated,
    required TResult orElse(),
  }) {
    if (onFilterDetailsUpdated != null) {
      return onFilterDetailsUpdated(this);
    }
    return orElse();
  }
}

abstract class OnFilterDetailsUpdated extends ClubFiltersEvent {
  const factory OnFilterDetailsUpdated(ClubFilterSettings clubFilterSettings) =
      _$OnFilterDetailsUpdated;

  const OnFilterDetailsUpdated._() : super._();

  ClubFilterSettings get clubFilterSettings;

  @JsonKey(ignore: true)
  $OnFilterDetailsUpdatedCopyWith<OnFilterDetailsUpdated> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$ClubFiltersStateTearOff {
  const _$ClubFiltersStateTearOff();

  _ClubFiltersInitial initial() {
    return const _ClubFiltersInitial();
  }

  _ClubFiltersUpdated filtersUpdated(ClubFilter clubFilter) {
    return _ClubFiltersUpdated(
      clubFilter,
    );
  }
}

/// @nodoc
const $ClubFiltersState = _$ClubFiltersStateTearOff();

/// @nodoc
mixin _$ClubFiltersState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(ClubFilter clubFilter) filtersUpdated,
  }) =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(ClubFilter clubFilter)? filtersUpdated,
  }) =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(ClubFilter clubFilter)? filtersUpdated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ClubFiltersInitial value) initial,
    required TResult Function(_ClubFiltersUpdated value) filtersUpdated,
  }) =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ClubFiltersInitial value)? initial,
    TResult Function(_ClubFiltersUpdated value)? filtersUpdated,
  }) =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ClubFiltersInitial value)? initial,
    TResult Function(_ClubFiltersUpdated value)? filtersUpdated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClubFiltersStateCopyWith<$Res> {
  factory $ClubFiltersStateCopyWith(
          ClubFiltersState value, $Res Function(ClubFiltersState) then) =
      _$ClubFiltersStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$ClubFiltersStateCopyWithImpl<$Res>
    implements $ClubFiltersStateCopyWith<$Res> {
  _$ClubFiltersStateCopyWithImpl(this._value, this._then);

  final ClubFiltersState _value;

  // ignore: unused_field
  final $Res Function(ClubFiltersState) _then;
}

/// @nodoc
abstract class _$ClubFiltersInitialCopyWith<$Res> {
  factory _$ClubFiltersInitialCopyWith(
          _ClubFiltersInitial value, $Res Function(_ClubFiltersInitial) then) =
      __$ClubFiltersInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$ClubFiltersInitialCopyWithImpl<$Res>
    extends _$ClubFiltersStateCopyWithImpl<$Res>
    implements _$ClubFiltersInitialCopyWith<$Res> {
  __$ClubFiltersInitialCopyWithImpl(
      _ClubFiltersInitial _value, $Res Function(_ClubFiltersInitial) _then)
      : super(_value, (v) => _then(v as _ClubFiltersInitial));

  @override
  _ClubFiltersInitial get _value => super._value as _ClubFiltersInitial;
}

/// @nodoc

class _$_ClubFiltersInitial extends _ClubFiltersInitial {
  const _$_ClubFiltersInitial() : super._();

  @override
  String toString() {
    return 'ClubFiltersState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _ClubFiltersInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(ClubFilter clubFilter) filtersUpdated,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(ClubFilter clubFilter)? filtersUpdated,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(ClubFilter clubFilter)? filtersUpdated,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ClubFiltersInitial value) initial,
    required TResult Function(_ClubFiltersUpdated value) filtersUpdated,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ClubFiltersInitial value)? initial,
    TResult Function(_ClubFiltersUpdated value)? filtersUpdated,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ClubFiltersInitial value)? initial,
    TResult Function(_ClubFiltersUpdated value)? filtersUpdated,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _ClubFiltersInitial extends ClubFiltersState {
  const factory _ClubFiltersInitial() = _$_ClubFiltersInitial;

  const _ClubFiltersInitial._() : super._();
}

/// @nodoc
abstract class _$ClubFiltersUpdatedCopyWith<$Res> {
  factory _$ClubFiltersUpdatedCopyWith(
          _ClubFiltersUpdated value, $Res Function(_ClubFiltersUpdated) then) =
      __$ClubFiltersUpdatedCopyWithImpl<$Res>;

  $Res call({ClubFilter clubFilter});

  $ClubFilterCopyWith<$Res> get clubFilter;
}

/// @nodoc
class __$ClubFiltersUpdatedCopyWithImpl<$Res>
    extends _$ClubFiltersStateCopyWithImpl<$Res>
    implements _$ClubFiltersUpdatedCopyWith<$Res> {
  __$ClubFiltersUpdatedCopyWithImpl(
      _ClubFiltersUpdated _value, $Res Function(_ClubFiltersUpdated) _then)
      : super(_value, (v) => _then(v as _ClubFiltersUpdated));

  @override
  _ClubFiltersUpdated get _value => super._value as _ClubFiltersUpdated;

  @override
  $Res call({
    Object? clubFilter = freezed,
  }) {
    return _then(_ClubFiltersUpdated(
      clubFilter == freezed
          ? _value.clubFilter
          : clubFilter // ignore: cast_nullable_to_non_nullable
              as ClubFilter,
    ));
  }

  @override
  $ClubFilterCopyWith<$Res> get clubFilter {
    return $ClubFilterCopyWith<$Res>(_value.clubFilter, (value) {
      return _then(_value.copyWith(clubFilter: value));
    });
  }
}

/// @nodoc

class _$_ClubFiltersUpdated extends _ClubFiltersUpdated {
  const _$_ClubFiltersUpdated(this.clubFilter) : super._();

  @override
  final ClubFilter clubFilter;

  @override
  String toString() {
    return 'ClubFiltersState.filtersUpdated(clubFilter: $clubFilter)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ClubFiltersUpdated &&
            const DeepCollectionEquality()
                .equals(other.clubFilter, clubFilter));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(clubFilter));

  @JsonKey(ignore: true)
  @override
  _$ClubFiltersUpdatedCopyWith<_ClubFiltersUpdated> get copyWith =>
      __$ClubFiltersUpdatedCopyWithImpl<_ClubFiltersUpdated>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(ClubFilter clubFilter) filtersUpdated,
  }) {
    return filtersUpdated(clubFilter);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(ClubFilter clubFilter)? filtersUpdated,
  }) {
    return filtersUpdated?.call(clubFilter);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(ClubFilter clubFilter)? filtersUpdated,
    required TResult orElse(),
  }) {
    if (filtersUpdated != null) {
      return filtersUpdated(clubFilter);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ClubFiltersInitial value) initial,
    required TResult Function(_ClubFiltersUpdated value) filtersUpdated,
  }) {
    return filtersUpdated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ClubFiltersInitial value)? initial,
    TResult Function(_ClubFiltersUpdated value)? filtersUpdated,
  }) {
    return filtersUpdated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ClubFiltersInitial value)? initial,
    TResult Function(_ClubFiltersUpdated value)? filtersUpdated,
    required TResult orElse(),
  }) {
    if (filtersUpdated != null) {
      return filtersUpdated(this);
    }
    return orElse();
  }
}

abstract class _ClubFiltersUpdated extends ClubFiltersState {
  const factory _ClubFiltersUpdated(ClubFilter clubFilter) =
      _$_ClubFiltersUpdated;

  const _ClubFiltersUpdated._() : super._();

  ClubFilter get clubFilter;

  @JsonKey(ignore: true)
  _$ClubFiltersUpdatedCopyWith<_ClubFiltersUpdated> get copyWith =>
      throw _privateConstructorUsedError;
}
