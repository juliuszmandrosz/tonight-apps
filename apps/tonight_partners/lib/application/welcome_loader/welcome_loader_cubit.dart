import 'package:bloc/bloc.dart';
import 'package:common/common.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tonight_partners/application/club_info/club_info_cubit.dart';
import 'package:tonight_partners/application/overview/overview_cubit.dart';

part 'welcome_loader_cubit.freezed.dart';
part 'welcome_loader_state.dart';

class WelcomeLoaderCubit extends Cubit<WelcomeLoaderState> {
  final ClubInfoCubit _clubInfoCubit;
  final OverviewCubit _overviewCubit;

  WelcomeLoaderCubit({
    required ClubInfoCubit clubInfoCubit,
    required OverviewCubit overviewCubit,
  })  : _clubInfoCubit = clubInfoCubit,
        _overviewCubit = overviewCubit,
        super(WelcomeLoaderState.initial());

  Future<void> loadData() async {
    if (_checkIfWelcomeLoaderIsNotInitialized()) return;

    emit(state.copyWith(status: CubitStatus.loading));

    _initClubInfo();
    _initOverview();
  }

  _initClubInfo() {
    _clubInfoCubit.initClubInfo();
    _clubInfoCubit.stream.listen((state) {
      _checkAndEmitFailure(state.status);
      _emitSuccessIfAllLoaded();
    });
  }

  _initOverview() {
    _overviewCubit.getClubSales();
    _overviewCubit.stream.listen((state) {
      _checkAndEmitFailure(state.status);
      _emitSuccessIfAllLoaded();
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
    return _clubInfoCubit.state.status == CubitStatus.success &&
        _overviewCubit.state.status == CubitStatus.success;
  }

  _checkAndEmitFailure(CubitStatus cubitStatus) {
    if (cubitStatus == CubitStatus.failure) {
      emit(state.copyWith(status: CubitStatus.failure));
    }
  }
}
