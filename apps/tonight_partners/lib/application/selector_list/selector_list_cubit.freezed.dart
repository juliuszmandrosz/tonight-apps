// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'selector_list_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SelectorListState {
  CubitStatus get initialStatus => throw _privateConstructorUsedError;
  CubitStatus get deletingStatus => throw _privateConstructorUsedError;
  List<Selector> get selectors => throw _privateConstructorUsedError;
  Option<String> get errorMessage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SelectorListStateCopyWith<SelectorListState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SelectorListStateCopyWith<$Res> {
  factory $SelectorListStateCopyWith(
          SelectorListState value, $Res Function(SelectorListState) then) =
      _$SelectorListStateCopyWithImpl<$Res, SelectorListState>;
  @useResult
  $Res call(
      {CubitStatus initialStatus,
      CubitStatus deletingStatus,
      List<Selector> selectors,
      Option<String> errorMessage});
}

/// @nodoc
class _$SelectorListStateCopyWithImpl<$Res, $Val extends SelectorListState>
    implements $SelectorListStateCopyWith<$Res> {
  _$SelectorListStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? initialStatus = null,
    Object? deletingStatus = null,
    Object? selectors = null,
    Object? errorMessage = null,
  }) {
    return _then(_value.copyWith(
      initialStatus: null == initialStatus
          ? _value.initialStatus
          : initialStatus // ignore: cast_nullable_to_non_nullable
              as CubitStatus,
      deletingStatus: null == deletingStatus
          ? _value.deletingStatus
          : deletingStatus // ignore: cast_nullable_to_non_nullable
              as CubitStatus,
      selectors: null == selectors
          ? _value.selectors
          : selectors // ignore: cast_nullable_to_non_nullable
              as List<Selector>,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as Option<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SelectorListStateCopyWith<$Res>
    implements $SelectorListStateCopyWith<$Res> {
  factory _$$_SelectorListStateCopyWith(_$_SelectorListState value,
          $Res Function(_$_SelectorListState) then) =
      __$$_SelectorListStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {CubitStatus initialStatus,
      CubitStatus deletingStatus,
      List<Selector> selectors,
      Option<String> errorMessage});
}

/// @nodoc
class __$$_SelectorListStateCopyWithImpl<$Res>
    extends _$SelectorListStateCopyWithImpl<$Res, _$_SelectorListState>
    implements _$$_SelectorListStateCopyWith<$Res> {
  __$$_SelectorListStateCopyWithImpl(
      _$_SelectorListState _value, $Res Function(_$_SelectorListState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? initialStatus = null,
    Object? deletingStatus = null,
    Object? selectors = null,
    Object? errorMessage = null,
  }) {
    return _then(_$_SelectorListState(
      initialStatus: null == initialStatus
          ? _value.initialStatus
          : initialStatus // ignore: cast_nullable_to_non_nullable
              as CubitStatus,
      deletingStatus: null == deletingStatus
          ? _value.deletingStatus
          : deletingStatus // ignore: cast_nullable_to_non_nullable
              as CubitStatus,
      selectors: null == selectors
          ? _value._selectors
          : selectors // ignore: cast_nullable_to_non_nullable
              as List<Selector>,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as Option<String>,
    ));
  }
}

/// @nodoc

class _$_SelectorListState extends _SelectorListState {
  _$_SelectorListState(
      {required this.initialStatus,
      required this.deletingStatus,
      required final List<Selector> selectors,
      required this.errorMessage})
      : _selectors = selectors,
        super._();

  @override
  final CubitStatus initialStatus;
  @override
  final CubitStatus deletingStatus;
  final List<Selector> _selectors;
  @override
  List<Selector> get selectors {
    if (_selectors is EqualUnmodifiableListView) return _selectors;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_selectors);
  }

  @override
  final Option<String> errorMessage;

  @override
  String toString() {
    return 'SelectorListState(initialStatus: $initialStatus, deletingStatus: $deletingStatus, selectors: $selectors, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SelectorListState &&
            (identical(other.initialStatus, initialStatus) ||
                other.initialStatus == initialStatus) &&
            (identical(other.deletingStatus, deletingStatus) ||
                other.deletingStatus == deletingStatus) &&
            const DeepCollectionEquality()
                .equals(other._selectors, _selectors) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, initialStatus, deletingStatus,
      const DeepCollectionEquality().hash(_selectors), errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SelectorListStateCopyWith<_$_SelectorListState> get copyWith =>
      __$$_SelectorListStateCopyWithImpl<_$_SelectorListState>(
          this, _$identity);
}

abstract class _SelectorListState extends SelectorListState {
  factory _SelectorListState(
      {required final CubitStatus initialStatus,
      required final CubitStatus deletingStatus,
      required final List<Selector> selectors,
      required final Option<String> errorMessage}) = _$_SelectorListState;
  _SelectorListState._() : super._();

  @override
  CubitStatus get initialStatus;
  @override
  CubitStatus get deletingStatus;
  @override
  List<Selector> get selectors;
  @override
  Option<String> get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$_SelectorListStateCopyWith<_$_SelectorListState> get copyWith =>
      throw _privateConstructorUsedError;
}
