// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'sort_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SortModel {
  String get fieldName => throw _privateConstructorUsedError;
  SortDirection get direction => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SortModelCopyWith<SortModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SortModelCopyWith<$Res> {
  factory $SortModelCopyWith(SortModel value, $Res Function(SortModel) then) =
      _$SortModelCopyWithImpl<$Res>;
  $Res call({String fieldName, SortDirection direction});
}

/// @nodoc
class _$SortModelCopyWithImpl<$Res> implements $SortModelCopyWith<$Res> {
  _$SortModelCopyWithImpl(this._value, this._then);

  final SortModel _value;
  // ignore: unused_field
  final $Res Function(SortModel) _then;

  @override
  $Res call({
    Object? fieldName = freezed,
    Object? direction = freezed,
  }) {
    return _then(_value.copyWith(
      fieldName: fieldName == freezed
          ? _value.fieldName
          : fieldName // ignore: cast_nullable_to_non_nullable
              as String,
      direction: direction == freezed
          ? _value.direction
          : direction // ignore: cast_nullable_to_non_nullable
              as SortDirection,
    ));
  }
}

/// @nodoc
abstract class _$$_SortModelCopyWith<$Res> implements $SortModelCopyWith<$Res> {
  factory _$$_SortModelCopyWith(
          _$_SortModel value, $Res Function(_$_SortModel) then) =
      __$$_SortModelCopyWithImpl<$Res>;
  @override
  $Res call({String fieldName, SortDirection direction});
}

/// @nodoc
class __$$_SortModelCopyWithImpl<$Res> extends _$SortModelCopyWithImpl<$Res>
    implements _$$_SortModelCopyWith<$Res> {
  __$$_SortModelCopyWithImpl(
      _$_SortModel _value, $Res Function(_$_SortModel) _then)
      : super(_value, (v) => _then(v as _$_SortModel));

  @override
  _$_SortModel get _value => super._value as _$_SortModel;

  @override
  $Res call({
    Object? fieldName = freezed,
    Object? direction = freezed,
  }) {
    return _then(_$_SortModel(
      fieldName: fieldName == freezed
          ? _value.fieldName
          : fieldName // ignore: cast_nullable_to_non_nullable
              as String,
      direction: direction == freezed
          ? _value.direction
          : direction // ignore: cast_nullable_to_non_nullable
              as SortDirection,
    ));
  }
}

/// @nodoc

class _$_SortModel extends _SortModel {
  _$_SortModel({required this.fieldName, required this.direction}) : super._();

  @override
  final String fieldName;
  @override
  final SortDirection direction;

  @override
  String toString() {
    return 'SortModel(fieldName: $fieldName, direction: $direction)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SortModel &&
            const DeepCollectionEquality().equals(other.fieldName, fieldName) &&
            const DeepCollectionEquality().equals(other.direction, direction));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(fieldName),
      const DeepCollectionEquality().hash(direction));

  @JsonKey(ignore: true)
  @override
  _$$_SortModelCopyWith<_$_SortModel> get copyWith =>
      __$$_SortModelCopyWithImpl<_$_SortModel>(this, _$identity);
}

abstract class _SortModel extends SortModel {
  factory _SortModel(
      {required final String fieldName,
      required final SortDirection direction}) = _$_SortModel;
  _SortModel._() : super._();

  @override
  String get fieldName => throw _privateConstructorUsedError;
  @override
  SortDirection get direction => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_SortModelCopyWith<_$_SortModel> get copyWith =>
      throw _privateConstructorUsedError;
}
