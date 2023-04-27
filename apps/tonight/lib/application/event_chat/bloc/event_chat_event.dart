part of 'event_chat_bloc.dart';

@freezed
class EventChatEvent with _$EventChatEvent {
  const factory EventChatEvent.chatInitialized(Event event) = _ChatInitialized;

  const factory EventChatEvent.nextPageMessagesFetched() =
      _NextPageMessagesFetched;

  const factory EventChatEvent.messageSent() = _MessageSent;

  const factory EventChatEvent.inputMessageChanged(String message) =
      _InputMessageChanged;

  const factory EventChatEvent.messageResent(ChatMessage message) =
      _MessageResent;
}
