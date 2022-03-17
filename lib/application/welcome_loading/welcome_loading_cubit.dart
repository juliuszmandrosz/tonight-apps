import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'welcome_loading_cubit.freezed.dart';

part 'welcome_loading_state.dart';

class WelcomeLoadingCubit extends Cubit<WelcomeLoadingState> {
  WelcomeLoadingCubit() : super(WelcomeLoadingState.initial());

  void locationLoaded() {
    emit(state.copyWith(isLocationLoaded: true));
  }

  void remoteConfigLoaded() {
    emit(state.copyWith(isRemoteConfigLoaded: true));
  }

  void failure() {
    emit(state.copyWith(isFailure: true));
  }
}
