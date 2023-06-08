import 'dart:io';

import 'package:common/application/application.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:http/http.dart' as http;
import 'package:path_provider/path_provider.dart';
import 'package:share_plus/share_plus.dart';
import 'package:tonight/domain/wall_photos/wall_photo_entity.dart';
import 'package:tonight/domain/wall_photos/wall_photo_facade.dart';

part 'user_wall_photo_preview_cubit.freezed.dart';
part 'user_wall_photo_preview_state.dart';

class UserWallPhotoPreviewCubit extends Cubit<UserWallPhotoPreviewState> {
  final WallPhotoFacade _wallPhotoFacade;

  UserWallPhotoPreviewCubit(this._wallPhotoFacade)
      : super(UserWallPhotoPreviewState.initial());

  Future<void> deletePhoto(WallPhoto photo) async {
    emit(state.copyWith(deletePhotoStatus: CubitStatus.loading));
    final result = await _wallPhotoFacade.deleteWallPhoto(photo);
    result.fold(
      (_) => emit(
        state.copyWith(deletePhotoStatus: CubitStatus.failure),
      ),
      (_) => emit(
        state.copyWith(deletePhotoStatus: CubitStatus.success),
      ),
    );
  }

  Future<void> sharePhoto(WallPhoto photo) async {
    emit(state.copyWith(sharePhotoStatus: CubitStatus.loading));
    final response = await http.get(Uri.parse(photo.photoUrl));
    final imageData = response.bodyBytes;
    final tempDir = await getTemporaryDirectory();
    final filePath = '${tempDir.path}/${photo.id}.jpg';
    final file = File(filePath);
    await file.writeAsBytes(imageData);
    await Share.shareFiles([file.path]);
    emit(state.copyWith(sharePhotoStatus: CubitStatus.success));
  }
}
