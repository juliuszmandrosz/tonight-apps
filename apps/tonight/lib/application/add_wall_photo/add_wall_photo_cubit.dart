import 'package:camera/camera.dart';
import 'package:common/application/application.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'add_wall_photo_cubit.freezed.dart';
part 'add_wall_photo_state.dart';

class AddWallPhotoCubit extends Cubit<AddWallPhotoState> {
  AddWallPhotoCubit() : super(AddWallPhotoState.initial());

  initState(XFile photo) {
    emit(state.copyWith(photo: some(photo)));
  }

// Future<void> _processPicture() async {
//   if (_isPictureProcessing) return;
//   setState(() {
//     _isPictureProcessing = true;
//   });
//   final pictureBytes = await _picture!.readAsBytes();
//   final flippedPicture = await flipImageHorizontallyAsync(pictureBytes);
//   flippedPicture.fold(
//         () => context.showSnackbarMessage('Błąd podczas zapisu zdjęcia'),
//         (picture) async =>
//     await context.pushRoute(AddWallPhotoRoute(photo: picture)),
//   );
// }
}
