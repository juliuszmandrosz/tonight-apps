// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

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
      _$SelectorListStateCopyWithImpl<$Res>;
  $Res call(
      {CubitStatus initialStatus,
      CubitStatus deletingStatus,
      List<Selector> selectors,
      Option<String> errorMessage});
}

/// @nodoc
class _$SelectorListStateCopyWithImpl<$Res>
    implements $SelectorListStateCopyWith<$Res> {
  _$SelectorListStateCopyWithImpl(this._value, this._then);

  final SelectorListState _value;
  // ignore: unused_field
  final $Res Function(SelectorListState) _then;

  @override
  $Res call({
    Object? initialStatus = freezed,
    Object? deletingStatus = freezed,
    Object? selectors = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(_value.copyWith(
      initialStatus: initialStatus == freezed
          ? _value.initialStatus
          : initialStatus // ignore: cast_nullable_to_non_nullable
              as CubitStatus,
      deletingStatus: deletingStatus == freezed
          ? _value.deletingStatus
          : deletingStatus // ignore: cast_nullable_to_non_nullable
              as CubitStatus,
      selectors: selectors == freezed
          ? _value.selectors
          : selectors // ignore: cast_nullable_to_non_nullable
              as List<Selector>,
      errorMessage: errorMessage == freezed
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as Option<String>,
    ));
  }
}

/// @nodoc
abstract class _$$_SelectorListStateCopyWith<$Res>
    implements $SelectorListStateCopyWith<$Res> {
  factory _$$_SelectorListStateCopyWith(_$_SelectorListState value,
          $Res Function(_$_SelectorListState) then) =
      __$$_SelectorListStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {CubitStatus initialStatus,
      CubitStatus deletingStatus,
      List<Selector> selectors,
      Option<String> errorMessage});
}

/// @nodoc
class __$$_SelectorListStateCopyWithImpl<$Res>
    extends _$SelectorListStateCopyWithImpl<$Res>
    implements _$$_SelectorListStateCopyWith<$Res> {
  __$$_SelectorListStateCopyWithImpl(
      _$_SelectorListState _value, $Res Function(_$_SelectorListState) _then)
      : super(_value, (v) => _then(v as _$_SelectorListState));

  @override
  _$_SelectorListState get _value => super._value as _$_SelectorListState;

  @override
  $Res call({
    Object? initialStatus = freezed,
    Object? deletingStatus = freezed,
    Object? selectors = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(_$_SelectorListState(
      initialStatus: initialStatus == freezed
          ? _value.initialStatus
          : initialStatus // ignore: cast_nullable_to_non_nullable
              as CubitStatus,
      deletingStatus: deletingStatus == freezed
          ? _value.deletingStatus
          : deletingStatus // ignore: cast_nullable_to_non_nullable
              as CubitStatus,
      selectors: selectors == freezed
          ? _value._selectors
          : selectors // ignore: cast_nullable_to_non_nullable
              as List<Selector>,
      errorMessage: errorMessage == freezed
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
            const DeepCollectionEquality()
                .equals(other.initialStatus, initialStatus) &&
            const DeepCollectionEquality()
                .equals(other.deletingStatus, deletingStatus) &&
            const DeepCollectionEquality()
                .equals(other._selectors, _selectors) &&
            const DeepCollectionEquality()
                .equals(other.errorMessage, errorMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(initialStatus),
      const DeepCollectionEquality().hash(deletingStatus),
      const DeepCollectionEquality().hash(_selectors),
      const DeepCollectionEquality().hash(errorMessage));

  @JsonKey(ignore: true)
  @override
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
