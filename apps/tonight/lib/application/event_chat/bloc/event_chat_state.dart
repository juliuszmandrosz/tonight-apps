part of 'event_chat_bloc.dart';

@freezed
class EventChatState with _$EventChatState {
  const factory EventChatState({
    required CubitStatus initialStatus,
    required CubitStatus nextPageStatus,
    required bool hasReachedMax,
    required Option<ChatUser> currentUser,
    required List<ChatMessage> oldMessages,
    required List<ChatMessage> displayedMessages,
    required List<ChatMessage> queuedMessages,
    required Option<String> roomId,
    required String inputMessage,
    required List<String> reportingMessageIds,
    required Option<String> snackbarMessage,
    required Option<ChatMessage> newMessage,
  }) = _EventChatState;

  factory EventChatState.initial() => EventChatState(
        initialStatus: CubitStatus.initial,
        nextPageStatus: CubitStatus.initial,
        hasReachedMax: false,
        currentUser: none(),
        oldMessages: [],
        displayedMessages: [],
        queuedMessages: [],
        roomId: none(),
        inputMessage: '',
        reportingMessageIds: [],
        snackbarMessage: none(),
        newMessage: none(),
      );
}
