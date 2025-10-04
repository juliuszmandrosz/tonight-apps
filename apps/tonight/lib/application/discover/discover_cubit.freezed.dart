// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'discover_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DiscoverState {
  DiscoverTab get selectedTab => throw _privateConstructorUsedError;
  PhraseFilter get phraseFilter => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DiscoverStateCopyWith<DiscoverState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DiscoverStateCopyWith<$Res> {
  factory $DiscoverStateCopyWith(
          DiscoverState value, $Res Function(DiscoverState) then) =
      _$DiscoverStateCopyWithImpl<$Res, DiscoverState>;
  @useResult
  $Res call({DiscoverTab selectedTab, PhraseFilter phraseFilter});
}

/// @nodoc
class _$DiscoverStateCopyWithImpl<$Res, $Val extends DiscoverState>
    implements $DiscoverStateCopyWith<$Res> {
  _$DiscoverStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedTab = null,
    Object? phraseFilter = null,
  }) {
    return _then(_value.copyWith(
      selectedTab: null == selectedTab
          ? _value.selectedTab
          : selectedTab // ignore: cast_nullable_to_non_nullable
              as DiscoverTab,
      phraseFilter: null == phraseFilter
          ? _value.phraseFilter
          : phraseFilter // ignore: cast_nullable_to_non_nullable
              as PhraseFilter,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DiscoverStateImplCopyWith<$Res>
    implements $DiscoverStateCopyWith<$Res> {
  factory _$$DiscoverStateImplCopyWith(
          _$DiscoverStateImpl value, $Res Function(_$DiscoverStateImpl) then) =
      __$$DiscoverStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DiscoverTab selectedTab, PhraseFilter phraseFilter});
}

/// @nodoc
class __$$DiscoverStateImplCopyWithImpl<$Res>
    extends _$DiscoverStateCopyWithImpl<$Res, _$DiscoverStateImpl>
    implements _$$DiscoverStateImplCopyWith<$Res> {
  __$$DiscoverStateImplCopyWithImpl(
      _$DiscoverStateImpl _value, $Res Function(_$DiscoverStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedTab = null,
    Object? phraseFilter = null,
  }) {
    return _then(_$DiscoverStateImpl(
      selectedTab: null == selectedTab
          ? _value.selectedTab
          : selectedTab // ignore: cast_nullable_to_non_nullable
              as DiscoverTab,
      phraseFilter: null == phraseFilter
          ? _value.phraseFilter
          : phraseFilter // ignore: cast_nullable_to_non_nullable
              as PhraseFilter,
    ));
  }
}

/// @nodoc

class _$DiscoverStateImpl implements _DiscoverState {
  const _$DiscoverStateImpl(
      {required this.selectedTab, required this.phraseFilter});

  @override
  final DiscoverTab selectedTab;
  @override
  final PhraseFilter phraseFilter;

  @override
  String toString() {
    return 'DiscoverState(selectedTab: $selectedTab, phraseFilter: $phraseFilter)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DiscoverStateImpl &&
            (identical(other.selectedTab, selectedTab) ||
                other.selectedTab == selectedTab) &&
            (identical(other.phraseFilter, phraseFilter) ||
                other.phraseFilter == phraseFilter));
  }

  @override
  int get hashCode => Object.hash(runtimeType, selectedTab, phraseFilter);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DiscoverStateImplCopyWith<_$DiscoverStateImpl> get copyWith =>
      __$$DiscoverStateImplCopyWithImpl<_$DiscoverStateImpl>(this, _$identity);
}

abstract class _DiscoverState implements DiscoverState {
  const factory _DiscoverState(
      {required final DiscoverTab selectedTab,
      required final PhraseFilter phraseFilter}) = _$DiscoverStateImpl;

  @override
  DiscoverTab get selectedTab;
  @override
  PhraseFilter get phraseFilter;
  @override
  @JsonKey(ignore: true)
  _$$DiscoverStateImplCopyWith<_$DiscoverStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
