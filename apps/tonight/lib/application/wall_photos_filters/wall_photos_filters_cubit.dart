import 'package:common/infrastructure/infrastructure.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tonight/application/wall_photos_filters/menu_wall_photo_filter.dart';
import 'package:tonight/infrastructure/wall_photos/filters/wall_photo_filters.dart';
import 'package:translations/translations.dart';

part 'wall_photos_filters_cubit.freezed.dart';
part 'wall_photos_filters_state.dart';

class WallPhotosFiltersCubit extends Cubit<WallPhotosFiltersState> {
  WallPhotosFiltersCubit() : super(WallPhotosFiltersState.initial());

  initFilters(WallPhotoFilters filters) {
    emit(state.copyWith(filters: filters));
  }

  void submitMenuFilters() {
    final appliedFilters = <MenuWallPhotoFilter, IFilter>{};
    final clubsInRangeFilter = state.filters.showPhotosFromClubsInRangeFilter;

    if (!clubsInRangeFilter.enabled &&
        clubsInRangeFilter.userLocation.isSome()) {
      appliedFilters[MenuWallPhotoFilter.showWholeWorld] = clubsInRangeFilter;
    }

    emit(
      state.copyWith(
        appliedFilters: appliedFilters,
        isSubmitting: true,
      ),
    );
  }

  void changeShowWholeWorldValue(bool value) {
    final clubsInRangeFilter = state.filters.showPhotosFromClubsInRangeFilter;
    if (clubsInRangeFilter.userLocation.isNone() && !value) {
      emit(
        state.copyWith(snackbarMessage: some(S().enableLocationAndResetApp)),
      );
      emit(state.copyWith(snackbarMessage: none()));
      return;
    }
    final currentFilters = state.filters.copyWith(
      showPhotosFromClubsInRangeFilter:
          clubsInRangeFilter.copyWith(enabled: !value),
    );
    emit(state.copyWith(filters: currentFilters));
  }
}
