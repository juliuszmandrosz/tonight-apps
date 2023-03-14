import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:common/domain/available_filters/available_filters_entity.dart';
import 'package:common/domain/available_filters/available_filters_facade.dart';
import 'package:common/domain/available_filters/available_filters_failure.dart';

part 'available_filters_cubit.freezed.dart';

part 'available_filters_state.dart';

class AvailableFiltersCubit extends Cubit<AvailableFiltersState> {
  final AvailableFiltersFacade _availableFiltersFacade;

  AvailableFiltersCubit(this._availableFiltersFacade)
      : super(const AvailableFiltersState.initial());

  Future<void> getAvailableFilters() async {
    emit(const AvailableFiltersState.loadInProgress());

    final failureOrSuccess =
        await _availableFiltersFacade.getAvailableFilters();

    failureOrSuccess.fold(
      (failure) => emit(
        AvailableFiltersState.loadFailure(failure),
      ),
      (filters) => emit(
        AvailableFiltersState.loadSuccess(filters),
      ),
    );
  }
}
