import 'package:common/common.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tonight/domain/wall_photos/wall_photo_entity.dart';
import 'package:tonight/domain/wall_photos/wall_photo_facade.dart';
import 'package:tonight/domain/wall_photos/wall_photo_failure.dart';

part 'wall_photos_cubit.freezed.dart';
part 'wall_photos_state.dart';

const _pageSize = 20;

class WallPhotosCubit extends Cubit<WallPhotosState> {
  final WallPhotoFacade _wallPhotoFacade;

  WallPhotosCubit(this._wallPhotoFacade) : super(WallPhotosState.initial());

  Future<void> getPhotos() async {
    emit(state.copyWith(getPhotosStatus: CubitStatus.loading));

    final result = await _wallPhotoFacade.getPhotos();

    result.fold(
      (failure) => emit(state.copyWith(getPhotosStatus: CubitStatus.failure)),
      (photos) => emit(
        state.copyWith(
          getPhotosStatus: CubitStatus.success,
          photos: photos,
          hasReachedMax: photos.length != _pageSize,
        ),
      ),
    );
  }

  Future<void> fetchNextPhotosPage() async {
    if (state.hasReachedMax || state.photos.isEmpty) return;

    emit(state.copyWith(nextPageStatus: CubitStatus.loading));

    final result = await _wallPhotoFacade.getPhotos(
      lastPhoto: state.photos.last,
    );

    result.fold(
      (failure) => emit(state.copyWith(nextPageStatus: CubitStatus.failure)),
      (photos) => emit(
        state.copyWith(
          nextPageStatus: CubitStatus.success,
          photos: [...state.photos, ...photos],
          hasReachedMax: photos.length != _pageSize,
        ),
      ),
    );
  }

  _showErrorMessage(WallPhotoFailure failure) {
    emit(state.copyWith(errorMessage: some(failure.message)));
    emit(state.copyWith(errorMessage: none()));
  }
}
