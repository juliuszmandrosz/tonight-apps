// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'event_date_picker_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$EventDatePickerState {
  DateRangeFilter get filter => throw _privateConstructorUsedError;
  bool get isDateFilterApplied => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EventDatePickerStateCopyWith<EventDatePickerState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EventDatePickerStateCopyWith<$Res> {
  factory $EventDatePickerStateCopyWith(EventDatePickerState value,
          $Res Function(EventDatePickerState) then) =
      _$EventDatePickerStateCopyWithImpl<$Res, EventDatePickerState>;
  @useResult
  $Res call({DateRangeFilter filter, bool isDateFilterApplied});
}

/// @nodoc
class _$EventDatePickerStateCopyWithImpl<$Res,
        $Val extends EventDatePickerState>
    implements $EventDatePickerStateCopyWith<$Res> {
  _$EventDatePickerStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? filter = null,
    Object? isDateFilterApplied = null,
  }) {
    return _then(_value.copyWith(
      filter: null == filter
          ? _value.filter
          : filter // ignore: cast_nullable_to_non_nullable
              as DateRangeFilter,
      isDateFilterApplied: null == isDateFilterApplied
          ? _value.isDateFilterApplied
          : isDateFilterApplied // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_EventDatePickerStateCopyWith<$Res>
    implements $EventDatePickerStateCopyWith<$Res> {
  factory _$$_EventDatePickerStateCopyWith(_$_EventDatePickerState value,
          $Res Function(_$_EventDatePickerState) then) =
      __$$_EventDatePickerStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DateRangeFilter filter, bool isDateFilterApplied});
}

/// @nodoc
class __$$_EventDatePickerStateCopyWithImpl<$Res>
    extends _$EventDatePickerStateCopyWithImpl<$Res, _$_EventDatePickerState>
    implements _$$_EventDatePickerStateCopyWith<$Res> {
  __$$_EventDatePickerStateCopyWithImpl(_$_EventDatePickerState _value,
      $Res Function(_$_EventDatePickerState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? filter = null,
    Object? isDateFilterApplied = null,
  }) {
    return _then(_$_EventDatePickerState(
      filter: null == filter
          ? _value.filter
          : filter // ignore: cast_nullable_to_non_nullable
              as DateRangeFilter,
      isDateFilterApplied: null == isDateFilterApplied
          ? _value.isDateFilterApplied
          : isDateFilterApplied // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_EventDatePickerState implements _EventDatePickerState {
  const _$_EventDatePickerState(
      {required this.filter, required this.isDateFilterApplied});

  @override
  final DateRangeFilter filter;
  @override
  final bool isDateFilterApplied;

  @override
  String toString() {
    return 'EventDatePickerState(filter: $filter, isDateFilterApplied: $isDateFilterApplied)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EventDatePickerState &&
            (identical(other.filter, filter) || other.filter == filter) &&
            (identical(other.isDateFilterApplied, isDateFilterApplied) ||
                other.isDateFilterApplied == isDateFilterApplied));
  }

  @override
  int get hashCode => Object.hash(runtimeType, filter, isDateFilterApplied);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EventDatePickerStateCopyWith<_$_EventDatePickerState> get copyWith =>
      __$$_EventDatePickerStateCopyWithImpl<_$_EventDatePickerState>(
          this, _$identity);
}

abstract class _EventDatePickerState implements EventDatePickerState {
  const factory _EventDatePickerState(
      {required final DateRangeFilter filter,
      required final bool isDateFilterApplied}) = _$_EventDatePickerState;

  @override
  DateRangeFilter get filter;
  @override
  bool get isDateFilterApplied;
  @override
  @JsonKey(ignore: true)
  _$$_EventDatePickerStateCopyWith<_$_EventDatePickerState> get copyWith =>
      throw _privateConstructorUsedError;
}
