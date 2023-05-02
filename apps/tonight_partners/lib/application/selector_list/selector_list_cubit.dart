import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:common/application/application.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tonight_partners/domain/selector_management/selector_entity.dart';
import 'package:tonight_partners/domain/selector_management/selector_management_facade.dart';
import 'package:tonight_partners/domain/selector_management/selector_management_failure.dart';
import 'package:translations/raver_translations.dart';

part 'selector_list_cubit.freezed.dart';

part 'selector_list_state.dart';

class SelectorListCubit extends Cubit<SelectorListState> {
  final SelectorManagementFacade _selectorManagementFacade;
  StreamSubscription? _selectorsSub;

  SelectorListCubit(this._selectorManagementFacade)
      : super(SelectorListState.initial());

  Future<void> getSelectors() async {
    emit(state.copyWith(initialStatus: CubitStatus.loading));

    _selectorsSub = _selectorManagementFacade.getSelectors().listen((result) {
      result.fold(
        (failure) => emit(
          state.copyWith(initialStatus: CubitStatus.failure),
        ),
        (selectors) => emit(
          state.copyWith(
            initialStatus: CubitStatus.success,
            selectors: selectors,
          ),
        ),
      );
    });
  }

  void deleteSelector(Selector selector) async {
    final selectors = state.selectors;
    final selectorsCopy = [...state.selectors];

    selectorsCopy.remove(selector);
    emit(state.copyWith(selectors: selectorsCopy));

    final failureOrSuccess =
        await _selectorManagementFacade.deleteSelector(selector.id);

    failureOrSuccess.fold(
      (failure) => _emitDeleteFailure(failure, selectors),
      (success) => emit(
        state.copyWith(deletingStatus: CubitStatus.success),
      ),
    );
  }

  _emitDeleteFailure(
    SelectorManagementFailure failure,
    List<Selector> previousSelectors,
  ) {
    emit(
      state.copyWith(
        errorMessage: some(S().errorDeletingSelector),
        deletingStatus: CubitStatus.failure,
        selectors: previousSelectors,
      ),
    );

    emit(state.copyWith(errorMessage: none()));
  }

  @override
  Future<void> close() {
    _selectorsSub?.cancel();
    return super.close();
  }
}
