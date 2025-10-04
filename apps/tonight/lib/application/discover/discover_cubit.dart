import 'package:common/infrastructure/algolia/phrase_filter.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tonight/application/discover/selected_discover_tab.dart';

part 'discover_cubit.freezed.dart';
part 'discover_state.dart';

class DiscoverCubit extends Cubit<DiscoverState> {
  DiscoverCubit() : super(DiscoverState.initial());

  void changeTab(DiscoverTab tab) {
    emit(state.copyWith(selectedTab: tab));
  }

  void applyPhraseFilter(PhraseFilter phraseFilter) {
    emit(state.copyWith(phraseFilter: phraseFilter));
  }
}
