import 'dart:async';

import 'package:common/common.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tonight/application/chats/aggregator/chats_aggregator.dart';
import 'package:tonight/application/chats/model/chat_model.dart';

part 'chats_bloc.freezed.dart';
part 'chats_event.dart';
part 'chats_state.dart';

class ChatsBloc extends Bloc<ChatsEvent, ChatsState> {
  final ChatsAggregator _chatsAggregator;

  ChatsBloc(this._chatsAggregator) : super(ChatsState.initial()) {
    on<_ChatsInitialized>(_onChatsInitialized);
  }

  FutureOr<void> _onChatsInitialized(
    _ChatsInitialized event,
    Emitter<ChatsState> emit,
  ) async {
    emit(state.copyWith(status: CubitStatus.loading));
    await emit.forEach(
      _chatsAggregator.listenToUserChats(),
      onData: (data) => data.fold(
        (_) => state.copyWith(status: CubitStatus.failure),
        (chats) => state.copyWith(
          status: CubitStatus.success,
          chats: chats,
        ),
      ),
    );
  }
}
