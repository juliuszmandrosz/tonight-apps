// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'wall_photos_filters_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$WallPhotosFiltersState {
  WallPhotoFilters get filters => throw _privateConstructorUsedError;
  Map<MenuWallPhotoFilter, IFilter> get appliedFilters =>
      throw _privateConstructorUsedError;
  bool get isSubmitting => throw _privateConstructorUsedError;
  Option<String> get snackbarMessage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $WallPhotosFiltersStateCopyWith<WallPhotosFiltersState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WallPhotosFiltersStateCopyWith<$Res> {
  factory $WallPhotosFiltersStateCopyWith(WallPhotosFiltersState value,
          $Res Function(WallPhotosFiltersState) then) =
      _$WallPhotosFiltersStateCopyWithImpl<$Res, WallPhotosFiltersState>;
  @useResult
  $Res call(
      {WallPhotoFilters filters,
      Map<MenuWallPhotoFilter, IFilter> appliedFilters,
      bool isSubmitting,
      Option<String> snackbarMessage});

  $WallPhotoFiltersCopyWith<$Res> get filters;
}

/// @nodoc
class _$WallPhotosFiltersStateCopyWithImpl<$Res,
        $Val extends WallPhotosFiltersState>
    implements $WallPhotosFiltersStateCopyWith<$Res> {
  _$WallPhotosFiltersStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? filters = null,
    Object? appliedFilters = null,
    Object? isSubmitting = null,
    Object? snackbarMessage = null,
  }) {
    return _then(_value.copyWith(
      filters: null == filters
          ? _value.filters
          : filters // ignore: cast_nullable_to_non_nullable
              as WallPhotoFilters,
      appliedFilters: null == appliedFilters
          ? _value.appliedFilters
          : appliedFilters // ignore: cast_nullable_to_non_nullable
              as Map<MenuWallPhotoFilter, IFilter>,
      isSubmitting: null == isSubmitting
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      snackbarMessage: null == snackbarMessage
          ? _value.snackbarMessage
          : snackbarMessage // ignore: cast_nullable_to_non_nullable
              as Option<String>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $WallPhotoFiltersCopyWith<$Res> get filters {
    return $WallPhotoFiltersCopyWith<$Res>(_value.filters, (value) {
      return _then(_value.copyWith(filters: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$WallPhotosFiltersStateImplCopyWith<$Res>
    implements $WallPhotosFiltersStateCopyWith<$Res> {
  factory _$$WallPhotosFiltersStateImplCopyWith(
          _$WallPhotosFiltersStateImpl value,
          $Res Function(_$WallPhotosFiltersStateImpl) then) =
      __$$WallPhotosFiltersStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {WallPhotoFilters filters,
      Map<MenuWallPhotoFilter, IFilter> appliedFilters,
      bool isSubmitting,
      Option<String> snackbarMessage});

  @override
  $WallPhotoFiltersCopyWith<$Res> get filters;
}

/// @nodoc
class __$$WallPhotosFiltersStateImplCopyWithImpl<$Res>
    extends _$WallPhotosFiltersStateCopyWithImpl<$Res,
        _$WallPhotosFiltersStateImpl>
    implements _$$WallPhotosFiltersStateImplCopyWith<$Res> {
  __$$WallPhotosFiltersStateImplCopyWithImpl(
      _$WallPhotosFiltersStateImpl _value,
      $Res Function(_$WallPhotosFiltersStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? filters = null,
    Object? appliedFilters = null,
    Object? isSubmitting = null,
    Object? snackbarMessage = null,
  }) {
    return _then(_$WallPhotosFiltersStateImpl(
      filters: null == filters
          ? _value.filters
          : filters // ignore: cast_nullable_to_non_nullable
              as WallPhotoFilters,
      appliedFilters: null == appliedFilters
          ? _value._appliedFilters
          : appliedFilters // ignore: cast_nullable_to_non_nullable
              as Map<MenuWallPhotoFilter, IFilter>,
      isSubmitting: null == isSubmitting
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      snackbarMessage: null == snackbarMessage
          ? _value.snackbarMessage
          : snackbarMessage // ignore: cast_nullable_to_non_nullable
              as Option<String>,
    ));
  }
}

/// @nodoc

class _$WallPhotosFiltersStateImpl implements _WallPhotosFiltersState {
  const _$WallPhotosFiltersStateImpl(
      {required this.filters,
      required final Map<MenuWallPhotoFilter, IFilter> appliedFilters,
      required this.isSubmitting,
      required this.snackbarMessage})
      : _appliedFilters = appliedFilters;

  @override
  final WallPhotoFilters filters;
  final Map<MenuWallPhotoFilter, IFilter> _appliedFilters;
  @override
  Map<MenuWallPhotoFilter, IFilter> get appliedFilters {
    if (_appliedFilters is EqualUnmodifiableMapView) return _appliedFilters;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_appliedFilters);
  }

  @override
  final bool isSubmitting;
  @override
  final Option<String> snackbarMessage;

  @override
  String toString() {
    return 'WallPhotosFiltersState(filters: $filters, appliedFilters: $appliedFilters, isSubmitting: $isSubmitting, snackbarMessage: $snackbarMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WallPhotosFiltersStateImpl &&
            (identical(other.filters, filters) || other.filters == filters) &&
            const DeepCollectionEquality()
                .equals(other._appliedFilters, _appliedFilters) &&
            (identical(other.isSubmitting, isSubmitting) ||
                other.isSubmitting == isSubmitting) &&
            (identical(other.snackbarMessage, snackbarMessage) ||
                other.snackbarMessage == snackbarMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      filters,
      const DeepCollectionEquality().hash(_appliedFilters),
      isSubmitting,
      snackbarMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WallPhotosFiltersStateImplCopyWith<_$WallPhotosFiltersStateImpl>
      get copyWith => __$$WallPhotosFiltersStateImplCopyWithImpl<
          _$WallPhotosFiltersStateImpl>(this, _$identity);
}

abstract class _WallPhotosFiltersState implements WallPhotosFiltersState {
  const factory _WallPhotosFiltersState(
          {required final WallPhotoFilters filters,
          required final Map<MenuWallPhotoFilter, IFilter> appliedFilters,
          required final bool isSubmitting,
          required final Option<String> snackbarMessage}) =
      _$WallPhotosFiltersStateImpl;

  @override
  WallPhotoFilters get filters;
  @override
  Map<MenuWallPhotoFilter, IFilter> get appliedFilters;
  @override
  bool get isSubmitting;
  @override
  Option<String> get snackbarMessage;
  @override
  @JsonKey(ignore: true)
  _$$WallPhotosFiltersStateImplCopyWith<_$WallPhotosFiltersStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
