part of 'chats_bloc.dart';

@freezed
class ChatsEvent with _$ChatsEvent {
  const factory ChatsEvent.chatsFetched() = _ChatsFetched;

  const factory ChatsEvent.nextPageFetched() = _NextPageFetched;
}
