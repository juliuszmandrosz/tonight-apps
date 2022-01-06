// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
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

  _ClubFilter call({required String phrase}) {
    return _ClubFilter(
      phrase: phrase,
    );
  }
}

/// @nodoc
const $ClubFilter = _$ClubFilterTearOff();

/// @nodoc
mixin _$ClubFilter {
  String get phrase => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ClubFilterCopyWith<ClubFilter> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClubFilterCopyWith<$Res> {
  factory $ClubFilterCopyWith(
          ClubFilter value, $Res Function(ClubFilter) then) =
      _$ClubFilterCopyWithImpl<$Res>;
  $Res call({String phrase});
}

/// @nodoc
class _$ClubFilterCopyWithImpl<$Res> implements $ClubFilterCopyWith<$Res> {
  _$ClubFilterCopyWithImpl(this._value, this._then);

  final ClubFilter _value;
  // ignore: unused_field
  final $Res Function(ClubFilter) _then;

  @override
  $Res call({
    Object? phrase = freezed,
  }) {
    return _then(_value.copyWith(
      phrase: phrase == freezed
          ? _value.phrase
          : phrase // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$ClubFilterCopyWith<$Res> implements $ClubFilterCopyWith<$Res> {
  factory _$ClubFilterCopyWith(
          _ClubFilter value, $Res Function(_ClubFilter) then) =
      __$ClubFilterCopyWithImpl<$Res>;
  @override
  $Res call({String phrase});
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
  }) {
    return _then(_ClubFilter(
      phrase: phrase == freezed
          ? _value.phrase
          : phrase // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ClubFilter extends _ClubFilter {
  const _$_ClubFilter({required this.phrase}) : super._();

  @override
  final String phrase;

  @override
  String toString() {
    return 'ClubFilter(phrase: $phrase)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ClubFilter &&
            const DeepCollectionEquality().equals(other.phrase, phrase));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(phrase));

  @JsonKey(ignore: true)
  @override
  _$ClubFilterCopyWith<_ClubFilter> get copyWith =>
      __$ClubFilterCopyWithImpl<_ClubFilter>(this, _$identity);
}

abstract class _ClubFilter extends ClubFilter {
  const factory _ClubFilter({required String phrase}) = _$_ClubFilter;
  const _ClubFilter._() : super._();

  @override
  String get phrase;
  @override
  @JsonKey(ignore: true)
  _$ClubFilterCopyWith<_ClubFilter> get copyWith =>
      throw _privateConstructorUsedError;
}
