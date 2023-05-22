import 'package:dartz/dartz.dart';
import 'package:rxdart/rxdart.dart';
import 'package:tonight/application/chats/aggregator/chats_failure.dart';
import 'package:tonight/application/chats/model/chat_model.dart';
import 'package:tonight/domain/last_read_messages/last_read_message_facade.dart';
import 'package:tonight/domain/rooms/room_facade.dart';

class ChatsAggregator {
  final RoomFacade _roomFacade;
  final LastReadMessageFacade _lastReadMessageFacade;

  ChatsAggregator(this._roomFacade, this._lastReadMessageFacade);

  Stream<Either<ChatsFailure, List<Chat>>> listenToUserChats({
    int pageSize = 20,
  }) async* {
    yield* _roomFacade.listenToUserRooms().switchMap(
          (roomsResult) => roomsResult.fold(
            (failure) => Stream.value(left(const ChatsFailure.unexpected())),
            (rooms) {
              if (rooms.isEmpty) {
                return Stream.value(right<ChatsFailure, List<Chat>>([]));
              }
              final chatStreams = rooms.map(
                (room) {
                  return _lastReadMessageFacade
                      .listenToLastReadMessageIdFromRoom(room.id)
                      .map((lastReadMessageResult) {
                    final lastReadMessageId = lastReadMessageResult.fold(
                      (_) => null,
                      (id) => id,
                    );

                    return Chat.fromDomain(
                      room: room,
                      lastReadMessageId: lastReadMessageId,
                    );
                  });
                },
              ).toList();

              return Rx.combineLatestList(chatStreams).map(
                (chats) => right<ChatsFailure, List<Chat>>(chats),
              );
            },
          ),
        );
  }
}
