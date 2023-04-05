import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'wall_photos_state.dart';
part 'wall_photos_cubit.freezed.dart';

class WallPhotosCubit extends Cubit<WallPhotosState> {
  WallPhotosCubit() : super(const WallPhotosState.initial());
}
