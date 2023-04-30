import 'dart:async';

import 'package:collection/collection.dart';
import 'package:common/common.dart';
import 'package:dartz/dartz.dart';
import 'package:events/domain/events/event_entity.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tonight/application/event_chat/aggregator/event_chat_aggregator.dart';
import 'package:tonight/application/event_chat/models/chat_message_model.dart';
import 'package:tonight/application/event_chat/models/chat_user_model.dart';
import 'package:tonight/domain/participants/participant_entity.dart';

part 'event_chat_bloc.freezed.dart';
part 'event_chat_event.dart';
part 'event_chat_state.dart';

const _pageSize = 20;

class EventChatBloc extends Bloc<EventChatEvent, EventChatState> {
  final EventChatAggregator _eventChatAggregator;

  EventChatBloc(this._eventChatAggregator) : super(EventChatState.initial()) {
    on<_ChatInitialized>(_onChatInitialized);
    on<_NextPageMessagesFetched>(
      _onNextPageMessagesFetched,
      transformer: throttleDroppable(),
    );
    on<_MessageSent>(_onMessageSent);
    on<_InputMessageChanged>(_onInputMessageChanged);
    on<_MessageResent>(_onMessageResent);
  }

  FutureOr<void> _onChatInitialized(
    _ChatInitialized event,
    Emitter<EventChatState> emit,
  ) async {
    emit(state.copyWith(initialStatus: CubitStatus.loading));
    await emit.forEach(
      _eventChatAggregator.joinToChat(
        roomId: event.event.id,
        currentUser: event.participant,
        pageSize: _pageSize,
      ),
      onData: (data) => data.fold(
        (_) => state.copyWith(initialStatus: CubitStatus.failure),
        (result) {
          final messages = result.value2;
          if (messages.isNotEmpty &&
              state.displayedMessages.any(
                (msg) => msg.id == messages.first.id,
              )) {
            return state;
          }
          return state.copyWith(
            initialStatus: CubitStatus.success,
            displayedMessages: [...messages, ...state.oldMessages],
            hasReachedMax: messages.length != _pageSize,
            currentUser: some(result.value1),
            event: some(event.event),
          );
        },
      ),
    );
  }

  FutureOr<void> _onNextPageMessagesFetched(
    _NextPageMessagesFetched event,
    Emitter<EventChatState> emit,
  ) async {
    if (state.hasReachedMax || state.displayedMessages.isEmpty) return;
    emit(state.copyWith(nextPageStatus: CubitStatus.loading));
    final result = await _eventChatAggregator.fetchNextPageMessages(
      roomId: state.event.getOrCrash().id,
      currentUserId: state.currentUser.getOrCrash().userId,
      pageSize: _pageSize,
      lastMessage: state.displayedMessages.lastOrNull,
    );
    result.fold(
      (_) => emit(state.copyWith(nextPageStatus: CubitStatus.failure)),
      (messages) => emit(
        state.copyWith(
          nextPageStatus: CubitStatus.success,
          oldMessages: [...state.oldMessages, ...messages],
          displayedMessages: [...state.displayedMessages, ...messages],
          hasReachedMax: messages.length != _pageSize,
        ),
      ),
    );
  }

  FutureOr<void> _onInputMessageChanged(
    _InputMessageChanged event,
    Emitter<EventChatState> emit,
  ) {
    emit(state.copyWith(inputMessage: event.message));
  }

  FutureOr<void> _onMessageSent(
    _MessageSent event,
    Emitter<EventChatState> emit,
  ) async {
    if (state.inputMessage.isEmpty) return;
    await emit.forEach(
      _eventChatAggregator.sendMessage(
        text: state.inputMessage,
        currentUser: state.currentUser.getOrCrash(),
        roomId: state.event.getOrCrash().id,
        previousMessage: state.displayedMessages.firstOrNull,
      ),
      onData: (data) => data.fold(
        (message) => _updateNewMessageInState(message),
        (message) {
          if (state.displayedMessages.any((msg) => msg.id == message.id)) {
            return _updateNewMessageInState(message);
          }
          return state.copyWith(
            inputMessage: '',
            displayedMessages: [message, ...state.displayedMessages],
            queuedMessages: [message, ...state.queuedMessages],
          );
        },
      ),
    );
  }

  FutureOr<void> _onMessageResent(
    _MessageResent event,
    Emitter<EventChatState> emit,
  ) async {
    await emit.forEach(
      _eventChatAggregator.resendMessage(
        roomId: state.event.getOrCrash().id,
        message: event.message,
      ),
      onData: (data) => data.fold(
        (message) => _updateNewMessageInState(message),
        (message) {
          if (message.isSending) {
            return state.copyWith(
              displayedMessages: [
                message,
                ...state.displayedMessages
                    .whereNot((msg) => msg.id == message.id)
              ],
              queuedMessages: [
                message,
                ...state.queuedMessages.whereNot((msg) => msg.id == message.id)
              ],
            );
          }
          return _updateNewMessageInState(message);
        },
      ),
    );
  }

  _updateNewMessageInState(ChatMessage message) {
    return state.copyWith(
      displayedMessages: state.displayedMessages
          .map((msg) => msg.id == message.id ? message : msg)
          .toList(),
      queuedMessages: [
        ...state.queuedMessages.whereNot((msg) => msg.id == message.id),
      ],
    );
  }
}
