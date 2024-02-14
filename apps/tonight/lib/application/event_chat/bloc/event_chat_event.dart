part of 'event_chat_bloc.dart';

@freezed
class EventChatEvent with _$EventChatEvent {
  const factory EventChatEvent.chatInitialized({
    required String roomId,
    required Participant participant,
  }) = _ChatInitialized;

  const factory EventChatEvent.nextPageMessagesFetched() =
      _NextPageMessagesFetched;

  const factory EventChatEvent.messageSent(bool isComment) = _MessageSent;

  const factory EventChatEvent.inputMessageChanged(String message) =
      _InputMessageChanged;

  const factory EventChatEvent.messageResent(
    ChatMessage message,
    bool isComment,
  ) = _MessageResent;

  const factory EventChatEvent.messageReported(ChatMessage message) =
      _MessageReported;
}
