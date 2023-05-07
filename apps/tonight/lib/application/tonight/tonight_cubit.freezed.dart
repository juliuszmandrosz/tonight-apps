// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tonight_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TonightState {
  TonightTab get selectedTab => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TonightStateCopyWith<TonightState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TonightStateCopyWith<$Res> {
  factory $TonightStateCopyWith(
          TonightState value, $Res Function(TonightState) then) =
      _$TonightStateCopyWithImpl<$Res, TonightState>;
  @useResult
  $Res call({TonightTab selectedTab});
}

/// @nodoc
class _$TonightStateCopyWithImpl<$Res, $Val extends TonightState>
    implements $TonightStateCopyWith<$Res> {
  _$TonightStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedTab = null,
  }) {
    return _then(_value.copyWith(
      selectedTab: null == selectedTab
          ? _value.selectedTab
          : selectedTab // ignore: cast_nullable_to_non_nullable
              as TonightTab,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TonightStateCopyWith<$Res>
    implements $TonightStateCopyWith<$Res> {
  factory _$$_TonightStateCopyWith(
          _$_TonightState value, $Res Function(_$_TonightState) then) =
      __$$_TonightStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({TonightTab selectedTab});
}

/// @nodoc
class __$$_TonightStateCopyWithImpl<$Res>
    extends _$TonightStateCopyWithImpl<$Res, _$_TonightState>
    implements _$$_TonightStateCopyWith<$Res> {
  __$$_TonightStateCopyWithImpl(
      _$_TonightState _value, $Res Function(_$_TonightState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedTab = null,
  }) {
    return _then(_$_TonightState(
      selectedTab: null == selectedTab
          ? _value.selectedTab
          : selectedTab // ignore: cast_nullable_to_non_nullable
              as TonightTab,
    ));
  }
}

/// @nodoc

class _$_TonightState implements _TonightState {
  const _$_TonightState({required this.selectedTab});

  @override
  final TonightTab selectedTab;

  @override
  String toString() {
    return 'TonightState(selectedTab: $selectedTab)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TonightState &&
            (identical(other.selectedTab, selectedTab) ||
                other.selectedTab == selectedTab));
  }

  @override
  int get hashCode => Object.hash(runtimeType, selectedTab);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TonightStateCopyWith<_$_TonightState> get copyWith =>
      __$$_TonightStateCopyWithImpl<_$_TonightState>(this, _$identity);
}

abstract class _TonightState implements TonightState {
  const factory _TonightState({required final TonightTab selectedTab}) =
      _$_TonightState;

  @override
  TonightTab get selectedTab;
  @override
  @JsonKey(ignore: true)
  _$$_TonightStateCopyWith<_$_TonightState> get copyWith =>
      throw _privateConstructorUsedError;
}
