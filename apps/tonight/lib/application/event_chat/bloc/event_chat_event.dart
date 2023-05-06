part of 'event_chat_bloc.dart';

@freezed
class EventChatEvent with _$EventChatEvent {
  const factory EventChatEvent.chatInitialized({
    required Event event,
    required Participant participant,
  }) = _ChatInitialized;

  const factory EventChatEvent.nextPageMessagesFetched() =
      _NextPageMessagesFetched;

  const factory EventChatEvent.messageSent() = _MessageSent;

  const factory EventChatEvent.inputMessageChanged(String message) =
      _InputMessageChanged;

  const factory EventChatEvent.messageResent(ChatMessage message) =
      _MessageResent;

  const factory EventChatEvent.messageReported(ChatMessage message) =
      _MessageReported;
}
