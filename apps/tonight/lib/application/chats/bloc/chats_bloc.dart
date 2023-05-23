import 'dart:async';

import 'package:common/common.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tonight/application/chats/aggregator/chats_aggregator.dart';
import 'package:tonight/application/chats/model/chat_model.dart';

part 'chats_bloc.freezed.dart';
part 'chats_event.dart';
part 'chats_state.dart';

const _pageSize = 20;

class ChatsBloc extends Bloc<ChatsEvent, ChatsState> {
  final ChatsAggregator _chatsAggregator;

  ChatsBloc(this._chatsAggregator) : super(ChatsState.initial()) {
    on<_ChatsFetched>(_onChatsFetched);
    on<_NextPageFetched>(
      _onNextPageFetched,
      transformer: throttleDroppable(),
    );
  }

  FutureOr<void> _onChatsFetched(
    _ChatsFetched event,
    Emitter<ChatsState> emit,
  ) async {
    emit(state.copyWith(fetchChatsStatus: CubitStatus.loading));
    final result = await _chatsAggregator.getUserChats(pageSize: _pageSize);
    result.fold(
      (failure) => emit(state.copyWith(fetchChatsStatus: CubitStatus.failure)),
      (chats) => emit(
        state.copyWith(
          fetchChatsStatus: CubitStatus.success,
          chats: chats,
          hasReachedMax: chats.length < _pageSize,
        ),
      ),
    );
  }

  FutureOr<void> _onNextPageFetched(
    _NextPageFetched event,
    Emitter<ChatsState> emit,
  ) async {
    if (state.chats.isEmpty ||
        state.hasReachedMax ||
        state.fetchNextPageStatus.isLoading()) {
      return;
    }

    final result = await _chatsAggregator.getUserChats(
      pageSize: _pageSize,
      lastRoomId: state.chats.last.roomId,
    );

    result.fold(
      (failure) =>
          emit(state.copyWith(fetchNextPageStatus: CubitStatus.failure)),
      (chats) => emit(
        state.copyWith(
          fetchNextPageStatus: CubitStatus.success,
          chats: [...state.chats, ...chats],
          hasReachedMax: chats.length < _pageSize,
        ),
      ),
    );
  }
}
