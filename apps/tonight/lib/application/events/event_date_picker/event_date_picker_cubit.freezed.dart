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
abstract class _$$EventDatePickerStateImplCopyWith<$Res>
    implements $EventDatePickerStateCopyWith<$Res> {
  factory _$$EventDatePickerStateImplCopyWith(_$EventDatePickerStateImpl value,
          $Res Function(_$EventDatePickerStateImpl) then) =
      __$$EventDatePickerStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DateRangeFilter filter, bool isDateFilterApplied});
}

/// @nodoc
class __$$EventDatePickerStateImplCopyWithImpl<$Res>
    extends _$EventDatePickerStateCopyWithImpl<$Res, _$EventDatePickerStateImpl>
    implements _$$EventDatePickerStateImplCopyWith<$Res> {
  __$$EventDatePickerStateImplCopyWithImpl(_$EventDatePickerStateImpl _value,
      $Res Function(_$EventDatePickerStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? filter = null,
    Object? isDateFilterApplied = null,
  }) {
    return _then(_$EventDatePickerStateImpl(
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

class _$EventDatePickerStateImpl implements _EventDatePickerState {
  const _$EventDatePickerStateImpl(
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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EventDatePickerStateImpl &&
            (identical(other.filter, filter) || other.filter == filter) &&
            (identical(other.isDateFilterApplied, isDateFilterApplied) ||
                other.isDateFilterApplied == isDateFilterApplied));
  }

  @override
  int get hashCode => Object.hash(runtimeType, filter, isDateFilterApplied);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EventDatePickerStateImplCopyWith<_$EventDatePickerStateImpl>
      get copyWith =>
          __$$EventDatePickerStateImplCopyWithImpl<_$EventDatePickerStateImpl>(
              this, _$identity);
}

abstract class _EventDatePickerState implements EventDatePickerState {
  const factory _EventDatePickerState(
      {required final DateRangeFilter filter,
      required final bool isDateFilterApplied}) = _$EventDatePickerStateImpl;

  @override
  DateRangeFilter get filter;
  @override
  bool get isDateFilterApplied;
  @override
  @JsonKey(ignore: true)
  _$$EventDatePickerStateImplCopyWith<_$EventDatePickerStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
