import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:raver_common/raver_common.dart';
import 'package:raver_events/domain/domain.dart';
import 'package:raver_scanner/application/current_event/current_event_cubit.dart';
import 'package:raver_scanner/application/selector_club/selector_club_cubit.dart';

part 'welcome_loader_cubit.freezed.dart';

part 'welcome_loader_state.dart';

class WelcomeLoaderCubit extends Cubit<WelcomeLoaderState> {
  final SelectorClubCubit _selectorClubCubit;
  final CurrentEventCubit _currentEventCubit;

  WelcomeLoaderCubit({
    required SelectorClubCubit selectorClubCubit,
    required CurrentEventCubit currentEventCubit,
  })  : _selectorClubCubit = selectorClubCubit,
        _currentEventCubit = currentEventCubit,
        super(WelcomeLoaderState.initial());

  Future<void> loadData() async {
    if (_checkIfWelcomeLoaderIsNotInitialized()) return;

    emit(state.copyWith(status: CubitStatus.loading));

    _initClubInfo();
    _initCurrentEvent();
  }

  _initClubInfo() {
    _selectorClubCubit.getClubInfo();
    _selectorClubCubit.stream.listen((event) {
      _emitSuccessIfAllLoaded();
      if (event.status == CubitStatus.failure) {
        emit(state.copyWith(status: CubitStatus.failure));
      }
    });
  }

  _initCurrentEvent() {
    _currentEventCubit.getCurrentEvent();
    _currentEventCubit.stream.listen((event) {
      _emitSuccessIfAllLoaded();
      if (event.status == CubitStatus.failure &&
          event.failure == some(const SelectorEventFailure.unexpected())) {
        emit(state.copyWith(status: CubitStatus.failure));
      }
    });
  }

  _checkIfWelcomeLoaderIsNotInitialized() {
    return state.status.isLoading() || state.status.isSuccess();
  }

  _emitSuccessIfAllLoaded() {
    if (_checkIfAllDependenciesHaveLoaded()) {
      emit(state.copyWith(status: CubitStatus.success));
    }
  }

  _checkIfAllDependenciesHaveLoaded() {
    return _selectorClubCubit.state.status == CubitStatus.success &&
        (_currentEventCubit.state.status == CubitStatus.success ||
            _currentEventCubit.state.failure ==
                some(const SelectorEventFailure.noAccess()));
  }
}
