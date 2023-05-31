import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tonight/application/tonight/tonight_tab.dart';

part 'tonight_cubit.freezed.dart';
part 'tonight_state.dart';

class TonightCubit extends Cubit<TonightState> {
  TonightCubit() : super(TonightState.initial());

  void selectTab(TonightTab tab) {
    emit(state.copyWith(selectedTab: tab));
  }
}
