import 'package:common/common.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tonight/domain/collectives/collective_entity.dart';
import 'package:tonight/domain/collectives/collective_facade.dart';
import 'package:tonight/domain/collectives/collective_failure.dart';
import 'package:tonight/infrastructure/collectives/filters/cities_filter.dart';
import 'package:tonight/infrastructure/collectives/filters/collective_filters.dart';

part 'collectives_cubit.freezed.dart';
part 'collectives_state.dart';

class CollectivesCubit extends Cubit<CollectivesState> {
  final CollectiveFacade _collectiveFacade;

  CollectivesCubit(this._collectiveFacade) : super(CollectivesState.initial());

  Future<void> searchCollectives(String query) async {
    emit(state.copyWith(getCollectivesStatus: CubitStatus.loading));
    final filters =
        state.filters.copyWith(phraseFilter: PhraseFilter(phrase: query));
    emit(state.copyWith(filters: filters));
    final result = await _collectiveFacade.getCollectives(filters);
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

  Future<void> applyCityFilter(CitiesFilter cityFilter) async {
    emit(state.copyWith(getCollectivesStatus: CubitStatus.loading));
    final filters = state.filters.copyWith(citiesFilter: cityFilter);
    emit(state.copyWith(filters: filters));
    final result = await _collectiveFacade.getCollectives(filters);
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

  Future<void> refreshCollectives() async {
    emit(state.copyWith(getCollectivesStatus: CubitStatus.loading));
    final result = await _collectiveFacade.getCollectives(state.filters);
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
