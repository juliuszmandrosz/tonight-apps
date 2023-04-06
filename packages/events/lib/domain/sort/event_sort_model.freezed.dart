// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'event_sort_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$EventSortModel {
  String get fieldName => throw _privateConstructorUsedError;
  SortDirection get direction => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EventSortModelCopyWith<EventSortModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EventSortModelCopyWith<$Res> {
  factory $EventSortModelCopyWith(
          EventSortModel value, $Res Function(EventSortModel) then) =
      _$EventSortModelCopyWithImpl<$Res, EventSortModel>;
  @useResult
  $Res call({String fieldName, SortDirection direction});
}

/// @nodoc
class _$EventSortModelCopyWithImpl<$Res, $Val extends EventSortModel>
    implements $EventSortModelCopyWith<$Res> {
  _$EventSortModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fieldName = null,
    Object? direction = null,
  }) {
    return _then(_value.copyWith(
      fieldName: null == fieldName
          ? _value.fieldName
          : fieldName // ignore: cast_nullable_to_non_nullable
              as String,
      direction: null == direction
          ? _value.direction
          : direction // ignore: cast_nullable_to_non_nullable
              as SortDirection,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_EventSortModelCopyWith<$Res>
    implements $EventSortModelCopyWith<$Res> {
  factory _$$_EventSortModelCopyWith(
          _$_EventSortModel value, $Res Function(_$_EventSortModel) then) =
      __$$_EventSortModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String fieldName, SortDirection direction});
}

/// @nodoc
class __$$_EventSortModelCopyWithImpl<$Res>
    extends _$EventSortModelCopyWithImpl<$Res, _$_EventSortModel>
    implements _$$_EventSortModelCopyWith<$Res> {
  __$$_EventSortModelCopyWithImpl(
      _$_EventSortModel _value, $Res Function(_$_EventSortModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fieldName = null,
    Object? direction = null,
  }) {
    return _then(_$_EventSortModel(
      fieldName: null == fieldName
          ? _value.fieldName
          : fieldName // ignore: cast_nullable_to_non_nullable
              as String,
      direction: null == direction
          ? _value.direction
          : direction // ignore: cast_nullable_to_non_nullable
              as SortDirection,
    ));
  }
}

/// @nodoc

class _$_EventSortModel extends _EventSortModel {
  _$_EventSortModel({required this.fieldName, required this.direction})
      : super._();

  @override
  final String fieldName;
  @override
  final SortDirection direction;

  @override
  String toString() {
    return 'EventSortModel(fieldName: $fieldName, direction: $direction)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EventSortModel &&
            (identical(other.fieldName, fieldName) ||
                other.fieldName == fieldName) &&
            (identical(other.direction, direction) ||
                other.direction == direction));
  }

  @override
  int get hashCode => Object.hash(runtimeType, fieldName, direction);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EventSortModelCopyWith<_$_EventSortModel> get copyWith =>
      __$$_EventSortModelCopyWithImpl<_$_EventSortModel>(this, _$identity);
}

abstract class _EventSortModel extends EventSortModel {
  factory _EventSortModel(
      {required final String fieldName,
      required final SortDirection direction}) = _$_EventSortModel;
  _EventSortModel._() : super._();

  @override
  String get fieldName;
  @override
  SortDirection get direction;
  @override
  @JsonKey(ignore: true)
  _$$_EventSortModelCopyWith<_$_EventSortModel> get copyWith =>
      throw _privateConstructorUsedError;
}
