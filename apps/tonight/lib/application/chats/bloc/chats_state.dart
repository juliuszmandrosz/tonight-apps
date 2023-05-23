part of 'chats_bloc.dart';

@freezed
class ChatsState with _$ChatsState {
  const factory ChatsState({
    required List<Chat> chats,
    required CubitStatus fetchChatsStatus,
    required CubitStatus fetchNextPageStatus,
    required bool hasReachedMax,
  }) = _ChatsState;

  factory ChatsState.initial() => const ChatsState(
        chats: [],
        fetchChatsStatus: CubitStatus.initial,
        fetchNextPageStatus: CubitStatus.initial,
        hasReachedMax: false,
      );
}
