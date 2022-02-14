// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'club_filter.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ClubFilterTearOff {
  const _$ClubFilterTearOff();

  _ClubFilter call(
      {required String phrase,
      required ClubFilterSettings clubFilterSettings}) {
    return _ClubFilter(
      phrase: phrase,
      clubFilterSettings: clubFilterSettings,
    );
  }

  _ClubFilterEmpty empty() {
    return _ClubFilterEmpty();
  }
}

/// @nodoc
const $ClubFilter = _$ClubFilterTearOff();

/// @nodoc
mixin _$ClubFilter {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String phrase, ClubFilterSettings clubFilterSettings)
        $default, {
    required TResult Function() empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(String phrase, ClubFilterSettings clubFilterSettings)?
        $default, {
    TResult Function()? empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String phrase, ClubFilterSettings clubFilterSettings)?
        $default, {
    TResult Function()? empty,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ClubFilter value) $default, {
    required TResult Function(_ClubFilterEmpty value) empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(_ClubFilter value)? $default, {
    TResult Function(_ClubFilterEmpty value)? empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_ClubFilter value)? $default, {
    TResult Function(_ClubFilterEmpty value)? empty,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClubFilterCopyWith<$Res> {
  factory $ClubFilterCopyWith(
          ClubFilter value, $Res Function(ClubFilter) then) =
      _$ClubFilterCopyWithImpl<$Res>;
}

/// @nodoc
class _$ClubFilterCopyWithImpl<$Res> implements $ClubFilterCopyWith<$Res> {
  _$ClubFilterCopyWithImpl(this._value, this._then);

  final ClubFilter _value;
  // ignore: unused_field
  final $Res Function(ClubFilter) _then;
}

/// @nodoc
abstract class _$ClubFilterCopyWith<$Res> {
  factory _$ClubFilterCopyWith(
          _ClubFilter value, $Res Function(_ClubFilter) then) =
      __$ClubFilterCopyWithImpl<$Res>;
  $Res call({String phrase, ClubFilterSettings clubFilterSettings});

  $ClubFilterSettingsCopyWith<$Res> get clubFilterSettings;
}

/// @nodoc
class __$ClubFilterCopyWithImpl<$Res> extends _$ClubFilterCopyWithImpl<$Res>
    implements _$ClubFilterCopyWith<$Res> {
  __$ClubFilterCopyWithImpl(
      _ClubFilter _value, $Res Function(_ClubFilter) _then)
      : super(_value, (v) => _then(v as _ClubFilter));

  @override
  _ClubFilter get _value => super._value as _ClubFilter;

  @override
  $Res call({
    Object? phrase = freezed,
    Object? clubFilterSettings = freezed,
  }) {
    return _then(_ClubFilter(
      phrase: phrase == freezed
          ? _value.phrase
          : phrase // ignore: cast_nullable_to_non_nullable
              as String,
      clubFilterSettings: clubFilterSettings == freezed
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

class _$_ClubFilter extends _ClubFilter {
  _$_ClubFilter({required this.phrase, required this.clubFilterSettings})
      : super._();

  @override
  final String phrase;
  @override
  final ClubFilterSettings clubFilterSettings;

  @override
  String toString() {
    return 'ClubFilter(phrase: $phrase, clubFilterSettings: $clubFilterSettings)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ClubFilter &&
            const DeepCollectionEquality().equals(other.phrase, phrase) &&
            const DeepCollectionEquality()
                .equals(other.clubFilterSettings, clubFilterSettings));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(phrase),
      const DeepCollectionEquality().hash(clubFilterSettings));

  @JsonKey(ignore: true)
  @override
  _$ClubFilterCopyWith<_ClubFilter> get copyWith =>
      __$ClubFilterCopyWithImpl<_ClubFilter>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String phrase, ClubFilterSettings clubFilterSettings)
        $default, {
    required TResult Function() empty,
  }) {
    return $default(phrase, clubFilterSettings);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(String phrase, ClubFilterSettings clubFilterSettings)?
        $default, {
    TResult Function()? empty,
  }) {
    return $default?.call(phrase, clubFilterSettings);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String phrase, ClubFilterSettings clubFilterSettings)?
        $default, {
    TResult Function()? empty,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(phrase, clubFilterSettings);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ClubFilter value) $default, {
    required TResult Function(_ClubFilterEmpty value) empty,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(_ClubFilter value)? $default, {
    TResult Function(_ClubFilterEmpty value)? empty,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_ClubFilter value)? $default, {
    TResult Function(_ClubFilterEmpty value)? empty,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class _ClubFilter extends ClubFilter {
  factory _ClubFilter(
      {required String phrase,
      required ClubFilterSettings clubFilterSettings}) = _$_ClubFilter;
  _ClubFilter._() : super._();

  String get phrase;
  ClubFilterSettings get clubFilterSettings;
  @JsonKey(ignore: true)
  _$ClubFilterCopyWith<_ClubFilter> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ClubFilterEmptyCopyWith<$Res> {
  factory _$ClubFilterEmptyCopyWith(
          _ClubFilterEmpty value, $Res Function(_ClubFilterEmpty) then) =
      __$ClubFilterEmptyCopyWithImpl<$Res>;
}

/// @nodoc
class __$ClubFilterEmptyCopyWithImpl<$Res>
    extends _$ClubFilterCopyWithImpl<$Res>
    implements _$ClubFilterEmptyCopyWith<$Res> {
  __$ClubFilterEmptyCopyWithImpl(
      _ClubFilterEmpty _value, $Res Function(_ClubFilterEmpty) _then)
      : super(_value, (v) => _then(v as _ClubFilterEmpty));

  @override
  _ClubFilterEmpty get _value => super._value as _ClubFilterEmpty;
}

/// @nodoc

class _$_ClubFilterEmpty extends _ClubFilterEmpty {
  _$_ClubFilterEmpty() : super._();

  @override
  String toString() {
    return 'ClubFilter.empty()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _ClubFilterEmpty);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String phrase, ClubFilterSettings clubFilterSettings)
        $default, {
    required TResult Function() empty,
  }) {
    return empty();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(String phrase, ClubFilterSettings clubFilterSettings)?
        $default, {
    TResult Function()? empty,
  }) {
    return empty?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String phrase, ClubFilterSettings clubFilterSettings)?
        $default, {
    TResult Function()? empty,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ClubFilter value) $default, {
    required TResult Function(_ClubFilterEmpty value) empty,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(_ClubFilter value)? $default, {
    TResult Function(_ClubFilterEmpty value)? empty,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_ClubFilter value)? $default, {
    TResult Function(_ClubFilterEmpty value)? empty,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class _ClubFilterEmpty extends ClubFilter {
  factory _ClubFilterEmpty() = _$_ClubFilterEmpty;
  _ClubFilterEmpty._() : super._();
}
