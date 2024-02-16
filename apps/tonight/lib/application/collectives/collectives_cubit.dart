import 'package:bloc/bloc.dart';
import 'package:common/application/cubit_status.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tonight/domain/collectives/collective_entity.dart';
import 'package:tonight/domain/collectives/collective_facade.dart';

part 'collectives_cubit.freezed.dart';
part 'collectives_state.dart';

class CollectivesCubit extends Cubit<CollectivesState> {
  final CollectiveFacade _collectiveFacade;

  CollectivesCubit(this._collectiveFacade) : super(CollectivesState.initial());

  Future<void> getCollectives() async {
    emit(state.copyWith(getCollectivesStatus: CubitStatus.loading));
    final result = await _collectiveFacade.getCollectives();
    result.fold(
      (_) => emit(state.copyWith(getCollectivesStatus: CubitStatus.failure)),
      (collectives) => emit(
        state.copyWith(
          getCollectivesStatus: CubitStatus.success,
          collectives: collectives,
        ),
      ),
    );
  }
}
