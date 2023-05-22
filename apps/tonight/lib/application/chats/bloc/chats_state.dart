part of 'chats_bloc.dart';

@freezed
class ChatsState with _$ChatsState {
  const factory ChatsState({
    required List<Chat> chats,
    required CubitStatus status,
  }) = _ChatsState;

  factory ChatsState.initial() => const ChatsState(
        chats: [],
        status: CubitStatus.initial,
      );
}
